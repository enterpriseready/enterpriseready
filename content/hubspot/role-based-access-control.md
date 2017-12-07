+++
date = "2016-10-25T00:00:00Z"
title = "HubSpot Role Based Access Control"
featureslug = "role-based-access-control"
type = "breakdown"
feature = "role based access control"
company = "hubspot"
ogimage = "images/twtr/hubspot-rbac-og.png"
metadescription = "A detailed analysis of the way that HubSpot implements role based access control in order to meet the needs of enterprise customers."
pagetitle = "HubSpot Roles (RBAC) - Enterprise Ready Feature Breakdown"

+++

HubSpot [introduced roles & permissions](http://blog.hubspot.com/customers/bid/157944/Introducing-6-Different-HubSpot-User-Roles) about 4 years ago. In doing so, they enabled their customers to provide role based access control to application functionality.

## What they do well:
### Documentation:
They’ve done a nice job of clearly [documenting](https://knowledge.hubspot.com/articles/kcs_article/settings/hubspot-user-roles-guide) the permissions assigned to each role.

### Integration with user invitation flow
As an account admin you select the role of the user as step 2 of the invite flow:

![enter image description here](https://i.imgur.com/6r0V24D.png)

### Sane defaults
Account permissions that would potentially give the user full access are separated from the standard roles and are defaulted to non-admin status (reducing the likelihood of just moving ahead with defaults and making many admins).

![enter image description here](https://i.imgur.com/4YUjons.png)

### Role names & more info
Standard account roles (ie “Marketing”) have been given fairly descriptive names & the link to the full documentation provided for more details.

![enter image description here](https://i.imgur.com/H9sVSVu.png)

### Sub-permissions
Within roles there are sub-permissions for various types of application actions. Ultimately they’ve selected 3 different permission types for each. Write & Publish, Write Only, Read Only.

![enter image description here](https://i.imgur.com/yqxvbRu.png)

### Integrated into the user list
The user list clearly illustrates the role of each user at a glance. The list can be filtered by role types. Admins can easily edit permissions of users anytime.

![enter image description here](https://i.imgur.com/PVhh2aB.png)

### Overall - Simplicity
They’ve accomplished a fairly complex task of defining roles/permissions and made it a native and intuitive process.

## Where they’ve missed the mark.
### Lack of flexibility & control
The simplicity of predefined roles makes it incredibly easy to get started, but it also lacks the power and flexibility of a system that allows admins to create custom roles. In fact, this is the most popular [“Help & Settings” request from their customers](http://ideas.hubspot.com/forums/76407-general-hubspot-ideas/suggestions/3716820-custom-user-access-roles-and-individuals).

### Permission enforcement messaging
There are also issues with the implementation of how permissions are enforced. Users without the permission to add users can still visit the page (however they see a users list).

![enter image description here](https://i.imgur.com/2ObBL4f.png)

They can even begin the flow to add users, but since they can’t select roles they can’t make it further.

![enter image description here](https://i.imgur.com/hJfBquE.png)

Similar issues come up when trying to access a section for creating a blog post. Except this time, the user can take the action but then gets an error message.

![enter image description here](https://i.imgur.com/y7GGNuR.png)

At no point are any of these users shown messaging that would indicate that they don’t have the required permissions to accomplish the task they’re attempting. Alerts with this message are lacking and will likely end up with confused users.

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
{{< contributors username="paracycle" >}}
{{< contributors username="marccampbell" >}}

{{< breakdown-request >}}
