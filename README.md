# AutoRunFetch
auto run git fetch

1. please change the repo_path to your git repository directory in run.bat file
 e.g.
> SET repo_path="C:\Users\name\git\testing\repository\branch"

2. the auto fetch program will fetch all the branches under repo_path
if you don't want, edit specific_branch in run.bat file to following structure, change origin branch2 to your <remote_name> <branch_name>
e.g.
> SET specific_branch=origin branch2

3. double click run.bat to start auto fetch git repo
