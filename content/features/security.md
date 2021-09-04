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


Intrinsically, staging environments are not meant for wide audiences. Regardless of best practices, your staging environments will often contain confidential or internal information. They are best-suited for testing features across your team; they are not meant to be seen by end-users. By following a few general rules and suggestions, you can implement a few layers of security to ensure all your environments are accessed solely by your team and any trusted visitors. Remember to:
- keep a gate between production and internal tools
- implement role-based access to regulate which teams and members can access content

## Use SSO or a VPN
SSO and VPNs are good solutions when trying to access private environments and areas.
By integrating with a straightforward authentication system, you can add a secure gateway to your ephemeral environments. Using SSO or a VPN will:
- provide a robust authentication system
- limit who can access your environments
- reduce the chances of lost or stolen passwords
- streamline the login process (SSO)
- prevent anyone outside your organization from accessing your environments
- authenticate all users at sign-in
- keep your connection encrypted and secure


## Sanitize your data

It is crucial to exclude any Personally Identifiable Information (PII) from your ephemeral environments. Keeping PII secure is the responsibility of the DevOps and SRE teams. For more information on PII, check out popular regulatory frameworks, such as [PCI DSS](https://www.pcisecuritystandards.org/) and [SOC 2](https://socreports.com/audit-overview/what-is-soc-2).
Keeping your data sanitized means:
- using a separate set of security keys from production
- using environment variables and secrets, to ensure no critical systems break
- automatically rotating your keys


---
### Content Contributors


{{< contributors username="nbeck415" >}}
{{< contributors username="bueller" >}}
