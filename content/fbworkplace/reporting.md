+++
date = "2017-01-09T00:00:00Z"
title = "FB Workplace Admin Reports"
featureslug = "advanced-reporting"
type = "breakdown"
feature = "reporting & analytics"
company = "fbworkplace"
ogimage = "images/twtr/fbworkplace-deployment-og.png"
metadescription = "A detailed analysis of the way that FB Workplace implements reporting and analytics in order to meet the needs of enterprises."
pagetitle = "FB Workplace Reporting - Enterprise Ready Feature Breakdown"

+++
Facebook launched its [Workplace product](https://workplace.fb.com) into private beta at the end of 2016. The product is targeted at large organizations who are looking for a user friendly & familiar application for knowledge sharing and communication. Out of the gate, the product includes several enterprise ready features including team management, product security, advanced SSO, minimal RBAC, and detailed reports. We'll review the reporting functionality and assess its enterprise readiness.

## The good
Like many of the features of Workplace, it is evident that this was built to meet the internal needs of Facebook (the company/organization). FB is known for its metrics driven approach to just about everything they do. As a result, it is no surprise that they have instrumented most actions and made them measurable through their reporting dashboard to determine the effectiveness of their internal communication tool.

### Report access
Facebook reports are visible to administrators only. There are 4 different types of admins, all of whom have access to the reports.
![access](/fbworkplace/images/fb-access.png)

### Canned reports
As of publication of this review, there are 14 canned reports. These are separated into 3 primary categories: People, Groups, & Content, with a summary overview dashboard to highlight the activity across these categories. The specific definitions for how these reports are calculated are well documented both in the product and in the [FB Workplace knowledge base](https://www.facebook.com/help/work/807043472738394/?helpref=hc_fnav).
![dashboard](/fbworkplace/images/fb-reports-dasboard.png)

### Actionable feedback
Facebook has taken a big step in terms of reporting by identifying actions that can be taken by the admin if their organization is falling behind on key metrics. There are two primary actions that are available, the first and easiest is "Learn More" where low performance in certain categories links out to a Workplace Knowledge Base for leveraging the tool more effectively.
![learn-more](/fbworkplace/images/fb-learn-more.png)

The second actionable feedback actually enables the admin to send out notifications to users. This is a very powerful tool that immediately puts power into the hands of admins to impact the success of their implementation.
![action](/fbworkplace/images/fb-report-action.png)

## The bad
While FB Workplace has done a great V1 with its reporting feature, it does lack much of the functionality that enterprises will need over time.

### No export options
Admins cannot export the data (in any format) to manipulate and compare with other sources. This means that admins are stuck with the canned reports that FB makes available.

### No API options
Admins cannot access the reports from an API. The [FB Workplace API](https://developers.facebook.com/docs/workplace) seems to be focused on user management and account configuration, not reporting (or much else for that matter). Given Facebook's leadership with GraphQL and overall commitment to developers and being a platform for 3rd party applications, it is not hard to imagine that this is an area they'll improve sometime soon.

### No report scheduling
While FB Workplace does send a LOT of emails to users & admins, there is no option for scheduling reports or metrics on a regular schedule. As a result, admins must visit the reporting dashboard to get the information they need.

### No alerting
FB Workplace does compare your account's metrics against a sample set of successful integrations (or at least sets target goals for activity levels), however there doesn't seem to be automated alerts for when your company falls below those thresholds.

### No fine-grained data permissions
Many enterprises would prefer to segment out the access to what data is available in reports. Ie, managers might need to be able to view the activity levels of their reports but not that of the company as a whole. However, with FB Workplace reports are permissioned on an all or nothing basis.
