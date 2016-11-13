+++
date = "2016-10-25T00:00:00Z"
title = "Single Sign On"
features = ["single-sign-on"]
type = "feature"
hero = "/images/single-sign-on.svg"
+++

Single Sign On (SSO) allows your customers to manage their team’s users outside of your built-in user table. SSO centralizes the database of users into a single service that controls authorization to all accounts and applications.

Enterprises use a large number of services with a large number of end users. It nearly impossible to manage hundreds, thousands or tens of thousands of users across tens or hundreds of different applications. For this reason, enterprises have been using Single Sign On (or directory services) to manage the provisioning, deprovisioning and permissioning of accounts and privileges for many years.

There are several standards that will allow your customers to manage users in a single directly. The leading standard is [SAML](https://en.wikipedia.org/wiki/Security_Assertion_Markup_Language). However, OAuth based systems for federation via Google Apps, Salesforce, Slack & GitHub are also becoming quite popular.

## Basics:
SAML can be a little overwhelming to start. While the XML syntax of SAML is complex, the overall solution isn't hard to understand once you understand the common language:
- **SAML** The standard that different systems, written by different vendors have agreed to use when communicating.  
- **SCIM** While SAML provides a login and authentication flow, SCIM is a relatively new standard that provides a provisioning and deprovisioning flow.  
- **IdP** The IdP is the identity provider. This is the directory or database that contains the actual user and group accounts. For example, if a large organization manages their users in Microsoft Active Directory, then AD is the IdP in this SAML environment.  
- **SP** The SP is the Service Provider. This is the application that is attempting to authenticate (probably your application).  

## Advanced:
Once you've decided to support SAML, it's important to test your implementation with all of the common IdPs and SPs (Bitium, Centrify, Okta, OneLogin, Ping, AD, LDAP). In addition to testing, provide your customer with specific integration instructions for connecting the IdP to your application.

Additionally, you should consider integrating with OAuth Federation flows for Google Apps, Slack, Salesforce, GitHub and other flows. There are some services ([Auth0](https://www.auth0.com)) to help implement multiple OAuth provides without writing additional code.

### Admin SAML Setup
Your application will need to provide a method for the Administrator to connect their Identity Provider and test the login. This form will frequently ask for an x.509 certificate, login url, and more.

**Admin accounts**  
Consider allowing admins to maintain the ability to login with a username and password. This can be useful to ensure that they don’t lose access to their account due to misconfiguration.

### User Auth Flow
Single Sign On users don’t have passwords for your application so they are often given a separate login screen option. There are different product experiences available here. One common solution is to have an internal table of redirect URLs for SAML users and to replace your login screen with a form that only collects email address. Once your API has the email address, you can make a decision about whether to prompt for the password or to redirect this user to a custom SAML login page.

### Deep linking
The SAML spec supports authentication on deep-linked content through the RelayState parameter. Ensure that your application communicates & honors this when it is received after authentication.

### User table
If you’re not using the SCIM protocol, you’ll likely want to change the state of your user table for SAML enabled accounts. You should not automatically provision full accounts when a SAML user logs in because you will have no way to deprovision these accounts. This is what SCIM was created to help solve.

### Documenting
While most end users will be familiar with their SSO platform of choice, it can be useful to provide step-by-step walk throughs for each major provider.

## Examples
