# Go
run go coverage: "go test ./... -v -cover"
run go tests: "go test ./..."
run go mod tidy: "go mod tidy"
run go get: "go get -u "
insert replace directive: "replace github.com/this => ../this"
run go replace: "go mod edit -replace this="
# Git
git branch: "git branch"
git fetch: "git fetch"
git pull upstream: "git pull upstream "
git stash apply: "git stash apply"
git stash changes: "git stash"
git cherry pick: "git cherry-pick "
git tag: "git tag v"
git push tags: "git push --tags"
git delete local tag: "git tag -d v"
git delete remote tag: "git push --delete origin v"
# Editor
replace word:
    edit.select_word()
    edit.paste()
selector:
    key("shift:down")
    mouse_click(0)
    key("shift:up")
another occurrence: key(cmd-d)
#NPM
run install endpoints: "npm install https://bitbucket.org/oneiota/mesh-connect-endpoints.git\#branch"
