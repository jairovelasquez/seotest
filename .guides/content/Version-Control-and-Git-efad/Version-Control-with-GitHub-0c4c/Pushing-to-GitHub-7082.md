##

**Pushing** is how we send commits from our local repository to a remote repository. We don't have to push each time we commit changes. Many developers will make changes throughout the day, but they won't push until the day is over. 


|||important
## IMPORTANT
---
Code doesn't get saved until we use the `git push` command. If we want to be sure that our code is always safe, we should send our code to GitHub with the `push` command often.

|||

Let's create a local file and push it to our Github repo using the `git push` command.

#### Make sure you're located inside the `gameProject` directory by entering the following commands in the terminal
```bash
cd /home/codio/workspace/gameProject
pwd
```

Your filepath should match the one below.

```plaintext
/home/codio/workspace/gameProject
```
- ### Try to push our project to the GitHub repository.
```bash
git push
```

Because this is our first time pushing to this remote repository, we will need to use a special command. The exact command is easy to forget. 

Thankfully, when we use `git push`, Git will tell us what else we need to add to complete the command.

- ### Copy the correct command from GitHub, paste it into the terminal, and press `return`.

```bash
git push --set-upstream origin master
```

Again, since this is the first push, git will ask if you want to store the SSH keys. This is the last time you'll have to answer this question.

- ### Type `yes` and press the `Return` key. 

Go back to the tab with the GitHub website on it and refresh the page. You should see the files for our project.

## Checkpoint 🏁

{Check It!|assessment}(multiple-choice-3570011779)
