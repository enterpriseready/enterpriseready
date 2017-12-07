+++
date = "2016-10-25T00:00:00Z"
title = "Square Role Based Access Control"
featureslug = "role-based-access-control"
type = "breakdown"
feature = "role based access control"
company = "square"
ogimage = "images/twtr/square-rbac-og.png"
metadescription = "A detailed analysis of the way that Square implements role based access control in order to meet the needs of their customers."
pagetitle = "Square (RBAC) - Enterprise Ready Feature Breakdown"

+++
Square isn’t the typical enterprise software company that we look to for great implementation of EnterpriseReady features. Their flagship product is a Point of Sale (PoS) targeted for small and medium sized businesses. You’ll probably find one of these at your local coffee shop or food truck. But they’ve since built a suite of software products that aim to go beyond just helping merchants accept a credit card, including their [Employee Management product](https://squareup.com/pos/employee-management) that provides time cards and other HR type features. Within this product, they’ve implemented several core enterprise features, and it’s one of the best implementations of Role Based Access Control (RBAC) we’ve seen.

Administrators of a Square PoS will probably have employees interacting with different Square products. Some will need to facilitate transactions with customers; others will need to review reports and transaction history to see how the business is performing. Square allows administrators a lot of flexibility around creating flexible roles with customized permission levels. Additionally, they use these features to create [product assortment](/features/product-assortment) and charge more to customers who want these features.

![enter image description here](/square/images/rbac/square-pricing.png)

## Default Roles

Upon creation of a Square account, two default roles are built in (though nearly identical):

1. **Administrator** - Permissions: Full Access
1. **Owner** - Permissions: Full Access

Square defines "Full Access" as:

*Employees with this role can manage and access all aspects of your business, including managing employees and their roles, sales reports, and bank account information for all locations. This level of account access should only be granted to your most trusted individuals.*

We would suggest that Square create a few more default roles that are common for cashiers, managers, etc.

## Roles & Granular Permissions
Administrators also have the ability to create custom roles:

![enter image description here](/square/images/rbac/permissions_roles.png)
### Role Name
When creating a new role, they first assign it a Role Name (i.e., Manager, Cashier). They are completely free to name this whatever they would like.
![enter image description here](/square/images/rbac/role_information.png)

### Access Shared Point of Sale (and modules within PoS)
Once a Role Name is defined, they are then able to toggle whether this Employee has access to the Shared Point of Sale. If they toggle this on, they can grant 19 features of the PoS. This includes the ability for the employee to access Sale Activity, Issue Refunds, Manage Customers, or View Reports.

This level of permission granularity is what makes a powerful RBAC feature set. With 19 permissions that can individually be turned on and off, they theoretically could have an endless supply of roles. This is a massive advancement to Read and Read/Write roles found in most RBAC implementations.
![enter image description here](/square/images/rbac/permissions.png)

### Access Dashboard Feature & Access Mobile Point of Sale
The final two permissions allow an employee to login to Square’s web dashboard via their email and password, along with the Square iOS or Android app.
![enter image description here](/square/images/rbac/access_dashboard_permission.png)

![enter image description here](/square/images/rbac/access_mobile_persmissions.png)

### Creating a New Employee & Assigning a Role
Once you’ve established a role and the level of permissions for that specific role, you can create an employee, or retroactively go back and assign a role. An administrator can change an employees Role at any time.
![enter image description here](/square/images/rbac/unselected_permissions.png)

![enter image description here](/square/images/rbac/selected_permissions.png)

## End User Experience
One important piece of functionality when looking at RBAC is the experience for the end user who has restricted permissions. It's critical the software informs and directs the user to their level of access and functionality. One component of Square's software is their web dashboard. When an "employee" is granted access to the dashboard, they receive an email to create their Square account.

![enter image description here](/square/images/rbac/gm_account_email.png)

Upon account creation, the employee has access to the web dashboard. The next image shows the two dashboards, one with no permissions and one with full permissions.
#### Dashboard with No Permissions vs Full Permissions
![enter image description here](/square/images/rbac/gm_dashboard.png)

You can quickly see the dashboard with no permissions only allows access to the user's Account and Settings. This tab only enables the user to update limited Personal Information.

When that same user is granted full permissions, you can see new tabs/functionality appear.

### Opportunity for Improvement
For most enterprise applications hiding functionality isn't the best way to implement RBAC (you could argue that Square isn't really enterprise software and the end users might be best off without links to functionality they don't & won't have access to). A more robust implementation would be allowing the user to see functionality without access and proper messaging. From there, you could provide a "Request Access from Admin" feature. In larger organizations, a feature like this can speed up the process for a user to make sure they have all of the components of the application they need to do their job. When features are hidden, users might simply think the software is lacking capabilities.

## Final Thoughts
Square's interface takes a complex offering and gives an administrator a straightforward way to make sure each employee has access to only the features they need. Square should be inspiration for all software companies looking to make advancements in their RBAC feature set.



{{< contributor >}}

----
{{< contributors username="topherolson" >}}
{{< contributors username="grantmiller" >}}

{{< breakdown-request >}}
