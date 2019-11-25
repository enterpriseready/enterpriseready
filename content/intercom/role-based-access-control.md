+++
date = "2016-10-25T00:00:00Z"
title = "Intercom Role Based Access Control"
feature = "role based access control"
featureslug = "role-based-access-control"
company = "intercom"
type = "breakdown"
ogimage = "images/twtr/intercom-rbac-og.png"
metadescription = "A detailed analysis of the way that Intercom implements role based access control in order to meet the needs of enterprises."
pagetitle = "Intercom Roles (RBAC) - Enterprise Ready Feature Breakdown"

+++

Intercom is an application to communicate with your customers. Because so many people within an organization would need access to an application like this it was important that Intercom introduced Role Based Access Controls or user permissions.

### Types of Permissions:
For each team member Intercom allows you to choose whether they have access to things like app settings, billing, user data, or native to the Intercom app the ability to send / edit manual messages and auto messages.

#### Full Access
A full access user has every read/write permission in Intercom, including app settings and billing.

#### Restricted Access:
When a user is Restricted in Intercom they lose functionality to edit app settings, team members and billing.

Additional restrictions:

1. Prevent exporting user & company data.
1. Prevent sending messages to more than one person at a time.

![enter image description here](https://i.imgur.com/qdWMvkY.png)

Permissions by app:
Acquire, Engage, Learn and Support

### Viewing Permissions
![enter image description here](https://i.imgur.com/Lw4lPPN.png)

### What’s Not Here
Intercom doesn’t allow permissions that prevent it’s users from interacting with customers in different of scenarios. You may want your Sales team to only speak with customers on the main website, or acquiring landing pages. You may want your Support team to only speak with people in certain parts of your application.

*This was published on Nov. 22, 2016.*

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
{{< contributors username="marccampbell" >}}

{{< breakdown-request >}}
