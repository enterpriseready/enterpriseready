+++
date = "2016-10-25T00:00:00Z"
title = "Single Sign On"
features = ["single-sign-on"]
type = "feature"
hero = "/images/single-sign-on.svg"
+++

Single Sign On (SSO) allows your customers to manage their team’s users outside of your built-in user table. SSO centralizes the database of users into a single service that controls authorization to all accounts and applications.

Enterprises are using a large number of services with a large number of end users. It nearly impossible to manage hundreds, thousands or tens of thousands of users across tens or hundreds of different applications. For this reason, enterprises have been using Single Sign On (or directory services) to manage the provisioning, deprovisioning and permissioning of accounts and privileges for many years.

There are several standards that will allow your customers to manage users in a single dashboard. The leading standard is SAML. However, OAuth based systems for federation via Google Apps, Salesforce, Slack & GitHub are also becoming quite popular.

### Basics:
SaaS applications are the SP (Service Provider) in the flow for SAML 1) User 2) IdP (Identity Provider), 3) SP (Service Provider).
Implement SCIM to allow provisioning and deprovisioning of accounts
Unify accounts and allow users to sign in through any method

### Advanced:
Provide integration instructions for the major IdPs/Service Providers (Bitium, Centrify, Okta, OneLogin, Ping).
Integrate with OAuth Federation flows for Google Apps, Slack, Salesforce, GitHub and other flows.

### Admin SAML Setup
Admins will need to provide the required information to connect to their Identity Provider. This is a fairly standard set of inputs including X.509 Certificate, Login URL etc.

**Admin accounts**  
Consider allowing admins to maintain the ability to login with a username and password. This can be useful as a safety measure to ensure that they don’t lose access to their account due to misconfiguration.

### User Auth Flow
Single Sign On users don’t have passwords for your apps so they are often given a separate login screen option. This login screen will collect the email address and then lookup and redirect to the associated Login URL provided at setup time.

### Deep linking
The SAML spec supports authentication on deep-linked content through the RelayState parameter. Ensure that your application communicates & honors this when it is received after authentication.

### User table
If you’re not using the SCIM protocol, you’ll likely want to change the state of your user table for SAML enabled accounts.

### Documenting
While most end users will be familiar with their SSO platform of choice, it can be useful to provide step-by-step walk throughs for each major provider.

