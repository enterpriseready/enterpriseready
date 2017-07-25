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
Square isn't the typical software company we would ever come across in search of EnterpriseReady features. Their flagship product is a Point of Sale (PoS) targeted for Small and Mediums sized businesses. You'll probably find one of these at your local coffee shop or food truck. But they've since built a suite of software products that aim to go beyond just helping merchants accept a credit card, including products that help these business owners manage employees and the permissions those employees have. This is all within their Employee Management product, and it's one of the best implementations of [Role Based Access Control (RBAC)] (/features/role-based-access-control) we've ever seen. 

As an administrator of a Square PoS, you'll probably have employees interacting with different Square products. Some will need to facilitate transactions with customers, others will need to review reports and transaction history in order to see how the business is performing. Square allows administrators a lot of flexibility around creating flexible roles with customized permission levels.

Upon creation of a Square account, two default roles are accessible:

**Administrator - Permissions: Full Access**

**Owner - Permissions: Full Access**

Square defines *Full Access* as:

*Employees with this role can manage and access all aspects of your business, including managing employees and their roles, sales reports, and bank account information for all locations.*

*This level of account access should only be granted to your most trusted individuals.*

As an administrator you also have the ability to create custom roles:

![enter image description here](/square/images/permissions_roles.png)


## Permissions

### Role Name
When creating a new role, you first assign it a Role Name (i.e. Manager, Cashier). You are completely free to name this whatever you would like.
![enter image description here](/square/images/role_information.png)

### Access Shared Point of Sale (and modules within PoS)
Once a Role Name is defined, you are then able to toggle whether this Employee has access to the Shared Point of Sale. If you toggle this on, you can grant 19 features of the PoS. This includes the ability for the employee to access Sale Activity, Issue Refunds, Manage Customers, or View Reports.

This level of permission granularity is what makes a powerful RBAC feature set. With 19 permissions that can be turned on and off, you theoretically could have an endless supply of roles. This is a massive step forward to most Read or Write roles found in most RBAC implementations.
![enter image description here](/square/images/permissions.png)

### Access Dashboard Feature & Access Mobile Point of Sale
The final two permissions allow an employee to login to Square's web dashboard via their own email and password, along with the Square iOS or Android app.
![enter image description here](/square/images/access_dashboard_permission.png)

![enter image description here](/square/images/access_mobile_persmissions.png)

### Creating a new Employee & Assigning a Role
Once you've established a role and the level of permissions for that specific role, you can assign an employee
![enter image description here](/square/images/unselected_permissions.png)

![enter image description here](/square/images/selected_permissions.png)
