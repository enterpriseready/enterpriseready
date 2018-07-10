+++
date = "2016-10-25T00:00:00Z"
title = "Slack GDPR"
featureslug = "gdpr"
type = "gdpr"
feature = "GDPR"
company = "slack"
ogimage = "images/twtr/slack-gdpr.png"
metadescription = "A detailed analysis of the way Slack complies with GDRP"
pagetitle = "Slack GDRP - Enterprise Ready Feature Breakdown"
+++

Slack was quite proactive in preparing for the European Commission’s enactment of the General Data Protection Regulation (GDPR), seemingly doing everything that is required to comply with the law and also to inform customers about how Slack will help them comply. This is includes table-stakes efforts such as [creating a dedicated GDPR website](https://slack.com/gdpr) and entering into Data Processing Addenda with both its [customers](https://slack.com/terms-of-service/data-processing) and its [vendors](https://drive.google.com/file/d/0B4mt2A8B7ieFaDV6bTg5S1ZCRWc/view).

In order to reassure customers that their data will be safe with Slack, and that their use of Slack complies with GDPR guidelines, Slack also uses its GDPR website to [highlight its security certifications and practices](https://slack.com/security), as well as [its certification](https://slack.com/privacy-shield-notice) under both the EU-US Privacy Shield and Swiss-US Privacy Shield frameworks. The idea here is to let users know that they should be largely free of any potential GDPR violations resulting from their usage of Slack, because Slack is doing everything it can to ensure that personal data is protected.

However, Slack also goes an extra step by pointing users to tools and features in the product that will help them comply with GDPR requirements around data management:

- Import and export tools
- Profile deletion tool
- Workspace settings center

In terms of GDPR, the profile deletion tool is probably the most directly related and also the most interesting. It allows members (or former members) of corporate Slack channels to request that their information be deleted from that company’s account, per GDPR requirements around deletion of personal data should a subject request it. If a data subject can’t reach their Slack administrator, they can also reach out to Slack directly.

![Slack GDPR Deletion](/slack/images/gdpr/slack-deletion.jpg)

Notably, though, while Slack will delete data related to a user’s profile, it will not delete that user’s activity in the channel. This might seem like an incomplete approach to data deletion, Slack explains that messages, posts and mentions will remain so as to not break the product for other users. Additionally, Slack might be required to save that type of data for legal purposes, and the GDPR allows continued processing of data for that reason.

If there’s one area where Slack appears to be missing the mark on GDPR compliance, it is with its [list of subprocessors](https://slack.com/slack-subprocessors) (i.e., other vendors that Slack uses to process personal data). Although this is an issue not applicable to Slack alone, it seems unlikely the company is only processing personal data with a total of five other vendors. The tools listed on their [StackShare page](https://stackshare.io/slack/slack) also include Google Analytics, Respondly, Fastly etc, maybe they aren’t using these tools any longer or maybe they just have a different definition of processing personal data.

![Slack GDPR Subprocessors](/slack/images/gdpr/slack-subprocessors.jpg)

While this might be accurate with regard to Slack’s role as a data processor on behalf of customers, Slack also acts as a controller of personal that it collects for billing, sales and other business purposes. In this role, one can assume Slack might utilize vendors such as Google (G Suite), Salesforce, Stripe and other business software that process personal data.


*This was published on Jul. 10, 2018.*

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}

{{< breakdown-request >}}
