+++
date = "2016-10-25T00:00:00Z"
title = "Role Based Access Control"
featureslug = "role-based-access-control"
type = "feature"
hero = "/images/role-based-access-control.svg"
metadescription = "A guide for SaaS products to implement role based access control (RBAC) in their application to offer granular roles and permissions to enterprise buyers."
pagetitle = "Enterprise Ready SaaS App Guide to Role Based Access Control (RBAC)"
ogimage = "/images/twtr/rbac-og.png"
+++

Role based access control (RBAC) functionality enables application admins to limit the permissions of some users within a team.

Many times when SaaS applications first launch team functionality, they start out with all users being fully privileged to access all features. However, for larger customers there are requirements that different members of the team be assigned only the functionality they need to do their job (see the [principle of least privilege](https://en.wikipedia.org/wiki/Principle_of_least_privilege)). To this point, it is even a security best practice for admins to maintain separate accounts for their user level activities. As a result, SaaS applications need to offer Role Based Access Control to be EnterpriseReady.

We’ve included screen-by-screen tear downs of the RBAC implementations of both [HubSpot](/hubspot/role-based-access-control) & [Intercom](/intercom/role-based-access-control).

## At the most basic level:
Very simple implementations of RBAC start by simply allowing users to be identified as read-only. These users are able to view all features and resources, but not make any changes.

### The standard functionality:
Eventually, customers require more fine-tuned control over which roles have read-write, read-only, or no-access to various features and resources. When they do, many SaaS companies create general roles with defined permissions. Examples include:  

**Super Admins** - can modify users as well as modify all features and resources.  
**Billing Admins** - can modify the account billing data but not modify users or features.  
**Users** - can use the product in all of its functionality but do not have access to modify users or view billing info.  
**Reporting users** - can only access reporting features (and likely not modify any additional resources).  
**Feature only users** - limiting users to use only one application specific feature or another.  

## Advanced functionality:
At some point most advanced enterprise software solutions offer the ability to customize the roles with specific read/write, read-only or no-access permissions for each feature individually. This is often messy and many software products prefer to not have the screen of checkboxes to custom provision a role or account.  

### How to integrate
Role assignment is best integrated into the invitation and user management flow. Anytime a new user is created they should be designated specific permissions that allow them access the features they need. Ongoing management of permissions should be done in the users list with each user’s roles clearly identified.  

### Communicating restricted functionality
Once you restrict functionality from users it is important to consider their experience when they encounter the touch points with such features. Ie, if a user can’t invite users, ensure that the “invite user” button is disabled with a clear designation that it is disabled due to insufficient permissions.  

## Examples:
----   
{{< example title="HubSpot RBAC" url="/hubspot/role-based-access-control" image="/hubspot/images/example.png" >}}

{{< example title="Intercom RBAC" url="/intercom/role-based-access-control" image="/intercom/images/example.png" >}}
