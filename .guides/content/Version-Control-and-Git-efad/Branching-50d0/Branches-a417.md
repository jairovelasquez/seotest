##

In Git, **branches** are unique streams of development that occur independently of the master branch. 

**Branches** allow us the flexibility to add new pieces to our project without worrying about messing up what we already know works in the master branch.

When branching, the central repository is set as the **master branch**. Instead of working in and committing to the master branch, all work should be in a separate branch. When the branch's work is finished, tested, and declared ready to go, it is merged back into the master branch. 

This approach makes sure that the master branch only contains reliable, up-to-date code. 

The `branch` command allows us to look at our repository and all of its branches. If we run `git branch`in the terminal, we can see that we only have one branch called master.

### Run the command below in the terminal to check our branches.

```bash
cd /home/codio/workspace/gameProject
git branch
```

Usually, we will want to copy an existing branch to create our own development space. We can do that using the `git checkout` command and the syntax below. 

# <center>`git checkout -b NEWBRANCHNAME`</center>
#
When we make a branch the history of this new branch will be identical to that of the original. 

## `git checkout`


## Creating a New Branch
We're planning to expand our game project with a new feature that displays a welcome message to users when the game starts. 

To safely add this new feature while keeping our main project intact, we'll create a new branch. We'll use the `git switch -c` command for this purpose, and name our branch `welcome-feature`.



### Create a new branch called `welcome-feature`.

```bash
git checkout -b welcome-feature
```

We get a message that we've switched to a new branch, and if we run `git status`, we can see that we're now on branch `welcome-feature`. 

Now, let's open our `main.py` script in this new branch and add our changes.

### Open `main.py` with the `nano` command, add the following line, save, and exit.

```bash
print("Enjoy your adventure!")
```

We've successfully made changes to our `welcome-feature` branch. Let's check the status of our repository with `git status`.

### Click the button below to check the status of our branch.
#
<center>{Try It! | terminal}(git status)</center>

We should see that our file has some changes that haven't been sent to the staging area. Let's send them there with `git add`.

### Send our changes to the staging area.
```bash
git add .
```

Now we can commit our changes on this branch all the way to the repository and add an appropriate message with `git commit -m`

### Save the changes to the repo with the command below.
```bash
git commit -m "Added welcome message."
```

At this point, we can check our commit logs for our version history.

### Run the command below to check our commit logs.
```bash
git log --oneline
```

We can see that our recent commit to `welcome-feature` shares our recent commit message. 

Notice that the `master` branch, however, still has our previous commit message as its most recent commit. This is a sign that our current branch has a different version of the project than the master branch, and that our branches should be synchronized.

We can check for differences between our branches using the `git diff` command and the syntax in the example below.

### Check for differences between the `master` and `welcome-feature` branches.
```bash
git diff master..welcome-feature
```

In the next section, we'll look at how to synchronize our working branch with the master branch with `git merge`.


## Checkpoint 🏁

{Check It!|assessment}(multiple-choice-1306627258)


