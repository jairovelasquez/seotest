##

Every commit includes: 
- A Username
- An email address, and 
- The name of the person who committed. 

This is helpful when working with other people and making sure changes to files are credited to the right user. If we try to add a commit before we've set up the configuration, we'll get a message asking us to confirm or add a user name and email. 

This information only needs to be sent once, but if we want to change what we originally set, we can just run the same commands again. 

Git stores configuration information in three places, depending on how widely we want these settings to be applied. We don't need to know where these files are stored because we can use the `git config` command to make changes, but it is nice to be aware.

## System Level
The broadest configuration setting is system-level configuration. Configurations that apply to the entire system will be kept in the operating system folders. On Linux the file is kept in `/etc/gitconfig`.

If we want to save settings at the system level, we can use the `--system` option to the `git config` command string, then specify the configuration option.

# <center>`git config --system --OPTION`</center>

## User Level
Most of the time, we will set configurations on the user level. In this case, each user has a configuration file. On Linux and Unix, the file will be called `.gitconfig` and will be in the user's home directory.

We can use the --global setting to save a user's settings. For this to work, we must be logged in as that user.

# <center>`git config --global --OPTION`</center>
#
When we use a **global** argument, no matter where we are, the configuration will be set automatically in our user's home directory and used in all of our repositories.

## Project Level
We can also have configurations that only apply to a single project. This configuration file lives in the git project directory named .git, inside a file called config.

If we're in the directory for our project and want to save settings just for the project, we can use the `--local` flag or leave it blank, as this is the default configuration behavior.

# <center>`git config --local --OPTION`</center>
#

## Configuring Git

Let's configure some of our basic settings.

First, we'll set up our username using the `--global` option, setting this up at the user level. 

### Copy and paste the command below into the terminal to configure your username. Replace `YOUR USERNAME` with your GitHub username and press `return`.

```bash
git config --global user.name "YOUR USERNAME"
```

|||info
## Note
---
We'll be pushing commits to GitHub later, so it would be best to use the same username and email attached to your GitHub account.
|||

Similarly, let's configure our email address.
### Run command below into the terminal to configure your email address. Replace `YOUR EMAIL` with your GitHub email address and press `return`.

```bash
git config --global user.email "YOUR EMAIL"
```

We can also configure which editor we prefer to use. We'll use the Nano editor, but you can usually pick the editor that works best for you.

### To configure our editor, run the command below in the terminal and press `return`.

```bash
git config --global core.editor "nano"
```

We'll set one more configuration for fun. Let's add a little color to git messages so we can see them better.

### Run the command below in the terminal to turn on Git colors.
```bash
git config --global color.ui true
```

Now, we can list our configuration options by using the `git config list` command.

### Click the button below to list our configuration options.
#
<center>{Try It!}(git config --list)</center>

If we later install Git on another computer and configure it with a separate email address, it will look like our contributions came from 2 separate accounts. It's a good idea to use  the same information on each host you intend to commit to.

## Checkpoint 🏁

{Check It!|assessment}(multiple-choice-1492171770)
