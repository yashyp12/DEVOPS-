# Git GitHub Basics - 

> GitHub is a online platform that allows developers to host and review code, manage projects, and collaborate with other developers.  

> git - Git is a distributed version control system (VCS) used to track changes in files, especially source code.

> changes history are stored in .git folder in the root directory of the repository.

### git status - 

Shows the status of the working directory and staging area.
### git status - 

Shows the status of the working directory and staging area.

### git add - Adds changes in the working directory to the staging area.
 
### git restore - Restores files in the working directory from staging area or from a commit.

### git log - Shows the commit history for the current branch.

### git reset - Resets the current branch to a specific state.


### git stash - Temporarily saves changes in the working directory that are not ready to be committed.


### git stash pop - Applies the changes from the stash to the working directory and removes them from the stash list.

```bash
git stash pop
``` 

### git stash clear
-> Removes all stashed changes from the stash list.

```bash
git stash clear
```

### git remote add origin -
( Adds a remote repository to the local repository with the name "origin".)

```bash
git remote add origin <URL>
```

```bash
git remote -v

(Shows the URLs of the remote repositories.)
```

```bash
git push origin master
(Pushes the changes from the local repository to the remote repository named "origin" on the "master" branch.)
```

# Branching in Git

> Branching allows developers to create separate lines of development within a repository. Each branch can have its own set of changes, enabling multiple developers to work on different features or bug fixes simultaneously without interfering with each other's work.


```bash
git branch <branch_name>
(Creates a new branch with the specified name.)
```

```bash
git checkout <branch_name>
(Switches to the specified branch.)
```

### HEAD - 
(HEAD is a pointer to the current commit in the repository. It points to the latest commit on the current branch. When you switch branches or make new commits, HEAD moves to point to the new commit.)

```bash
git log --oneline -1
(Shows the latest commit in a concise format.)
```

```bash
git rev-parse HEAD
(Displays the full SHA-1 hash of the current commit that HEAD points to.)
```

```bash
git reset HEAD~1
(Resets the current branch to the previous commit, effectively undoing the latest commit. The changes from the undone commit will be moved to the staging area.)
```

HEAD     → current commit
HEAD~1   → one commit before HEAD
HEAD~2   → two commits before HEAD


```
A ── B ── C
         ↑
        HEAD

HEAD~1 → B
HEAD~2 → A
```

```bash
git merge <branch_name>
(Merges the specified branch into the current branch, combining their changes.)
```

```bash
git push origin main
(Pushes the changes from the local "main" branch to the remote repository named "origin".)
```

## Upstream and Downstream

> Upstream URL -> The upstream URL refers to the original repository from which a forked qrepository was created. 


> Downstream URL -> The downstream URL refers to the forked repository that is derived from the upstream repository.

```bash
git branch -vv
(Shows the local branches along with their upstream tracking branches and the latest commit on each branch.)
```

# PULL REQUEST : - 
> A Pull Request is a request to merge your changes from one branch into another branch, usually through GitHub.

```bash
git push origin <branch_name>
(Pushes the changes from the local branch to the remote repository named "origin".)
```

> We can only create one pull request per branch. If we want to create another pull request, we need to create a new branch and push it to the remote repository.

## If we wanted to remove some commit from the pr

1 . We can use `git reset` to remove the commit from the branch and then force push the changes to the remote repository.

2 . git reset --hard <commit_hash> - This command will reset the branch to the specified commit, discarding all changes made after that commit.

3 . git push origin <branch_name> --force - This command will force push the changes to the remote repository, overwriting the existing branch with the new changes.

