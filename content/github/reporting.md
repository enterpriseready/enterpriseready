+++
date = "2017-01-09T00:00:00Z"
title = "GitHub Admin Reports"
featureslug = "advanced-reporting"
type = "breakdown"
feature = "reporting & analytics"
company = "github"
ogimage = "images/twtr/github-deployment-og.png"
metadescription = "A detailed analysis of the way that GitHub implements reporting and analytics in order to meet the needs of enterprises."
pagetitle = "GitHub Enterprise Reporting - Enterprise Ready Feature Breakdown"

+++
GitHub offers their Enterprise customers additional features for reporting that are not available in standard editions. Because GitHub is a tool for code management, the intended audience is almost always technical, so GitHub have the advantage of being able to offer their data access in fairly complex ways like APIs. A tool that is geared towards teachers would not get away with offering most of data access in the form of APIs and would likely have to spend more development cycles providing reports. The enterprise data access features come in two ways:

* Data Dump Reporting API: A convenient way to export data about users, organizations and repositories to CSV
* Activity Dashboard: A graphical overview of the activity of your organization  

## Data Dump Reporting API
The standard GitHub REST API allows fetching of data about users,  with an HTTP GET request. The return of this is call is a JSON object.
![users](/github/images/ghe-users-api.png)

This is fine for developers wanting to work with users objects, but can't necessarily scale when you want to hand this capability to less technical users. For this, GitHub offers a reporting data dump API that gives easy access to dump data about users, organizations and repositories.

Calling an endpoint like `http(s)://hostname/stafftools/reports/all_users.csv` will first give a 202 HTTP response code without any other output, a report will be generated in the background. Once the background job has completed a second call can download the report.
![reports](/github/images/ghe-reports-api.png)

## Activity Dashboard

The data dump API is for users who want to take the data and create insights in another tool like Excel. The Activity Dashboard offers insights directly on-screen and requires no technical knowledge.
![dashboard](/github/images/ghe-activity-dashboard.png)

The feature lets users see what is happening across all projects on GitHub Enterprise in one place, from users and organizations to issues, pull requests, and code review comments. The Activity Dashboard compiles all this data and presents it in easy-to-read graphs, along with past data from the same time period. GitHub appears to be using a custom charting library to generate the charts.

Being able to compare past data with the same period (sometimes called period-over-period analysis) is a great example of functionality that would be difficult for a customer to implement themselves and therefore as a vendor GitHub is providing value for their enterprise customers.
![compare](/github/images/ghe-monthly-compare.png)

*This was published on Feb. 11, 2017.*

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
{{< contributors username="ernestoongaro" >}}

{{< breakdown-request >}}
