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

For development teams to be successful, they need to have a well-defined developer workflow. This starts where engineers work and iterate on features on a branch, also known as the _development environment_ or _developer workspace_.

## Developer workspaces (local or remote)

Developer workspaces are often local, such as an engineer's laptop. Remote workspaces are becoming increasingly popular as more IDEs (such as VS Code and IntelliJ IDEA) support remote development.

In many organizations, setting up the developer workspace is a manual process. This is often the root cause of "it works on my machine" bugs, and causes failures upstream.

Ephemeral developer workspaces:

- Automate setup steps (e.g clone repository, install IntelliJ, OpenJDK 11, Gradle) for engineers onboarding or recreating their workspace
- Source-control the dependencies for engineers' development workspaces
- bonus: Dependencies maintain parity to the production/staging environments

Development teams can use local tools ([docker](https://www.docker.com/why-docker), [tilt](https://tilt.dev), [vagrant](https://www.vagrantup.com/)) and even remote platforms ([GitHub Codespaces](https://github.com/features/codespaces), [GitPod](https://gitpod.io), [Coder](https://coder.com)) to manage ephemeral developer workspaces.

## Committing, Pushing, and PRs

- developers organize and document their changes and additions in commits
- when ready, they will open a PR for code review to merge the changes from their branch

## Code Review

- an ephemeral staging environment is created upon the prior PR being opened
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

---

### Content Contributors

{{< contributors username="nbeck415" >}}
{{< contributors username="bueller" >}}
{{< contributors username="bpmct" >}}
