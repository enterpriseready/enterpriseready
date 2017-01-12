+++
date = "2016-10-25T00:00:00Z"
title = "Reporting & Analytics"
featureslug = "advanced-reporting"
type = "feature"
hero = "/images/advanced-reporting.svg"
metadescription = "A guide for SaaS products to build advanced reporting functionality into their application that will give enterprise customers the ability to demonstrate value gained from the use of an application."
pagetitle = "Enterprise Ready SaaS App Guide to Advanced Reporting"
ogimage = "images/twtr/reporting-analytics-og.png"
+++
Reporting and analytics embedded into enterprise applications can differentiate products and are expected by many enterprise buyers. The more people using your application, the more functionality in reporting they will want. Consider a simple CRM app - if you sell it to small sales teams then only the sales department will want a couple of simple pipeline reports. If you sold it to an enterprise you'll have different tiers of sales managers, lead developers, marketing, finance, support staff and many more. Each of these groups expects different answers.

A [recent survey by Aberdeen Group](http://aberdeen.com/research/8815/rr-embedded-business-intelligence/content.aspx), shows that 73% of ISVs include reporting and analytics in their software as a basis to differentiate their products and develop competitive advantage. Other reasons include improving end-user experience and increasing average customer value.

If system logs are for developers and [audit logs](../audit-log/) are for admin record keeping then reporting is for business. In other words, data related to the business purpose of the application, not the nuts and bolts.  

Advanced reporting is an important feature for enterprise buyers because it allows them (or the administrator) to prove that the software in itself was effective (justifying the price they paid).  It isn’t enough for software to be effective, it has to be provably effective. The more ways you enable customers to slice and manipulate the data that your application produces, the more likely that they’ll be able to prove effectiveness and derive value from your apps.

Reporting and analytics can also affect the bottom line, SaaS companies [ can charge](https://www.oreilly.com/ideas/ditch-the-data-dump) 8x more per user for an edition that includes advanced analytics, compared to basic reporting. The better the analytics in your app, the better the insights that people glean from them and the better valued the tool.

## Types of Functionality Offered
Consider adding basic reporting functionality to your entry-level [product editions](../product-assortment/) and more advanced analytics functionality to your more advanced editions. Enterprises have more complex data requirements, more types of users and will be more demanding in this respect. The better functionality you provide the better the stories that your customers can tell about using your product.

### Data Dumps and APIs
At the most basic level you need to offer data dumps and this is different than your standard product API. Operational APIs tend to be transactional while reporting APIs tend to offer data summarised over time. Exporting to CSV/Excel is standard here.

An example of the most basic data dump functionality is implemented by [Github Enterprise's Site Admin Reports](/github/reporting). They

### Canned Interactive Reporting and Dashboards
Interactive reporting and dashboards adds on to your canned reports with interactivity and a library or pre-canned widgets. These widgets tend to track KPIs and are arranged in dashboards. This is moving up the data-pipeline - with canned reports the data is generally "raw" and immutable where interactivity adds a layer of customization. Enterprise tools tend to have many users and allowing customization gives you a higher chance of pleasing more.  

Static reporting means that you are having to generate all possibilities for canned reports - with basic parametrization. Usually this isn't enough to satisfy enterprise customers.  

### Self-Service Authoring, Data Exploration and Analytics
The next level is analytics. Analytics gives your customers the ability to ask their own questions (as opposed to canned reports and dashboards). Analytics generally go deeper than how the product is being used. Instead, analytics gives your customer key insights into their business based on the data that your application collects.

This feature is important for tools where data is centric to the application and the audience that uses the tool is not technical, for example [HubSpot](/hubspot/reporting) implements this features as an add-on.

## Typical Features Enterprises Want
### Export to different formats
No matter what format you provide your data in, someone in your customer's organization will want it in a different format. Exporting outputs to Word, Excel, PowerPoint, PNG are common requests. To provide this you can use libraries that take one format and output to many, like [JasperReports](http://community.jaspersoft.com) for Java.

### Schedule/Email reports
Some people may only use your application by consuming the data that it generates. Your reports becomes the "GUI" of your customer's finance department (for example). In order to satisfy this need some people want to get reports output via email. You'll need an additional screen that allows users to schedule a frequency, select parameters and select a format (you'll need the export functionality mentioned in the previous section). Scheduling with time based parameters means you're going to have to implement relative time logic (like give me data for last 7 days, where last 7 days is relative to when the report runs).

### Alerts on exceptions
Similar to scheduling, alerting is a schedule that only happens when a specific condition is run. This is an extension to the scheduling functionality above. Note that people will want to select the smallest increment for their alerts (i.e. check for the condition every 30 seconds) - with many users this will obviously slow down your database. You'll then have to add a caching layer for the report result sets. This can add a lot of complexity.  

### Row/Column level security on data and permissions management on reports
As previously mentioned, more groups will be using your app and with that comes the requirement to segment data. At a simple level you'll need to implement object level permissions - this type of user can see this report and this one can not. Going beyond that column level security means a report shown to an admin shows all columns but hides a sensitive column when a non-privileged user runs it. Finally, row level community is for reports where users have access to the reports but see different data (manager A only sees his employee's data while manager B only sees her employee's data).

## Recommended Approaches
After reading all the required capabilities and considering options, this is a classic build-vs-buy decision to add this functionality yourself or embed it from a third party framework. A guide by O'Reilly Media titled [Embedding Analytics into Modern Applications](http://www.oreilly.com/data/free/embedding-analytics-in-modern-applications.csp) covers several approaches.

## Examples
{{< example title="GitHub Admin Reports" url="/github/reporting" image="/github/images/example.png" >}}

{{< example title="HubSpot Report Authoring" url="/hubspot/reporting" image="/hubspot/images/dashboard-example.png" >}}
