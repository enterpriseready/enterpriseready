+++
date = "2016-10-25T00:00:00Z"
title = "Single Sign On"
featureslug = "single-sign-on"
type = "feature"
hero = "/images/single-sign-on.svg"
+++

Single Sign On (SSO) allows your customers to manage their team’s users outside of your built-in user table. SSO centralizes the database of users into a single service that controls authorization to all accounts and applications.

Enterprises use a large number of services with a large number of end users. It nearly impossible to manage hundreds, thousands or tens of thousands of users across tens or hundreds of different applications. For this reason, enterprises have been using Single Sign On (or directory services) to manage the provisioning, deprovisioning and permissioning of accounts and privileges for many years.

There are several standards that will allow your customers to manage users in a single directly. The leading standard is [SAML](https://en.wikipedia.org/wiki/Security_Assertion_Markup_Language). However, OAuth based systems for federation via Google Apps, Salesforce, Slack & GitHub are also becoming quite popular.

## Basics:
SAML can be a little overwhelming to start. While the XML syntax of SAML is complex, the overall solution isn't hard to understand once you understand the common language:
- **SAML:** The standard that different systems, written by different vendors have agreed to use when communicating.  
- **SCIM:** While SAML provides a login and authentication flow, SCIM is a relatively new standard that provides a provisioning and deprovisioning flow.  
- **IdP:** The IdP is the identity provider. This is the directory or database that contains the actual user and group accounts. For example, if a large organization manages their users in Microsoft Active Directory, then AD is the IdP in this SAML environment.  
- **SP:** The SP is the Service Provider. This is the application that is attempting to authenticate (probably your application).  

## Integrating SAML
If your application currently has a self-managed user table for authentication and you decide to add SAML support, you can minimize the risk and effort by learning what you will need to do.

### Implementation
When a product changes from only self-authenticating users to having multiple options for authentication, it's tempting to emulate the current user model in your system. This isn't a good idea because the different types of user objects have different properties and it isn't often a perfect match.

You will need to consider changes to your system in the following areas:

1. A new team admin page. Your team administrators will need to have a place to manage their SAML certificates and redirect URIs to configure their accounts.  
1. A custom login page for teams. This can be difficult because "regular" users will continue to log in on the login page, but SAML users will need to know about a custom page for their own team to log in. One common solution is to have an internal table of redirect URLs for SAML users and to replace your login screen with a form that only collects email address. Once your API has the email address, you can make a decision about whether to prompt for the password or to redirect this user to a custom SAML login page.  
1. Admin accounts. Consider allowing admins to maintain the ability to login with a username and password. This can be useful to ensure that they don’t lose access to their account due to misconfiguration.  

Once you've decided to support SAML, it's important to test your implementation with all of the common IdPs and SPs ([Bitium](https://www.bitium.com), [Centrify](https://www.centrify.com/), [Okta](httpw://www.okta.com), [OneLogin](https://www.onelogin.com), [Ping Identity](https://www.pingidentity.com), AD, LDAP). In addition to testing, provide your customer with specific integration instructions for connecting the IdP to your application.

To get started developing, you should set up several different IdPs services to use and test with. Pick commonly used IdPs that are easy to set up. Some good starting points are to create a Windows server on AWS, GCE or Azure and install Active Directory. Initially, it might make sense to just start with a mock Identity Provider like the one freely available at https://idp.bitium.com. Once your application works against this mock IdP, then start testing it on Active Directory, FreeIPA, 389, OpenLDAP, and others.

There are some services to help jumpstart you so you don't have to understand, parse or write anything in XML also. Consider using Bitium's [B.A.S.E.](https://base.bitium.com) service to get started. It can connect to any IdP and allows you to start making the product changes to your own site immediately, without having to look for and build SAML libraries.

Additionally, you should consider integrating with OAuth Federation flows for Google Apps, Slack, Salesforce, GitHub and other flows. There are some services ([Auth0](https://www.auth0.com)) to help implement multiple OAuth provides without writing additional code.

### Converting from standard to SAML login
Your users don't want to lose their history when their login is changed from a plain user-based login to a SAML login. It's important to think about how to manage this binding. In our review of [Slack's SAML Integration](/slack/sso), there's a good example of how this could work.


### Deep linking
The SAML spec supports authentication on deep-linked content through the RelayState parameter. Ensure that your application communicates & honors this when it is received after authentication.

### User table
If you’re not using the SCIM protocol, you’ll likely want to change the state of your user table for SAML enabled accounts. You should not automatically provision full accounts when a SAML user logs in because you will have no way to deprovision these accounts. This is what SCIM was created to help solve.

### Documenting
While most end users will be familiar with their SSO platform of choice, it can be useful to provide step-by-step walk throughs for each major provider.

## Examples:
| [Tear down of Slack's SSO](/slack/sso) |
| -------------------------- |
| <img src="/slack/images/saml-options.png" width="250px" /> |
