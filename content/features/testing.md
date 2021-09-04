+++
date = "2021-08-13T00:00:00Z"
title = "Ephemeral Environments And Testing"
featuresslug = "testing"
type = "feature"
hero = ""
metadescription = ""
pagetitle = "Ephemeral Environments And Testing"
ogimage = "images/article-icons/team.png"
+++

In application development, testing your app prior to release is critical. If production breaks, it costs you money. Ephemeral environments save you time and money by providing an easy platform for running automated tests on your apps prior to release.
There are two main types of application tests: automated tests and human tests. Frequent and comprehensive testing makes sure your new features don't break anything or introduce regressions.

## Best Practices for Writing and Running Tests
- in an ideal world, developers will run unit and end-to-end (e2e) tests on a new feature prior to a code review
- automated testing ensures your features are bug-free by the time anyone sees them
- testing each new feature individually keeps rollouts efficient and fast
- with ephemeral environments, you can run tests automatically and instantly with every new commit to a repo
- other developers can focus their time reviewing finalized iterations during code review, rather than debugging untested code
- it is the responsibility of the feature's owner if any automated tests fail, as they will be the one fixing the code until all tests clear

## CI/CD Pipelines
- when a PR is opened, an environment should be generated for your CI/CD process to run automated tests against
- CI/CD can help you pinpoint problems and bugs in your apps early on, and fix them before they get to production
- environments will be passed between testing frameworks, eg. [Cypress](https://www.cypress.io/) or [Playwright](https://playwright.dev/)
- tests will zero in on any bugs that may need repair
- developers iterate until all automated tests clear
- you may want to include load testing and chaos testing


## Human Testing (QA and UAT)
- ephemeral environments are an asset to QA teams, as they are set up to continuously run automated tests and test individual features in parallel
- QA can find bugs early on in the process and find where a feature breaks
- QA people are not blocked if a feature breaks any given staging environment, since features are isolated across multiple ephemeral environments
- often, the best way to find bugs is through internal stakeholders interacting with the branch
- key stakeholders can now interact with new features and iterate on feedback before the features reach production



----
### Content Contributors

{{< contributors username="nbeck415" >}}
{{< contributors username="bueller" >}}
