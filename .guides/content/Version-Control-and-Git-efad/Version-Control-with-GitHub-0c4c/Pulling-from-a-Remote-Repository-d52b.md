##

The `git pull` command **grabs content from the remote repository and brings it down to the local repository**. Git pull is a combination of two commands: `git fetch` and `git merge`.

If we had a project on a remote repository (like GitHub) and wanted to move changes into our local repository on our system. We'd first have to: 
- Bring the project to our `origin/master`. 
- Then, `origin/master` **fetches** changes from the locally stored branch and **merges** them with the local checkout branch. 
- Finally, the `origin/master` will **merge** the project into the local checkout branch, and the project will be sent to our local repository.

## `git pull` = `git fetch` + `git merge`
Take a look at what these two commands do.

- The `git fetch` pulls content down from a specified remote repository.

- The `git merge` command combines multiple sets of commits into a single branch.

Let's look at this by working through an example where we **pull** content from our remote repository to our system. We'll make changes to our project and then **push** it back to our remote repository.

- ### Start by creating a directory called `pull_request` with the `mkdir` command. First we'll make sure we are in the workspace directory.
```bash
cd /home/codio/workspace
mkdir pull_request
```

- ### Navigate into the directory with the `cd` command
```bash
cd pull_request
```

If we check the contents of the directory right now, it should be fresh and empty.

- ### Check the contents of the directory with the `ls` command
```bash
ls
```

- ### Create another directory inside `pull_request/` and name it `new_features`
```bash
mkdir new_features
```
- ### Navigate inside the `new_features` directory and display the path to the working directory to confirm it is inside `pull_request/`
```bash
cd new_features
pwd
```

Your absolute filepath should look similar to the example below.

### <center> `/home/codio/workspace/pull_request/new_features` </center>

- ### Initialize this directory as a repository using the `git init` command.

Now it's time to **pull** the contents of our remote repo down into our local repo.

- ### Navigate to the repository on GitHub that we created in the last lesson.

- ### Click on the project, then click on **Code**. 

You'll see that you have **two URL options**. In this dialog, you can choose either SSH or HTTPS. For now, we'll go with **SSH**.

- ### Copy the URL to the clipboard, and then go back to our Codio terminal. 

Let's run the `git pull` command and specify the repo we want to pull by pasting the SSH URL we copied from GitHub at the end of the command.

- ### Run the command below to pull the contents of the project from the remote directory
``` bash
git pull URLFromGitHub
```

We should see completed progress metrics indicating that the content has been pulled down. 

- ### Check the contents of the directory to confirm this
```bash
ls -a
```

Now that we have content in our local repo, let's make some changes and push them back to the remote repository. We'll modify `main.py` to include another new feature.

- ### Edit the file `main.py` with `nano` command and add the following line as a prompt. Save and Exit.
```python
print("Please choose your player.")
```

We'll finish this exercise by pushing our changes back to the remote repo. 

- ### Let's check the status of our repo with `git status`.
```bash
git status
```

We should receive a message that tells us that our file is untracked and that we should use `git add` to stage it.

- ### Send our changes to the staging area of the local repo with `git add`.
```bash
git add .
```

- ### Commit the changes all the way to the remote repo with `git commit` and an appropriate message
```bash
git commit -m "Added player choice feature."
```

Git informs us that we have `1 file changes` and `1 insertion(+)`, meaning that we added (inserted) 1 thing into 1 file. If we check our status again, we should see there's nothing to commit and our working tree is clean.

- ### Confirm there's nothing to commit with `git status`
```bash
git status
```

Now we'll push all of our changes to the original remote repository where we pulled it from. Let's add our changes to the staging area for the remote repository

- ### Copy the same URL from the GitHub repo as we did earlier, and paste it onto the `remote add origin` command.
```bash
git remote add origin URLFromGitHub
```

- ### Run the `git remote -v` command to make sure that the `fetch` and `push` commands are in order to complete the push request.
```bash
git remote -v
```

Now, we're finally ready to complete the push to the remote repository with `git push`.

- ### Use the command below to push our changes to our original remote repository.
```bash
git push -u origin master
```

We can see our information has been sent back to GitHub.

- ### Return to the GitHub repository to confirm that the recent updates have been pushed.

We should be able to click on the file we created, `main.py` and see the changes that we made on our local repo reflected on our GitHub repository.

## Checkpoint 🏁

{Check It!|assessment}(multiple-choice-3020851719)


