+++
date = "2017-01-28T00:00:00Z"
title = "Expensify Integrations"
featureslug = "Integrations"
type = "breakdown"
feature = "Integrations"
company = "expensify"
ogimage = "images/twtr/expensify-integrations-og.png"
metadescription = "A detailed analysis of the way that Expensify implements integrations in order to meet the needs of enterprises."
pagetitle = "Expensify Integrations - Enterprise Ready Feature Breakdown"

+++

Expensify is an expense reporting tool that started by targeting SMBs and startups, but has grown with its customers (which includes the likes of Uber, Square, Snapchat, Stripe, GitHub, Docker and Zendesk) into a nearly complete enterprise ready application.

## Product Assortment with Integrations
As part of its evolution, Expensify now integrates into a variety of accounting products. However, recognizing that those accounting products generally target different types of buyers, they've decided to create [product assortment](/features/product-assortment) by feature-gating various integrations.
![expensify integrations](/expensify/images/expensify-integrations.png)

The free tier allows individuals to use Expensify to organize their personal expenses before submitting through an antiquated enterprise solution. Each subsequent tier is designed to appeal to companies of differing sizes (generally, only large enterprises are using SAP & Oracle expense reporting solutions.) By visiting the integrations page, admins can see which tools their current plan is able to integrate with.

## Integration experience
Once signed in as an account admin, Expensify showcases the integrations that are available on its Connections screen. If a company gets started at a lower tier and then wants to integrate with a tool that is out of their plan, they're encouraged to upgrade.
![expensify integrations list](/expensify/images/integrations-list.png)
By clicking to integrate a premium application, the admin is instantly give the option to confirm the account upgrade to the level that enables this integration.
![expensify upgrade](/expensify/images/confirm-upgrade.png)

Assuming that the integration is available to the account, it appears that Expensify has implemented two different flows for doing the technical integration. For companies with open and well documented APIs, it appears that Expensify has simplified the integration process by enabling an auth flow for automated integration.
![expensify auto integrate](/expensify/images/auto-integrate.png)
For other applications that likely require more complex setup or integration configuration, Expensify pops a modal to connect with its support team to complete the integration.
![expensify auto integrate](/expensify/images/request-integration.png)

The team at Expnsify has done a great job of [documenting their integrations](https://docs.expensify.com/integrations) in a way that explains the benefits of the integration before it is implemented.


## Export Builder
Beyond these predefined integrations, Expensify allows it's customers to export their data out.
![expensify preview format](/expensify/images/create-export-format.png)

By creating an export format, the account admin can actually control the format (CSV, XLS, MS access) as well as the exact column headers and data format (by using a templating language.) This is an incredibly powerful too for customizing reports into formats that will work with existing systems and processes.
![expensify preview format](/expensify/images/preview-format.png)


## Integrations API
In addition to manual export, Expensify offers options to programmatically export data from their API. This functionality appears to only be available to their Enterprise customers (at some point Expensify stopped accepting new applications to be created for its platform.)
![expensify integrations api](/expensify/images/integrations-api.png)

They've continuously supported this option with detailed technical [documentation of the integration API](https://integrations.expensify.com/Integration-Server/doc/#export).
![expensify download api](/expensify/images/download-api.png)
