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

Intrinsically, ephemeral environments are not meant for wide audiences. They are best-suited for testing features across your team; they are not meant to be seen by end-users. By following a few general rules and suggestions, you can keep these environments safe from any threats posed by the outside world.
Remember to:
- keep a gate between production and internal tools
- implement role-based access to regulate which teams and members can access content

## Add SSO
Single Sign-On (SSO) has become standard for login-based services. When securing your ephemeral environments, it is best practice to use an external, trusted SSO, rather than building your own.
SSO will:
- provide a robust authentication system
- limit who can access your environments
- reduce the chances of lost or stolen passwords
- streamline the login process


## Use a VPN

Another measure to take when securing your environments is using a Virtual Private Network (VPN). This will:
- prevent anyone outside your organization from accessing your environments
- authenticate all users at sign-in
- keep your connection encrypted and secure

## Sanitize your data

It is crucial to exclude any Personally Identifiable Information (PII) from your ephemeral environments. Keeping PII secure is the responsibility of the DevOps and SRE teams. For more information on PII, check out popular regulatory frameworks, such as [PCI DSS](https://www.pcisecuritystandards.org/) and [SOC 2](https://socreports.com/audit-overview/what-is-soc-2).
Keeping your data sanitized means:
- using a separate set of security keys from production
- using disposable environment variables and secrets, to ensure no critical systems break

---
### Content Contributors


{{< contributors username="nbeck415" >}}
{{< contributors username="bueller" >}}
