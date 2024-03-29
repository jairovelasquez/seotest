##

Let's make our first Git project now that we've installed and configured Git. This means that all files in this directory will be subject to Git revision control and will be monitored by Git.

The `git init` command, short for *initialize*, is what we'll use to initialize our local repository. This only needs to be done once, at the beginning of our project.

First, we'll ground ourselves in our current directory.

### Run the commands below in the terminal to present our current working directory and list all of the file inside (including hidden files).

```bash
pwd
ls -a
```

Now, we need to create a project to be able to initialize a repository for it.

### Create a directory named `gameProject` in our current directory and navigate to `/gameProject` with the `cd` command
#
```bash
mkdir gameProject
cd gameProject
```

### Create a file named `main.py` with the `touch` command.

```bash
touch main.py
```

### Now, we can open the `main.py` file using the `nano` editor.

```bash
nano main.py
```

Our script will be a simple one that displays information for each user that's logged in.

### Copy and paste the following lines into the file and, save, and exit `nano`.

```bash
# main.py

def main():
    print("Hello, welcome to our game!")

if __name__ == "__main__":
    main()
```

- Type `Ctrl-o` to save the file and then the **Return/Enter** key to confirm the file name.
- Type `Ctrl-x` to exit.
- For confirmation, try running our bash script. 

### Click the button below to run our script.
#

<center>{Try It!}(python3 gameProject/main.py)</center>

If the script does not output "Hello, welcome to our game!", you didn't save your changes.

Now we can initialize our repository. We want to be sure that we're inside the directory that we want to initialize the repository for. In our case, this would be the `gameProject` directory.

### Type `git init` in the terminal and press `return`

```bash
git init
```

We should get a message that says the Git project has been successfully set up. It also says that there is a `.git` directory. This is where Git keeps track of the changes we make. 

### Run the command below to list all of the files in our initialized repository

```bash
ls -a
```

Our project is recognized as Git project because it includes the `.git` directory. If we delete it, Git will stop keeping track of our directory.

Let's navigate into this folder for a little exploration.

### Navigate into the `.git` folder using the `cd` command.

```bash
cd .git
```

We mentioned earlier that the project level configuration file is located in this folder. If we list the contents of `.git` with `ls -a`, we should be able to see it.

```bash
ls -a
```

If we wanted to set any project level configuration options, we can do so inside this `config` file.


## Checkpoint 🏁

{Check It!|assessment}(free-text-auto-403263056)
