+++
date = "2016-10-25T00:00:00Z"
title = "SLA and Support"
featureslug = "sla-support"
type = "feature"
hero = "/images/support.svg"
metadescription = "A guide for SaaS companies to meet and exceed the SLA and Support requirements of their enterprise customers."
pagetitle = "Enterprise Ready SaaS App Guide to SLA and Support"
ogimage = "images/twtr/support-og.png"
+++

## SLA (Service Level Agreement)  
Service level agreements are a common request from enterprise customers, rooted in the twin premises that (1) if they spend a lot of money on a product, they expect a certain level of quality, and (2) that due to the scale of their businesses, unplanned outage can cost them non-trivial amounts of money. Typically, SLAs guarantee a minimum amount of application uptime and/or a maximum wait time for resolving support issues.

### Uptime
Generally, SLAs for enterprise applications must be at least 99.9 percent (i.e., the application experiences no more than 8.76 hours of unplanned downtime per year), but many will promise 99.99 percent (a max of 52.6 minutes of unplanned downtime per year) or even 99.999 percent (5.26 minutes of unplanned downtime per year). This is less of a product feature than a business decision, but uptime is very much a function of architectural decisions at both the application and infrastructure levels. It’s also important to report this with some amount of historical transparency, which is why many SaaS providers have a status page that displays real-time health and maintains the historical record of availability.

When there is an outage or other issue affecting a cloud service, many companies also use their status page to offer updates as they diagnose and then resolve the problem. The best approach is to do this in as close to real time as possible, because customers want to know what’s wrong and when they can expect to use your service again—and being left in the dark on this information can generate ill will. For particularly long or widespread outages, publishing a detailed post-mortem can also be a good idea; it forces your company to address the root cause, and also lets customers know you take these events seriously.


### Response times
Within this SLA, you’ll also likely include a commitment to provide standard support hours, emergency support and maximum response times. Response is defined as the time it takes for a qualified team member to acknowledge the issue and begin to diagnose the problem. Response times vary by the severity of the issue that is being raised.

Severity is often categorized into Sev1, Sev2 and Sev3, with clear definitions for the issues that will fall into each category. Application downtime with no workaround is a clear Sev1 issue, and potential security vulnerabilities are generally elevated to Sev1 as well. Response times for Sev1 is likely under 3 hours.

## Support
There are many different methods for providing customer support, and offering different levels/avenues of support is often a common technique to distinguish between various pricing plans:

- **Community-based support:** Generally for lower-tier customers, who will be able to ask questions of other community members in a forum.
- **Email support:** Email support is generally seen as a low-cost way to offer direct support to your customers, as you can create a queue of incoming emails and prioritize them based on the support contract.
- **Phone support:** Offered as a bit more of an "on-demand" or "instant-response" support option for customers who prefer to talk to someone immediately when they have a question.
- **Dedicated customer success manager:** A single point of contact for all account-related questions. Aside from answering questions and trying to resolve issues, this person serves as an advocate for the customer's requests and issues within the SaaS provider.

## Other support-related practices and offerings
In addition to contractual and community support, your company can go a long way toward educating customers (and staving off some support duty) by producing the right content. **High-quality documentation** is an absolute necessity today, especially for SaaS applications where part of the value is in the self-service model of operating them. You can go the extra mile with video tutorials, webinars and even paid in-person training for customers that want it.

Your enterprise customers will also expect some visibility into your **product roadmap**. They want to be able to influence the features you’ll be adding in order to ensure that you continue to meet their changing needs. However, you’ll usually want to preface any such discussion with a safe-harbor statement (if it’s in a presentation) or other means of communicating that although this is the general direction, you are not promising to deliver anything specific by any specific time frame. Some companies do build features at customers’ requests, but that type of deal must be formalized in a contract.

Many enterprise customers will also eventually ask for things like **business insurance, source code escrow and indemnification**. Like SLAs, these aren’t really product features, but they’re important to understand because they’ll come up in enterprise contract negotiations and they can be addressed to some degree by how the product is built.


## Examples
----   
{{< example title="HashiCorp SLA and Support" url="/hashicorp/sla-support" image="/hashicorp/images/example.png" >}}

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
