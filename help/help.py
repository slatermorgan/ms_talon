import json
import urllib.request
import threading
from talon import Module, imgui

mod = Module()

# Global variable to hold the last answer so the GUI can read it
last_help_answer = "Asking help server..."

@imgui.open(y=0)
def help_gui(gui: imgui.GUI):
    gui.text("Talon Help Answer")
    gui.line()

    # Handle multi-line answers nicely
    for line in last_help_answer.splitlines():
        gui.text(line)

    gui.spacer()
    if gui.button("Close"):
        help_gui.hide()

def _fetch_and_notify(query: str):
    global last_help_answer
    url = 'http://localhost:8000/ask'
    headers = {'Content-Type': 'application/json'}
    data = {'query': query}

    json_data = json.dumps(data).encode('utf-8')
    req = urllib.request.Request(url, data=json_data, headers=headers, method='POST')

    try:
        with urllib.request.urlopen(req, timeout=30) as response:
            result_bytes = response.read()
            result_str = result_bytes.decode('utf-8')

            try:
                result_json = json.loads(result_str)
                answer = result_json.get("answer", result_str)
            except json.JSONDecodeError:
                answer = result_str

            print(f"Help server response: {answer}")

            # Update the text. Since the GUI is already open, it will redraw automatically!
            last_help_answer = answer

    except Exception as e:
        print(f"Error querying help server: {e}")
        last_help_answer = f"Error: {e}"

@mod.action_class
class Actions:
    def ms_help_ask(query: str):
        """Ask the local help server a question (non-blocking)"""
        global last_help_answer
        last_help_answer = "Asking help server..."

        # Show the GUI IMMEDIATELY on the main speech thread (this is totally safe)
        help_gui.show()

        # Start the background thread for the network request
        thread = threading.Thread(target=_fetch_and_notify, args=(query,), daemon=True)
        thread.start()

    def ms_help_hide():
        """Hide the help server GUI"""
        help_gui.hide()
