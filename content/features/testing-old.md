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

Ephemeral environments provide an easy platform for running automated tests on your apps prior to any code reviews.

## Running Tests
It is best-practice to run all unit and end-to-end (e2e) tests for a new feature prior to a code review. This ensures your features are bug-free by the time anyone sees them, and keeps rollouts efficient and fast.
With ephemeral environments, you can run tests automatically and instantly with every new commit to a repo.
Essentially, if a developer hasn't yet run automated tests prior to a code review, they are taking up other team members' valuable time and resources, which should be spent reviewing finalized iterations. It is the responsibility of the developer if any automated tests fail, as they will be the one fixing the code until all runs smoothly.
## QA and UAT
Ephemeral environments are an asset to QA teams, as their capability to continuously run automated tests makes sure that human testers aren't needed until more final stages of testing.
Depending on how your ephemeral environments are set up, you may want to include load testing and chaos testing. These types of tests can help you pinpoint problems and bugs in your apps early on.

## CI/CD Pipelines
When a PR is opened, your CI/CD process will generate an environment. This environment will be passed between testing frameworks, such as Cypress or Playwright. The tests will zero in on any bugs that may need repair, and developers can iterate until all automated tests clear, which then enables them to start a human code review.

----
### Content Contributors

{{< contributors username="nbeck415" >}}
{{< contributors username="bueller" >}}
