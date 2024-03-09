pushd %~dp0
call copy.cmd

git add *
git commit -m "update"
git push

timeout 3