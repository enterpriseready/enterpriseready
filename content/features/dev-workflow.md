+++
date = "2021-08-13T00:00:00Z"
title = "Ephemeral Environments And The Ideal Dev Workflow"
featuresslug = "devworkflow"
type = "feature"
hero = "/images/headers/workflow.png"
metadescription = "Ephemeral environments provide a place for dev teams to write, share, and test code"
pagetitle = "Ephemeral Environments And The Ideal Dev Workflow"
ogimage = "/images/headers/workflow.png"
+++

For development teams to be successful, they need to have a well-defined developer workflow.
This involves having a place to write, share, and test code. Ephemeral environments are an effective solution for all of these workflow stages when used intelligently.

## Local Development
- developers work and iterate on features on a local branch
- After testing their code locally, they flesh out any bugs before committing their code

## Committing, Pushing, and PRs
- developers organize and document their changes and additions in commits
- when ready, they will open a PR for code review to merge the changes from their branch

## Code Review
- a new ephemeral environment is generated upon the prior PR being opened
- a series of automated tests will be run against the new environment to test new features and look for regressions
- developers will start code review by accessing the ephemeral environment and interacting with new features
- they will also look at code itself, and may request changes
- the owner of the feature is now responsible for resolving and updating any issues found through this process
- upon updates to PR, the environment rebuilds automatically for code review

## QA Process
- after the code review is complete, QA teams receive a link to the new corresponding ephemeral environment
- they will review and test any changes and new features
- if there are no regressions and each feature is up to spec, QA is complete

## Ready for Merge
- if all steps are successful, the changes will be merged to production and deployed
- any remaining staging environments can now be spun down


----
### Content Contributors

{{< contributors username="nbeck415" >}}
{{< contributors username="bueller" >}}
