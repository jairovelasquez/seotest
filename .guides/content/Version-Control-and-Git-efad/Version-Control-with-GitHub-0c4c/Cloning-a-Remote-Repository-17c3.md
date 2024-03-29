##

At this point, we've set up a local repository on a host and a remote repository where we can push changes.

Let's pull a copy our repository down to a different location by **cloning** the repository. 

We have to change locations, so can't be in the same directory as our initial `gameProject`. We'll create a directory called `projectClone` and navigate 
into it with `cd`. 

- ### We'll switch to the workspace directory first.
```bash
cd /home/codio/workspace
pwd
```

- ### Create a new directory named `projectClone` with the `mkdir` command.
```bash
mkdir projectClone
```

- ### Navigate into the new directory with the `cd` command.
```bash
cd /home/codio/workspace/projectClone
```

Now, let's locate the remote repository of the project we want to work with on GitHub. 

- ### Navigate back to your GitHub page and locate the project you want to work on.
- ### Click on the project, then click on **Code**. 

![Code button next to Github project name](.guides/img/githubcode.png)

You'll see that you have **two URL options**. In this dialog, you can choose either SSH or HTTPS. For now, we'll go with **SSH**.

- ### Copy the URL to the clipboard, and then go back to our Codio terminal. 
- ### In your terminal, type `git clone`, then paste the URL into the command and press `return`. 

Now, type `ls` to check. You should see a directory called `gameDevProject/`. Change to it and type `ls` once more. 

All of the files should be exactly the same as they were in our first project. 

We'll check our remotes as the last thing we do here. 

- ### Use the command below to check our remotes.
``` bash
git remote -v 
```

The remotes should already be set up, so we're ready to contribute to `gameDevProject/` on a cloned repository.

## Checkpoint 🏁

{Check It!|assessment}(fill-in-the-blanks-3423312877)
