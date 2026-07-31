i want to build a vs code extension which does exact same but for coders.
code pallete:
## Core concept:  
- Shared pallete (a pallete which coder have a pallete he can across all the code base & files)
- Individual pallete (a unique different pallete for each individual working code document file)
- Shared pallete & Individual pallete both have own different height & width (again based on how much stuff is within it), both have different + isolated + persistant memory. (persistant memory means when user re-open the vs-code the the last text should be there).

## UI concept:  
- On the tab bar, user can see multiple opened tab starting from left side to right side. but the right most side of tab bar is kept free for opened document utility. like if markdown file is opened then we see a open preview at right side option or split editor right etc.
- right there we will put our extention button.
- when user clicks on it, it will open a modal text area where user can keep its frequently using text like variable name, code snippet etc.
- we will set some default minimun height & width of that popup modal put it will be dynamically self adjusting based on text saved there.

-------------------------------------------------------------------------------------------------
| Individual | Shared | Setting icon  | Autosave ☑ | Save | Info Icon | Advance Pallete ☑       |
-------------------------------------------------------------------------------------------------
|                                                                                                  |
|                                          TEXTAREA                                                |
|                                                                                                   |
-------------------------------------------------------------------------------------------------

- based on 1st or 2nd option choose => text area will appear below this (Individual OR Shared pallete)
- if user clicks on settings it will open setting UI

## Setting UI:
- in setting user can manipulate auto-save time (a range input with 5sec to 1 min). on selected time it will keep autosaving the text (but only if changes made, its for optimization other wise it will be uneccary excess savings)
- user can pick color schema & change color of text, background, outline
- user can choose opacity of our code pallete

## Info Icon UI
this icon will open a modal with discipline guidlines, it will tell user this
- do not overcrowd the pallete
- keep pallete maximum 15-20 lines long
- etc stuff.
although we are not stopping user to go beyond this, but if user follow this. it will great experience to them

## Advance Pallete
- Advance pallete let user insert header which act as collapser text area