#tag: terminal

#-

# AWS
# aws logs tail /aws/lambda/pro-direct-customersV1-dev-getProfile --follow  --profile [<user.aws>]
logs lambda tail: aws logs tail /aws/lambda/
tag follow: --follow
tag profile [<user.aws>]: --profile [<user.aws>]

# NPM
run serverless <user.text> [over]:
    insert("serverless ")
    insert(text)
    sleep(100ms)
run NPM <user.text> [over]:
    insert("npm ")
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
git log: "git log"
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

# Code
code here: "code ."
cursor here: "cursor ."
cursor agent: "cursor-agent "
cursor agent: "cursor-agent "

# Make
make run local: "make run-local"
make deploy dev: "make deploy-dev"

# MirrorWeb
S H tunnel to mac: "sh tunnel-to-mac.sh"
mirror show accounts DB: "sqlite3 ~/Library/Application\ Support/com.mirrorweb.imessagecapture/accounts.db -json"
