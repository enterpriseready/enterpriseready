+++
date = "2021-08-13T00:00:00Z"
title = "Ephemeral Environments And Security"
featuresslug = "security"
type = "feature"
hero = ""
metadescription = ""
pagetitle = "Ephemeral Environments And Security"
ogimage = "images/article-icons/team.png"
+++

Ephemeral environments often contain confidential, internal information. It is crucial to implement several security measures to ensure these environments are accessed solely by your team and any trusted visitors.

## Why do we need to secure our ephemeral environments?

Intrinsically, ephemeral environments are not meant for wide audiences. They are best-suited for testing features across your team; they are not meant to be seen by end-users. By following a few general rules and suggestions, you can keep these environments safe from any threats posed by the outside world. There should always be a gate between production and internal tools. Furthermore, you can implement role-based access to regulate which teams and members can access content.

## Add SSO
Single Sign-On (SSO) has become standard for login-based services. When securing your ephemeral environments, it is best practice to use an external, trusted SSO, rather than building your own.
SSO provides a robust authentication system, limiting who can access your environments and reducing the chances of lost or stolen passwords. It also streamlines the login process and has been proven to increase productivity.

## Restricting remote access

It is crucial to exclude any Personally Identifiable Information (PII) from your ephemeral environments. For more information on PII, check out popular regulatory frameworks, such as [PCI DSS](https://www.pcisecuritystandards.org/) and [SOC 2](https://socreports.com/audit-overview/what-is-soc-2).
Additionally, it is best-practice to use a separate set of security keys from production. This includes using disposable environment variables and secrets. By doing so, you will ensure that no critical systems break.


---
### Content Contributors


{{< contributors username="nbeck415" >}}
{{< contributors username="bueller" >}}
