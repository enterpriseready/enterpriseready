+++
date = "2016-10-25T00:00:00Z"
title = "How SaaS providers are preparing for GDPR"
type = "gdpr"
metadescription = "A collection of how the best SaaS companies are approaching GDPR in their products."
pagetitle = "EnterpriseReady: GDPR SaaS Best Practices"
+++

Sometimes the best way to get a sense of something—especially something as complex as GDPR—is to see how your peers are thinking about it. Here’s a collection of documents that some of the most-successful cloud and SaaS providers have put together to explain how they plan to comply with the law; the requirements they have in place for customers and subprocessors; and also their lists of subprocessors that handle personal data.

While all this information is useful for people learning about GDPR, posting it publicly also allows companies to answer any questions their customers (or potential customers) might have in a scalable manner. Typically, SaaS providers will include at least the following content as part of explaining their GDPR compliance:

* Overview of GDPR, including what they’re doing to comply and help their customers comply.
* Data Processing Addendum/Amendment/Agreement (DPA) laying out their contractual relationships and liabilities with customers in the context of GDPR.
* A list of processors and/or subprocessors that process data on their behalf. This includes IaaS providers, support vendors and anyone else that stores or otherwise processes customers’ personal data.

If you’re a SaaS provider and want to add your information, or if you’ve come across some particularly useful information, please [drop us a line](mailto:grant.miller@replicated.com) or [make a pull request](https://github.com/enterpriseready/enterpriseready).

|   |   |   |
|---|---|---|
|  ![aws](/images/gdpr/aws.png)<center>[Overview](https://aws.amazon.com/compliance/gdpr-center/) · [DPA](https://eu-west-1.console.aws.amazon.com/console/dpa)</center><br/> | ![slack](/images/gdpr/slack.png) <center>[Overview](https://slack.com/gdpr) · [Subsprocessors](https://slack.com/slack-subprocessors) · [DPA](https://a.slack-edge.com/bed7/marketing/img/legal/pdf/slack_data_processing_addendum.pdf)</center><br/>  | ![g-suite](/images/gdpr/g-suite.png) <center>[Overview](https://cloud.google.com/security/gdpr/) · [Subprocessors](https://gsuite.google.com/intl/en/terms/subprocessors.html) · [DPA](https://gsuite.google.com/terms/dpa_terms.html) · [Model](https://support.google.com/a/answer/2888485?hl=en)</center>  |
|  ![ms office](/images/gdpr/ms-office.png)<center>[Overview](https://www.microsoft.com/en-us/TrustCenter/CloudServices/office365/GDPR) · [Subprocessors](https://aka.ms/Online_Serv_Subcontractor_List)</center><br/> | ![salesforce](/images/gdpr/salesforce.png)<center>[Overview](https://www.salesforce.com/gdpr/overview/) · [DPA](https://www.salesforce.com/content/dam/web/en_us/www/documents/data-processing-addendum.pdf)</center><br/>  | ![dropbox](/images/gdpr/dropbox.png)<center>[Overview](https://blogs.dropbox.com/business/2018/03/gdpr-accountability-principle/) · [Whitepaper](https://aem.dropbox.com/cms/content/dam/dropbox/www/en-us/security/privacy_data_protection_whitepaper.pdf) · [Journey](https://aem.dropbox.com/cms/content/dam/dropbox/www/en-us/security/dropbox_gdpr_compliance_journey.pdf) ·  [Guide](https://aem.dropbox.com/cms/content/dam/dropbox/go/en-us/gdpr-ebook/the-general-data-protection-regulation-ebook.pdf)</center>  |
| ![okta](/images/gdpr/okta.png)<center>[Subprocessors](https://www.okta.com/sites/default/files/SUBPROCESSORS_Public_facing_content_3-16-18_v2.pdf) · [DPA](https://www.okta.com/sites/default/files/OKTA-Data-Processing-Addendum_09-17.pdf)  | ![zendesk](/images/gdpr/zendesk.png)<center>[Overview](https://www.zendesk.com/company/customers-partners/eu-data-protection/#gdpr-sub) · [Subprocessors](https://www.zendesk.com/company/policies-procedures/subprocessors-subcontractors/)</center>  | ![mixpanel](/images/gdpr/mixpanel.png)<center>[Overview](https://mixpanel.com/blog/2017/12/21/gdpr-mixpanel-readiness/) · [DPA](https://mixpanel.com/dpa/) · [Subprocessors](https://mixpanel.app.box.com/s/plxlttoykp0zibtr95oldaqyvr1vr49i)</center>  |
| ![segment](/images/gdpr/segment.png)<center>[Overview](https://segment.com/blog/segment-and-the-gdpr/) · [Guide for compliance](https://segment.com/docs/guides/best-practices/preparing-for-the-gdpr/)</center>  | ![auth0](/images/gdpr/auth0.png)<center>[Overview](https://auth0.com/docs/compliance/gdpr) · [Subprocessors](https://cdn.auth0.com/website/legal/files/Auth0-Sub-processors.pdf) · [DPA](https://cdn.auth0.com/website/legal/files/Auth0-DPA.pdf)</center>  | ![linkedin](/images/gdpr/linkedin.png)<center>[Overview](https://www.linkedin.com/help/linkedin/answer/87076/linkedin-talent-solutions-and-the-general-data-protection-regulation-gdpr-?lang=en) · [Subprocessors](https://legal.linkedin.com/customer-subprocessors) · [DPA](https://legal.linkedin.com/dpa)</center>  |
| ![informatica](/images/gdpr/informatica.png)<center>[Subprocessors](https://www.informatica.com/legal/informatica-subprocessors.html) · [DPA](https://www.informatica.com/content/dam/informatica-com/global/amer/us/docs/legal/online-data-processing-agreement.pdf)</center>  | ![atlassian](/images/gdpr/atlassian.png)<center>[Overview](https://www.atlassian.com/blog/announcements/atlassian-and-gdpr-our-commitment-to-data-privacy) · [Subprocessors](https://www.atlassian.com/legal/sub-processors)</center>  | ![intercom](/images/gdpr/intercom.png)<center>[Overview](https://docs.intercom.com/pricing-privacy-and-terms/data-protection/how-were-preparing-for-gdpr) · [Data collection practices](https://docs.intercom.com/pricing-privacy-and-terms/data-protection/how-intercom-tracks-and-stores-data)</center>  |


## GDPR compliance in action
Apart from reading the documentation and legal content SaaS providers are preparing around GDPR, it can also be helpful to see some concrete examples. Here is how a handful of popular SaaS services are adding functionality and changing their terms of service to comply with GDPR, and how they’re communicating these changes to customers:

![intercom](/images/gdpr/intercom.png)
### Intercom is shortening the length of time for which it stores data on visitors to customers’ sites
>In preparation for the new EU General Data Protection Regulation (GDPR), we will now be **expiring Visitor data once a Visitor has not been seen for nine months**.

> This means that from **May 11th, 2018**:

> * We will automatically delete the IP and location of visitors who have not visited your site in 9 months.
> * If a visitor returns after 9 months they will be treated like a new visitor. There will be no record of previous visitor auto messages or conversations.

> This change only impacts Visitor data – all other data is unaffected. Note, while GDPR is an EU regulation, it ultimately affects any business with customers in the EU which is why we are applying these changes globally across our entire customer base.

![slack](/images/gdpr/slack.png)
### Slack has built tools for importing, exporting and deleting user data
> Customers have requested tools to help them comply with the GDPR. And we’re happy to say that we’ve built those tools.


> Compliance-related tools include the following:

> * [Import and export tools](https://get.slack.help/hc/en-us/articles/204897248-guide-to-slack-data-exports). Businesses and organizations may access, import, and export all their Customer Data, including private channels and direct messages.

> * [Profile deletion tool](https://get.slack.help/hc/en-us/articles/360000360443). Help customers respond to user requests to delete personal information, such as names and email addresses, from a Slack account.

> * [Workspace settings center](https://get.slack.help/hc/en-us/articles/360000355143). See your team’s plan and settings, or contact an admin who controls the workspace.

![segment](/images/gdpr/segment.png)
### Segment is building tools for deleting and suppressing user data
> To help you comply with user requests related to the [right to erasure](https://gdpr-info.eu/art-17-gdpr/) (the right to be forgotten), the [right to object](https://gdpr-info.eu/art-21-gdpr/) (the various rights to halt certain processing), and the [right to restrict processing](https://gdpr-info.eu/art-18-gdpr/) (the right to restriction), we are developing new capabilities that will be available to all Segment customers in early 2018:

> * Support for deletion requests: We are making it easy for you to honor requests related to the right to be forgotten by adding a new, secure endpoint to our existing [HTTP API](https://segment.com/docs/sources/server/http/): /delete. Issuing a /delete call for a given userId via this endpoint will ensure all personal data related to that userId is deleted from Segment's archives and your connected warehouses.

> * Automatic suppression: To help you comply with requests related to the right to object or restrict, any userId associated with a /delete call will automatically be placed on a suppression list. For any userId on the suppression list, we will block all incoming personal data pertaining to that userId from being tracked by Segment and sent to connected Destinations.

![ganalytics](/images/gdpr/ganalytics.png)
### Google Analytics is letting users set data-retention periods, adding data-deletion tools, and is enforcing new contracts and consent policies
> Over the past year we've shared how we are preparing to meet the requirements of the GDPR, the new data protection law coming into force on May 25, 2018. Today we are sharing more about important product changes that may impact your Google Analytics data, and other updates in preparation for the GDPR. This e-mail requires your attention and action even if your users are not based in the European Economic Area (EEA).


> **Product Updates**

> Today we introduced granular data retention controls that allow you to manage how long your user and event data is held on our servers. Starting May 25, 2018, user and event data will be retained according to these settings; Google Analytics will automatically delete user and event data that is older than the retention period you select. Note that these settings will not affect reports based on aggregated data.

> **Action: Please review these data retention settings and modify as needed.**

> Before May 25, we will also introduce a new user deletion tool that allows you to manage the deletion of all data associated with an individual user (e.g. site visitor) from your Google Analytics and/or Analytics 360 properties. This new automated tool will work based on any of the common identifiers sent to Analytics Client ID (i.e. standard Google Analytics first party cookie), User ID (if enabled), or App Instance ID (if using Google Analytics for Firebase). Details will be available on our Developers site shortly.

> As always, we remain committed to providing ways to safeguard your data. Google Analytics and Analytics 360 will continue to offer a number of other features and policies around data collection, use, and retention to assist you in safeguarding your data. For example, features for customizable cookie settings, privacy controls, data sharing settings, data deletion on account termination, and IP anonymization may prove useful as you evaluate the impact of the GDPR for your company’s unique situation and Analytics implementation.


> **Contract And User Consent Related Updates**

> **Contract changes**

> Google has been rolling out updates to our contractual terms for many products since last August, reflecting Google’s status as either data processor or data controller under the new law (see full classification of our Ads product). The new GDPR terms will supplement your current contract with Google and will come into force on May 25, 2018.

> In both Google Analytics and Analytics 360, Google operates as a processor of personal data that is handled in the service.

> * For Google Analytics clients based outside the EEA and all Analytics 360 customers, updated data processing terms are available for your review/acceptance in your accounts (Admin ➝ Account Settings).

> * For Google Analytics clients based in the EEA, updated data processing terms have already been included in your terms.

> * If you don’t contract with Google for your use of our measurement products, you should seek advice from the parties with whom you contract.

> **Updated EU User Consent Policy**

> Per our advertising features policy, both Google Analytics and Analytics 360 customers using advertising features must comply with Google’s EU User Consent Policy. Google's EU User Consent Policy is being updated to reflect new legal requirements of the GDPR. It sets out your responsibilities for making disclosures to, and obtaining consent from, end users of your sites and apps in the EEA.

> Action: Even if you are not based in the EEA, please consider together with your legal department or advisors, whether your business will be in scope of the GDPR when using Google Analytics and Analytics 360 and review/accept the updated data processing terms as well as define your path for compliance with the EU User Consent Policy.





## More reading
Convinced that GDPR will matter to your company and looking for some more guidance on how and where it might apply, or how other SaaS companies are thinking about it? You can check out some of our other pieces on this topic:

1. [What is GDPR and why should I care?](/gdpr/what-is-gdpr)
1. [GDPR 202: Controllers, processors and subjects’ rights](/gdpr/gdpr-202)
1. [How GDPR might affect the SaaS industry](/gdpr/gdpr-saas)
1. [How to read the full-text GDPR](/gdpr/how-to-read-gdpr)
1. [Other Useful GDPR Links](/gdpr/useful-gdpr-links)
