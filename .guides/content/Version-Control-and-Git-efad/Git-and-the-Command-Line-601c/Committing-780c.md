##

Committing a file saves the changes. Every commit requires a message, a concise summary of the changes. We can make a commit with the following command, putting our message in quotation marks.

### Run the command below in the terminal to commit our changes to the repository.
```bash
git commit -m "Our first commit: Created the main() function."
```

When we run this command, we should receive an overview of what's been changed. Let's run git status one more time to review the state of our repository.

```bash
git status
```

We can view a log of the project's version history, outlining all of the commits that have been made.

### Use the `git log` command below to view our version history
```bash
git log
```

We can see output documenting the commits: 
- Unique ID 
- Author
- Date, and 
- Time

We also get information detailing which branch the commit came from, and where it was stored: `(HEAD -> master)`

## Checkpoint 🏁

{Check It!|assessment}(multiple-choice-1258731360)