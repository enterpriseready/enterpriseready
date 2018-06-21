+++
date = "2016-10-25T00:00:00Z"
title = "Slack Single Sign On"
featureslug = "single-sign-on"
type = "breakdown"
feature = "single sign on"
company = "slack"
metadescription = "A detailed analysis of the way that Slack implements Single Sign-On (SSO) with SAML in order to meet the needs of enterprise customers."
pagetitle = "Slack SSO - Enterprise Ready Feature Breakdown"
+++

Slack supports a variety of different login options: standard user-based login, OAuth login with Google Accounts, or SAML login. Slack also has managed to provide a good process to converting an account from one login system to another.

On the administration page of a Slack team, there is an option to select Google Apps or SAML. It should be noted that Slack has different pricing tiers and the middle tier allows you to access the Google Apps login option, and you must be on the highest tier to access the SAML option.

![Slack Enable Alternate Authentication](/slack/images/slack-authentication.png)

## Google Apps Authentication
When visiting this page from an account that is using standard (username/password) authentication, and attempting to enable Google Apps auth, there are a few options. Everything has good defaults, but before enabling Google Apps authentication, the administrator has a chance to review and change these settings:

![Slack Google Apps Authentication Options](/slack/images/google-apps-auth.png)

Some of these items are very powerful:

**Allow users to change their username:** Some products, like Slack, the username is a very integral part of the product. Other applications may not really care too much about the internal username. Slack has decided to recognize this and allow individual users to customize their username without having to ask an admin to change anything in the Google Account.

**Google auth for your team must be used by:** Slack has decided to not make this an all-or-nothing option. Again, recognizing the typical use of their own product, they've decided that you can enforce Google Apps login for everyone, just for your own team, or make it completely optional.  This is a product decision you should consider for your own product. But it is important that a single login source can be enforced in large, enterprise deployments.

The bottom of that screen also has a comment that says *Binding emails will be sent to your team members in order to have them configure SSO with their Slack accounts*. This is a great feature that should be implemented in any product. The path to enable SAML isn't always at the beginning, when a product is first adopted. Often, there will be history and users and content created. Allowing users of your application to transfer their history to the new login credentials is probably a requirement.

## SAML Authentication
In addition to Google Apps, Slack supports pure SAML authentication. When starting to configure SAML login, there are a few options. While SAML is a standard, having easy-to-use buttons to enable some of the most popular SAML providers is a nice feature. If a Slack team wants to use Azure for login, they can select the Azure button, or selecting the Custom SAML 2.0 option will still work.

![Slack SAML Options](/slack/images/saml-options.png)

In this walkthorugh, I'm going to set up a Slack account to authenticate against a OneLogin service. Enabling it for Slack presents the following screen:

![Slack OneLogin](/slack/images/one-login-options.png)

There are a few fields, but Slack does a good job helping the administrator know what to put into each. Compare that screenshot from the Slack site to the screenshot on the OneLogin Administrator page:

![OneLogin](/slack/images/one-login-config.png)

Slack does a good job by naming these fields as similar to the OneLogin names as possible. And they provide hints/placeholder text in the fields that closely resemble the actual contents that you would expect to enter.

After saving this and configuring users on the OneLogin service to have access, the signin process in the Slack client now goes through OneLogin:

![Signin](/slack/images/one-login-login.png)

*This was published on Nov. 22, 2016.*

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
{{< contributors username="marccampbell" >}}

{{< breakdown-request >}}
