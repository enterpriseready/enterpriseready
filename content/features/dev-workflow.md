++++
date = "2021-08-13T00:00:00Z"
title = "Ephemeral Environments And The Ideal Dev Workflow"
featuresslug = "devworkflow"
type = "feature"
hero = ""
metadescription = ""
pagetitle = "Ephemeral Environments And The Ideal Dev Workflow"
ogimage = "images/article-icons/team.png"
+++

For development teams to be successful, they need to have a well-defined developer workflow
This involves having a place to write, share, and test code. Ephemeral environments are an effective solution for all of these workflow stages when used intelligently.

## Local development
- developers work and iterate on features on a local branch
- they test their code locally and flesh out any bugs before committing their code

## Committing, pushing, and PRs
- developers organize and document their changes and additions in commits
- developers open a PR for code review to merge the changes from their branch

## Code review
- a new ephemeral environment is generated upon the prior PR being opened
- a series of automated tests will be run against the new environment to test new features and look for regressions
- developers will start code review by accessing the ephemeral environment and interacting with new features
- they will also look at code itself, and may request changes
- the owner of feature is now responsible for resolving and updating any issues found through this process
- upon updates to PR, the environment rebuilds automatically for code review

## QA process
- after the code review is complete, QA teams receive a link to the new corresponding ephemeral environment
- they will review and test any changes and new features
- if there are no regressions and each feature is up to spec, QA is complete

## Ready for merge
- if all steps are successful, the changes will be merged to production and deployed
- any staging environments can be spun down


----
### Content Contributors

{{< contributors username="nbeck415" >}}
{{< contributors username="bueller" >}}
