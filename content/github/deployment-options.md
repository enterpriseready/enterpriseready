+++
date = "2016-10-25T00:00:00Z"
title = "GitHub Deployment Options"
featureslug = "deployment-options"
type = "breakdown"
feature = "Deployment Options"
company = "github"
ogimage = "images/twtr/github-deployment-og.png"
metadescription = "A detailed analysis of the way that GitHub implements their Enterprise installable version in order to meet the needs of enterprises."
pagetitle = "GitHub Enterprise (On-prem) - Enterprise Ready Feature Breakdown"

+++

GitHub offers their application to customers with a few different deployment options. The vast majority of GitHub's customers run on GitHub.com (in terms of quantity, but not necessarily in terms of revenue), this is the multi-tenant, cloud hosted version of their application. [Individuals sign up for accounts](../blog/user-centric-v-team-centric) and then are added to organizations when they join a new company. Organizations will generally have a mix of private and public repos with varying access based on the users role. The easy of using GitHub.com for open source and personal projects is often attributed with the success of the "bottom up" adoption that GitHub has seen in enterprises.
![orgs](/github/images/team-permissions.png)

GitHub also offers customers the option of running their application as a private instance with [GitHub Enterprise](https://enterprise.github.com/). The buyer is responsible for installing and managing their instance of GitHub Enterprise (unless they work with a managed service provider) as an [AMI on AWS](https://enterprise.github.com/aws), a [VM in Azure](https://enterprise.github.com/microsoft/) or as a .OVA in their own data center. GitHub has done an outstanding job of creating an experience that makes the setup and maintenance of the application feel as easy as managing a SaaS application.

## Getting started with GHE:
Sign up for a trial online (this was actually a very novel idea that you could self-serve a trial of an enterprise installable version of application.)
![trial](/github/images/ghe-trial.png)

GitHub provides several ways to get started, either through their downloadable OVA or with a public cloud image.
![download](/github/images/ghe-download.png)

The GitHub enterprise dashboard provides some basic information to the customer and allows them to renew.
![dashboard](/github/images/ghe-dashboard.png)

## Installing GHE:
The enterprise IT admin or an engineering manager would generally setup the private GitHub Enterprise instance by following the detailed [installation instructions](https://help.github.com/enterprise/2.7/admin/guides/installation/installing-github-enterprise-on-vmware/).

Once they've reached the admin UI, they'll need to upload their license.
![license](/github/images/upload-license.png)

GitHub makes the enterprise version of their application highly configurable, so the Settings screen is critical for enabling admins to get the setup they require.
![settings](/github/images/ghe-settings.png)

## Managing GHE:

GHE customers can determine if they want the convenience of auto update checks enabled.
![updates](/github/images/ghe-auto-updates.png)

![updates](/github/images/ghe-updates-enabled.png)

GHE supports the ability for admins to be able to send in-app messages to their users about upcoming maintenance as well as information about the running instance for planning downtime.
![support](/github/images/ghe-maintenance.png)

## Supporting GHE:
Supporting buyer-managed, private instance of SaaS applications can be tricky. As a result, GitHub has invested heavily in providing as much information and guidance to the app admins out of the box.  

The support bundle is a key feature for grabbing all of the important logs and data about the instance.
![maintenance](/github/images/ghe-support.png)

Additionally, GitHub has created a beautiful dashboard of System health data to enable admins to proactively manage their instance to ensure there is little downtime. This data can also be pulled into external tools.
![monitor](/github/images/ghe-monitor.png)

There is an extensive customer facing knowledgebase that containers a wide variety of information about how to successfully deploy GHE into any enterprise.
![kb](/github/images/ghe-knowledgebase.png)

Finally, GitHub provides a videos to ensure that the information can be consumed in whatever media is best for each user.
![resources](/github/images/ghe-resources.png)

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
