#tag: terminal

#-

# AWS
# aws logs tail /aws/lambda/pro-direct-customersV1-dev-getProfile --follow  --profile [<user.aws>]
logs lambda tail: aws logs tail /aws/lambda/
tag follow: --follow
tag profile [<user.aws>]: --profile [<user.aws>]

# NPM
N P M install: "npm install"
run serverless <user.text> [over]:
    insert("serverless ")
    insert(text)
    sleep(100ms)
N P M run <user.text> [over]:
    insert("npm run ")
    insert(text)
    sleep(100ms)

# Go
run go coverage: "go test ./... -v -cover"
run go tests: "go test ./..."
run go mod tidy: "go mod tidy"
run go mod init: "go mod init"
run go main: "go run main.go"
open mod file: "code go.mod"
run go get: "go get -u "
insert replace directive: "replace github.com/this => ../this"
run go replace: "go mod edit -replace this="

# Dotnet
dot net run: "dotnet run"
dot net test: "dotnet test"
dot net run debug mode: "dotnet run --configuration Debug"
dotnet restore: "dotnet restore"
dotnet build: "dotnet build"
dot net version: "dotnet --version"

# Python
python install: "python -m pip install -e ."
pip install: "pip install"
conda info: "conda info"
conda init: "conda init"

# Yarn
yarn install: "yarn install"

# Git
git branch: "git branch"
git fetch: "git fetch"
git list: "git status"
git pull upstream: "git pull upstream "
git pull origin: "git pull origin "
git push upstream: "git push upstream "
git push origin: "git push origin "
git stash apply: "git stash apply"
git stash changes: "git stash"
git cherry pick: "git cherry-pick "
git tag: "git tag v"
git log:
    insert("git log")
    key("enter")
git stat: "git status"
git push tags: "git push --tags"
git delete local tag: "git tag -d v"
git delete remote tag: "git push --delete origin v"
git reset merge: "git reset --merge"

# Docker
docker network inspect: "docker network inspect "
docker compose up: "docker compose up"
docker compose up build: "docker compose up --build"
docker compose down: "docker compose down"
docker compose kill: "docker compose kill"
docker pee es: "docker ps"
docker network el es: "docker network ls"

# Podman
pod man network inspect: "podman network inspect "
pod man compose up: "podman compose up"
pod man compose up build: "podman compose up --build"
pod man compose down: "podman compose down"
pod man compose kill: "podman compose kill"
pod man pee es: "podman ps"
pod man network el es: "podman network ls"
pod man stop all: "podman stop -a"

cat make file:
    insert("cat Makefile")
    key("enter")
cat package jason:
    insert("cat package.json")
    key("enter")

cat package jason scripts:
    insert("jq '.scripts' package.json")
    key("enter")

# Code
code here:
    insert("code .")
    key("enter")

cursor here:
    insert("cursor .")
    key("enter")
cursor agent: "cursor-agent "
cursor agent: "cursor-agent "

# Make
make run local:
    insert("make run-local")
    key("enter")
make test unit:
    insert("make test-unit")
    key("enter")
make deploy dev:
    insert("make deploy-dev")
    key("enter")
make test:
    insert("make test")
    key("enter")
make lint:
    insert("make lint")
    key("enter")
make clean:
    insert("make clean")
    key("enter")
make local:
    insert("make local")
    key("enter")
make specs:
    insert("make specs")
    key("enter")
make generate:
    insert("make generate")
    key("enter")

to clip copy: " | pbcopy"

# Brew
brew install: "brew install "

# MirrorWeb
S H tunnel to mac: "sh tunnel-to-mac.sh"
Trigger P C M event: "sh trigger-pcm-event.sh"
mirror show accounts DB: "sqlite3 ~/Library/Application\ Support/com.mirrorweb.imessagecapture/accounts.db -json"

# Vibes
vibe ask: "/ask"
vibe plan: "/plan "
vibe model: "/model "

commit message chore: "chore: "
commit message fix: "fix: "
commit message feat: "feat: "
