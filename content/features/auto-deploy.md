+++
date = "2021-08-13T00:00:00Z"
title = "Ephemeral Environments And Auto Deployment"
featuresslug = "autodeployment"
type = "feature"
hero = ""
metadescription = ""
pagetitle = "Ephemeral Environments And Auto Deployment"
ogimage = "images/article-icons/team.png"
+++
## The DevOps Pipeline
Ephemeral environments can simplify the DevOps pipeline each step of the way when used intelligently.

### Local development
- developers will work on a feature in a local branch
- they will test their code locally and eke out any bugs before pushing

### Committing, pushing, and PRs
- developers organize and document their changes and additions in commits
- commits are pushed to the remote branch
- when the necessary commits are complete, the developer will open a PR to merge the changes from their branch
- developers will have the option to create an ephemeral environment based on the PR

### Code review
- a series of automated tests will be run against the new features
- these tests can be hosted on the associated ephemeral environment
- once tests have cleared, there will be a human code review for the PR

### QA process
- the QA team will receive a link to the new ephemeral environment
- they will review any changes and features
- if everything lives up to expectations, QA will give devs the green light on the PR

### Staging and testing
- the approved features and changes will be pushed to a staging environment
- this environment will undergo UAT and human review

### Push to production
- if all steps are successful, the changes will be merged to production and deployed
- any staging environments can be spun down


----
### Content Contributors

{{< contributors username="nbeck415" >}}
{{< contributors username="bueller" >}}
