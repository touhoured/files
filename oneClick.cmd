
choice

pushd %~dp0
call copy.cmd

git add *
git status
git commit -m "update"
git push -f

timeout 3