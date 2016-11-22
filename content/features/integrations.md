+++
date = "2016-10-25T00:00:00Z"
title = "Integrations"
featureslug = "integrations"
type = "feature"
hero = "/images/integrations.svg"
metadescription = "A guide for SaaS products to meet their enterprise customers' needs to integrate their application with a broad suite of applications."
pagetitle = "Enterprise Ready SaaS App Guide to Integrations"
ogimage = "images/twtr/integrations-og.png"
contributor = "Segment"
contributorurl = "https://www.segment.com"
+++

{{< note >}}
This feature guide was contributed by the team at [<img src="/images/segment_logo@2x.png" width="110" height="23"  style="vertical-align:-5px"/>](https://www.segment.com) based on their experience of integrating over 180 different SaaS applications with their product.
{{< note >}}

Enterprises are complex entities composed of a variety of teams and the applications they like to use. These applications generate valuable business data that, when sent to other tools or combined with other data, is far more useful. For these enterprises to reduce organizational communication overhead and maintain business agility, it’s integral for those applications to be able to work together.

The value proposition of these application SaaS companies to get critical data in and out have been increasingly clear for enterprises. While having a well-documented API is an important foundation necessary for achieving interoperability, the easier it is for users to get the data they need where they need it, the more adoption you’ll achieve.

## At the most basic level

**Export** - This is the most basic way for enterprise users to access the raw data they need so that they can analyze it on their own, import it into another tool, or ease concerns around vendor lock-in. Exporting data can be self-service (where the user presses a button in your application) or manual (where the user emails your support staff for them to retrieve and provide the data).  

**API** - Providing a publicly accessible endpoint for any end user to query and retrieve data allows for further flexibility. Many enterprises have complex needs and oftentimes leverage SaaS tools within a specific workflow. An easy access API is valuable in that enterprises can build their own solutions with the data in your service.  

API access is also important if your service benefits from receiving data from other services. Making it as easy as possible for end users to get the most value out of your service is critical.

**Webhook notification** -  Webhooks is similar to an API in that they can be easily incorporated into other workflows. However, these notifications typically reflect the important events in your application, e.g. something stopped working, or data is longer being sent. While in app notifications are great, providing those same notifications via outbound webhooks allows users to integrate your service into their collaboration tools such as Slack.

## Advanced functionality

The more advanced functionalities around providing integrations for enterprises reflects the unique ways larger teams use SaaS solutions and the data they generate.

**Admin control over integrations** - Like any other enterprise SaaS solution that serves a variety of users, providing granular [role based access control](/features/role-based-access-control/) for enabling integrations. Not all users need to be able to enable or disable integrations for your tool, so allow their admin to set the proper permissions for their team.

**Enabled integrations tied to the right “object”** -  The enabled integration should be tied to the right object depending on your service. In most cases, the integration should be tied to the user’s organization, a specific “project”, or “workspace” in your service. Suppose that integration is tied to the user, if the user removes her account, then the enabled integration would no longer serve the needs of the larger organization or project.

**Discoverability of integrations** - Thinking holistically about how users will interact with your service will help identify the most reasonable places in their flow to remind them of your available integrations. This can be during the setup and onboarding flow, or have it’s own section in your documentation, or even embedded in your partners’ onboarding.

**Ease of use** - Enterprises value time and will typically prefer enabling integrations with a few mouse clicks than having to talk to a human or download a raw .csv file. Understanding which services your users need your data in and making that data flow as frictionless as possible will dramatically increase the value of your service.

**Building strategic integrations** - However, to increase both the value of your service and your user base, it helps to identify the main tools or applications your target end users use and building integrations directly with them. Additionally, it helps to build connectors to the most popular tools, such as Slack, Zapier, or Amazon Redshift.

## Examples:

{{< example title="Segment Integrations" url="/segment/integrations" image="/segment/images/integrations.png" >}}
