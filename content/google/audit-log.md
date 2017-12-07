+++
date = "2016-10-25T00:00:00Z"
title = "Google Apps Audit Log"
featureslug = "audit-log"
type = "breakdown"
feature = "audit logs"
company = "google"
ogimage = "images/twtr/google-audit-log-og.png"
metadescription = "A detailed analysis of the way that Google's G Suite implements a detailed audit log of all activity in order to meet the needs of enterprises."
pagetitle = "G Suite Audit Log - Enterprise Ready Feature Breakdown"

+++

Google Apps for Work provides a robust audit trail to both Standard and Unlimited accounts. By default, the feature is only available to Admins. Non-admin users have no way to view their personal audit history. Google categorizes their audit trail as a type of report, so it is available under the Reports menu.

![enter image description here](https://i.imgur.com/1PgAOJj.png)

For the Standard Plan, audit logs are available for Admin activities, Logins, Calendar activities, Tokens, Groups, and Email log search. Unlimited admins are also able to access audit logs for Mobile and Drive (which we’ll get into later). Noticeably missing is any audit log activity for Hangouts (videos or chats). Google+ also doesn’t appear to have audit logs but that could just be a function of no one having ever used it.

The execution of the audit logs as shown below is actually quite good. The [Calendar audit log](https://support.google.com/a/answer/6110475/?hl=en&authuser=0) is a great example of how audit logs should be done. The information is clearly presented:

![enter image description here](https://i.imgur.com/DnmDosi.png)

With options for which columns to include in the report:

![enter image description here](https://i.imgur.com/5T5mohj.png)

As well as a detailed filtering & date ranging option:

![enter image description here](https://i.imgur.com/CqxvTB1.png)

Any report can be exported to either CSV or directly into a Google Sheet:

![enter image description here](https://i.imgur.com/wHWGc92.png)

The main functionality that the Google Apps Calendar Audit Log appears to be missing is the ability to access this information from the Reports API.

Standard Admins do have access to some of the Audit Logs via the Reports API (today this includes Admin activity, Logins and Tokens). Unlimited Admins can access Drive and Mobile audit logs from the API. Having API access is an important feature as it allows companies to move this into unified logging systems like Splunk to create a holistic view of user activity.

![enter image description here](https://i.imgur.com/WRGYRao.png)

For Google Apps Unlimited the audit log for Drive is even more detailed in that it logs View events. Ie, every time a Google Doc is viewed that view is logged for administrative use (IP address does not appear to be included with view events).

![enter image description here](https://i.imgur.com/drAYz9L.png)

Google Apps does provide insights into the retention policy & [lag times](https://support.google.com/a/answer/6000244) for all audit events. However, this lag time can cast some doubt on the reliability of the logs. Also, given that the audit log is only covered with a 99.9% SLA there is room for additional errors.

The detail provided about the mechanics of the [Drive Audit Log](https://support.google.com/a/answer/4579696?hl=en) gives some insight into the difficulty of delivering truly accurate logs. However, it is better to disclose known issues than to keep this information hidden from customers.

Google Apps doesn’t provide much insight into the immutable nature of these logs or try to prove immutability in any way. There is also a gap in the time-synced nature of these logs as they only provide detail down to the millisecond if the API is used to gather the data. If a report is downloaded, this information is excluded and could prove to not be enough detail for true sequencing when integrating with additional log sources. It also appears that there is no way to validate the server time was synced with NTP.

Provide a change log things that are added to the audit log over time.

![enter image description here](https://i.imgur.com/Mmq6G5w.png)

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
{{< contributors username="marccampbell" >}}

{{< breakdown-request >}}
