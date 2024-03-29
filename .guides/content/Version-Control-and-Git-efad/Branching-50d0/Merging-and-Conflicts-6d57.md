##

We can use the `git merge` command to send the changes from a specified branch and add them to the current branch.  

In our example, we need to switch back to the master branch and then merge our branches with `git merge`.

### Use the `switch` command to return to the `master` branch.

```bash
cd /home/codio/workspace/gameProject
git checkout master
```

Now would be a good time to check the status of our branches with `git branch`. When we do so, we should see, both, our master branch and the branch we created, `welcome-feature`.

```bash
git branch
```

Let's merge these branches using the `git merge` command by specifying that we want to merge the `welcome-feature` branch.

### Merge the working branch with the master branch.

```bash
git merge welcome-feature
```

Now if we check the difference between the branches using `git diff` we should see no output, meaning the branches are the same.

### Click the button below to check the difference between the `master` and `welcome-feature` branches.
#
<center>{Try It! | terminal}(git diff master..welcome-feature)</center>

## Merge Conflicts

What if something changes on the `master` branch while we're working in our development branch? This will create a **merge conflict**, telling us the `master` branch isn't in the same state it was when we branched.

To see this in action, let's change something in a file in the master branch, then make a different change in the matching file of the development branch.

### While in the `master` branch, open `main.py`, add the following lines, save, and exit.

```bash
print("New feature in master branch")
```

### Add this change to the staging area and commit it to the repository
```bash
git add .
git commit -m "Add new feature in master"
```

### Switch over to the `welcome-feature` branch with `git checkout`.

```bash
git checkout welcome-feature
```

Let's create an intentional conflict on this branch, inside the file matching the one in the `master` branch.

### Open `main.py` and add the following lines, save, and exit.
```bash
print("Conflicting feature in welcome-feature branch")
```

### Add this change to the staging area and commit it to the repository
```bash
git add .
git commit -m "Add conflicting feature in welcome-feature"
```

### Check the difference between our two branches using the `git diff` command.
```bash
git diff master..welcome-feature
```

We can see in the output that both branches have commits that don't exists in the other branch. If we `switch` back over to the `master` branch and try to merge our changes, we'll receive a merge conflict error.

### Switch back to the `master` branch.
```bash
git checkout master
```

### Try to merge the `welcome-feature` branch.
```bash
git merge welcome-feature
```

Surely enough, we receive an error message telling us to `fix conflicts and then commit the result.` Let's check the current status of our repository.

### Click the button below to check the repo status with `git status`.
#
<center>{Try It! | terminal}(git status)</center>

We receive a similar error about our merge conflicts as well as a list of which file is the issue. This error tells us that the file `main.py` has been modified on both branches and that we have to resolve it before we can merge these branches.

Let's resolve the conflict. When we open the conflict file, Git will mark the area in the file where the conflict occurred.

### Open `main.py` and find the conflict area.

In the file, Git has marked:
- Which version of the change is in the `master` or `HEAD` branch, and
- Which version of the change is in the `welcome-feature` branch.

We have to decide which version we want to keep. Let's keep the version of the change located in the `welcome-feature` branch by deleting the markers and the `master` branch entry.

- **Resolve the Conflict:** Decide which change to keep (or merge the changes manually) and remove the conflict markers `(<<<<<<<,` `=======,` `>>>>>>>).`
- After resolving the conflict in `main.py`, stage and commit your resolution:

```bash
git add .
git commit -m "Resolve merge conflict between master and welcome-feature"
```

When we save and exit from here, we should receive another message: Merge branch 'welcome-feature', confirming that we've, both, committed our changes and merged our branches

### Verify the merge by checking the difference between the branches with `diff`

```bash
git diff master..welcome-feature
```

We should receive an empty output, indicated that our two branches are now identical. 

## Checkpoint 🏁

{Check It!|assessment}(multiple-choice-3447492330)