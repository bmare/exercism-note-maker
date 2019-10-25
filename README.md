# Exercism Note Maker
A convenient shell script for making a markdown notebook out of all your exercism exercises.

Using this script, the exercism student can look at all their code in one convenient location, a nice touch for those who need to be reminded of what they learned in the past.

### Installation & Usage
Download the script and put it wherever you want, your scripts folder, for example:
```shell
cd ~/scripts
git clone https://github.com/bmare/exercism-note-maker.git
```
Make the script executable:
`chmod u+x ./exercism-notemaker/note_maker.sh`
Run the script at the head of whatever code directory you want, python, for example:
```shell
cd ~/exercism/python
~/scripts/exercism-note-maker/note_maker.sh
```
And presto! You should have a markdown file titled notes.md in your ~/exercism/python folder.


### Current Limitations and Desired Changes
1. Only works for .py files! Soon, user will pass desired extension as an argument to the script.
2. Code blocks don't have syntax highlighting! Soon, script will print language name next to the code block.
3. Is there any way I could get the different iterations of my code or the comments of my mentors? Hopefully one day! I've tried and failed to do this in python by scraping the exercism site, but I am still an amateur. )))
