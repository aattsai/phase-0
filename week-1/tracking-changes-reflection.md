###How does tracking and adding changes make developers' lives easier?
  It creates checkpoints for developers to go back to look at the changes when mistakes are made.
###What is a commit?
  Commit is a checkpoint to check the progress is saved and can be tracked back to see in later times.
###What are the best practices for commit messages?
  Provide short summary of the changes made in that commit. write the commit message in the imperative.
###What does the HEAD^ argument mean?
  HEAD^ is the last commit worked on.
###What are the 3 stages of a git change and how do you move a file from one stage to the other?
  Untracked; type git add newfile to move it to changes to be committed, type git commit -m "message" to commit
###Write a handy cheatsheet of the commands you need to commit your changes?
  -git add newfile.md
  -git commit -m "message"
###What is a pull request and how do you create and merge one?
  Pull request is to submit your changes to the repo on GitHub. To create - git push origin branch_name. Find the pull request button on GitHub, find the correct repo then click create pull request. Then click merge to merge. Go back to the terminal and type git checkout master to navigate back to the master branch. Type git fetch origin master and git merge origin/master to merge.
###Why are pull requests preferred when working with teams?
  Pull requests allow people to work on different part of a project remotely and merge all the work on GitHub. It makes working in a team easier and more efficient.