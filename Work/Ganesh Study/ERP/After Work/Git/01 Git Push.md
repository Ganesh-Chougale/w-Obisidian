```yml
- Stop the Running project
1. Commit
    Team Explorer:
                Changes:
                    Untracked Files: (Add: if has any)
                            Include Changes: (Add)
                                    Changes: (Pass Message like `Module Name Commit`)
                                                Commit

2. Sync
    Sync:
        Incoming Commits: (Pull: no need to fetch)
                        Resolve Conflicts: if any occures (start bottom to up)
                            - Accept & Merge
                            - Keep Local for PC setting file like SUO or any dll
                            - keep files from HRM\bin

3. Merg In Progress
        to complete merg in precess we need to do commit again. (`Module Name Push`)

4. Push
        after Committing to Sync
            Sync:
                Outgoing Commits:
                                Push: "Successfully pushed to origin/master." will appear after push success 
```  

- After doing rebuild entire project from bottom DTO to top  