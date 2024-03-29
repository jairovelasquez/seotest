##

When we deal with files, we frequently save them to preserve any changes we make. When we save a file, however, **the new changes overwrite the old version**. We are limited in how many times we can undo if we needed to go back to an old version of the file, so it isn't uncommon to make another copy of the file and continue working with a copy. 

Anytime we've made numerous copies of the same file to keep track of our edits or as a backup, we've built a basic **version control system**. 

<img src=.guides/img/pre_vcs.png 
     width="500" />

**Version control**, also called **source control**, is the practice of **keeping track of and managing changes to files and directories**. This is usually done to keep track of updates or changes to source software code and scripts.

When using a real **version control system** **(VCS)**, the system keeps track of the changes that happen within the same files. This eliminates the need for us to store several extra copies to save important points in our work progress. 

With **VCS**, a file's **version history** is kept in the same file. Instead of having numerous copies, each version we save is essentially a snapshot of the current state of all the files in the directory. By doing so, version control systems help people and teams keep track of changes made to a code project or over time.

## Local VCS
Many people use copying files into a different directory as their version control method of choice. This strategy is often used because it is easy, but it is also very likely to go wrong. It's easy to forget where you are and accidentally write to the wrong file or overwrite files.

To solve this problem, we could use VCSs that keep a simple database that keeps track of every change to a file. This system is kept locally on your machine and only you retain access to its contents.

<img src=.guides/img/localVCS.png 
     width="500" />

This method is great for scripts and projects that only we will be working on. Local VCSs, however, present a problem for larger scripts and projects where we want to work with others. 

This also presents a major problem in the case that our system is corrupted somehow. If we haven't been keeping external backups, our entire project can be lost.



## Centralized VCS
**Centralized Version Control Systems** (VCSs) are designed for collaboration across several people. They have a **single server that has all of the versions of files**, as well as a number of clients that check out files from that central location. This setup is better than local VCSs in many ways, like being able to see who is in charge of which part of a multi-part project across all teams working on it. 

<img src=.guides/img/centralVCS.png 
     width="500" />

In this system, administrators have fine-grained control over who can do what, and managing a CVCS is much easier than managing local databases on each client.

The main issue with this architecture is **that the server is a single point of failure** for the entire system. If the server goes down, no one can collaborate or save new versions to whatever they're working on until the server is back online.

Worse, if the central database's hard disk fails and we haven't been taking proper backups, we'd lose everything, including the project's history. We'd run into a similar issue to that of working with Local VCSs: **storing all of a project's history in one location puts us in danger of losing everything.**

## Distributed VCS
#
A **distributed version control system**, or DVCS, is a type of version control in which **every collaborator's computer has a copy of the entire project** or codebase, including its full version history, and changes to files are tracked between computers.

<img src=.guides/img/distributedVCS.png 
     width="500" />

Distributed version control systems use a peer-to-peer method to control versions, while centralized systems use a client-server method. With distributed revision control, patches are sent from one peer to another to keep repositories in sync. 

There is no central version of the project. Instead, **each user has a working copy of the entire repository and can see all of the changes that have been made.**

---

Shell scripts, like any other program, are continually evolving as we discover more efficient ways to handle tasks or as we collaborate on scripts with our colleagues. 

As we work, the contents of files, directories, or even filenames may change, and we need a mechanism to monitor all of the changes that occur in a file, not just for shell scripts, but for any file in any project that we may work on.

## Checkpoint 🏁

{Check It!|assessment}(multiple-choice-1795921015)
