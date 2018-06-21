+++
date = "2016-10-25T00:00:00Z"
title = "Zendesk Change Management"
featureslug = "change-management"
type = "breakdown"
feature = "change management"
company = "zendesk"
ogimage = "images/twtr/zendesk-change-management-og.png"
metadescription = "A detailed analysis of the way that Zendesk implements sandboxes to create change management options in order to meet the needs of enterprise customers."
pagetitle = "Zendesk Sandboxes for Change Management - Enterprise Ready Feature Breakdown"

+++

Zendesk enables customers who purchase the enterprise plan to leverage their [Sandbox feature](https://support.zendesk.com/hc/en-us/articles/203661826-Testing-changes-in-your-sandbox-Enterprise-) for change management.

## The good
Admin users are all permissioned to access the new account automatically (though if you use some type of SSO for authentication you’ll need to use the reset password flow in order to login).

It is easy to create a sandbox environment from their UI. Just click a button and you can create a new environment or reset it back to its original settings.

![enter description here](https://i.imgur.com/hygO9YT.png)

## The mediocre
When you create a sandbox it copies several settings like agents, admins and branding to the sandbox account from the production account. However, the sandbox [doesn’t copy many other account settings over](https://support.zendesk.com/hc/en-us/community/posts/203423356-Replicating-your-config-on-your-sandbox). Instead you’re basically given a completely new account that still has many of its “original factory settings”.

## The bad
Despite many requests from customers, you [cannot deploy from sandbox to prod](https://support.zendesk.com/hc/en-us/community/posts/203424766-Deploy-from-Sandbox-to-Production). This means that any changes need to be manually tracked and then reimplemented in the production environment.

Currently, they [allow only 1 sandbox environment](https://support.zendesk.com/hc/en-us/community/posts/203451436-Allow-Multiple-Sandbox-Environments): which excludes different teams to test changes in parallel (ie engineering teams vs admin training).

There is an opportunity for Zendesk to enable some type of [detailed version control](https://support.zendesk.com/hc/en-us/community/posts/203444426-Help-Center-Version-Control) for content where users go through a content review before publishing.

Overall, Zendesk is one of the few companies that embraces change management requirements with any sort of productized feature. This sets them apart from many companies but the depth of the feature is still lacking.

*This was published on Nov. 22, 2016.*

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
{{< contributors username="marccampbell" >}}

{{< breakdown-request >}}
