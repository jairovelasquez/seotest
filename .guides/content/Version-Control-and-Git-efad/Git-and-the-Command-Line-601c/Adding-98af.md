##

Let's explore adding to the staging area and committing our changes to the repository. Make sure we're located in our project folder, `gameProject`.

```
cd /home/codio/workspace/gameProject
```

We'll begin by making a small change to our project.

### Open our script, `main.py` using the `nano` editor.
```bash
nano main.py
```

Now, let's make a small change to the file by adding the `last` command to display the login history since the creation of a file called `wtmp`.

### Add the following line to our script inside the `main()` function. Save and exit.
```bash
print("We will bring you something exciting, soon!")
```

Now we have something new to add to our repository. We can run the `git status` command to view the current status of our repository.

### Use the command below to check the status of the staging area.

```bash
git status
```

We may notice a few things when we run this command.
- ### `On branch master`
  - This is the current branch we're working on. If we had branches other than `Master`, this line would indicate which one we're using.

- ### `No commits yet`
  - We have not committed anything yet, so there is nothing to report.

- ### `Untracked files:`
  - We see that the `main.py` file is not being tracked. That is because we have not staged the file yet.

## Staging with `git add`
The `git add` command gives us several options that we can use to gently alter its behavior. The table below can be used as reference for these options and their descriptions.

| Option      | Description                           |
|-------------|---------------------------------------|
| `git add .` | Only stage new and altered files      |
| `git add -A`| Stage all project modifications       |
| `git add -u`| Only stage altered and deleted files  |

Let's stage our project changes and prepare to commit them to our repository.

### Use the command below to move all of our new and updated files to our staging area.

```bash
git add .
```

Now, let's run `git status` to view changes to our staging area.
```bash
git status
```

We now see a message that says `Changes to be committed:` that lists our script as a file that is in the staging area and ready to be committed. 

If we decide that we aren't ready to commit, we can use the `git restore --staged` command to unstage our changes.

Since we are ready to commit, we'll move on to creating a snapshot of our progress with a commit.

## Checkpoint 🏁

{Check It!|assessment}(fill-in-the-blanks-643329843)
