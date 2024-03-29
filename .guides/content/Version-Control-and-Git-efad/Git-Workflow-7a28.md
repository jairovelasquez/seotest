##

When using Git, the way we work and the features we use will likely depend on things like whether we're working alone or with a team and how big the project is. 

There is no one standard way to use Git, but making a series of commits usually involves the same set of steps. Every Git user should be familiar with the fundamental workflow and the commands that drive each step.

1. **Create a Repository**
    - Create the storage space for your project files and directories to live. 
2. **Work on the project**
    - This can be any type of change, like creating, editing, organizing, or deleting files. Work as normal until we're ready to take a snapshot of our progress. 
3.  **Save the project**
    - Using Git, saving a project is a multi-step process that may involve one or more files. This includes:
      - **Add**: The `git add` command moves the updated files to the staging area. 
        - This creates a list of changes to be committed to the repository.
      - **Commit** The `git commit` command adds the updates and saves them to the repository, adding to the project's version history.
4. **Repeat steps $2$ & $3$**
    - We want to repeat this process as we reach key points in our development, taking a snapshot of our progress up to each point.

![.guides/img/gitFlow](.guides/img/gitFlow.gif)


Files in Git transition between three stages. Git has its own system for keeping track of the state of files, so each of these steps affects the same files.

- **The Working Directory**
  - This is where we work on our project, creating, editing, and deleting as necessary.
- **The Staging Area**
  - Our revised files are moved to this area after we use the `git add` command. This holds our list of changes that we want to commit to our repository. We can put things in or take things out of the staging area until we're ready to commit.
- **The Repository**
  -  We use the `git commit` to save our changes here. This is the area where code and related files and directories are stored and their versions are managed.

Git offers capabilities to reverse or change commits but no undo or delete option. The purpose is not to provide a flawless history of our work, but to capture changes and key moments.

## Checkpoint 🏁

{Check It!|assessment}(parsons-puzzle-2962076125)


 
 