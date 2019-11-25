+++
date = "2016-10-25T00:00:00Z"
title = "Segment Integrations"
featureslug = "integrations"
type = "breakdown"
feature = "integrations"
company = "segment"
contributor = "Segment"
contributorurl = "https://www.segment.com"
ogimage = "images/twtr/segment-integrations-og.png"
metadescription = "A detailed analysis of the way that Segment implements integrations in order to meet the needs of enterprises."
pagetitle = "Segment Integrations - Enterprise Ready Feature Breakdown"

+++

Segment is an enterprise SaaS solution that helps companies simplify their analytics. In 2011, the founders came across an engineering pain of writing redundant tracking code to send customer behavioral events to Google Analytics, MixPanel, and KISSmetrics. A few months later, [analytics.js](https://github.com/segmentio/analytics.js), an analytics wrapper library, was conceived.

It became evident the value of having the same, consistent customer data across all the tools that rely on them. Now, Segment supports over [200 different marketing and analytics tools](https://segment.com/catalog/#integrations/all), as well as data warehousing services such as [Redshift](https://segment.com/warehouses/redshift/) and [BigQuery](https://segment.com/warehouses/bigquery/).

![Integrations on Segment's platform](/segment/images/integrations.png)

In an effort to capture the entire customer journey, Segment launched [Sources](https://segment.com/sources/), which pulls data from third-party cloud apps, such as Zendesk, Stripe, and Salesforce, into your data warehouse. This allows their customers to query and create custom reports across the customer journey—talking to your support team, clicking on a Facebook display ad,  reading your blog—which provides a rich and detailed analysis of your users.

The Segment team understands the value that each additional integration provides their customers and have a [pricing plan](https://segment.com/pricing/) that reflects that philosophy. Although the downstream integrations are unlimited, pricing differs based on the number of Sources enabled.

![Segment's pricing plan](/segment/images/pricing.png)

## Accessing Raw Data

Segment had always allowed customers to have access to their raw data. The most popular way would be using the outbound webhooks API to receive the data in real-time from Segment's source libraries. Customers have used this webhook to build their own integrations on Segment's platform.

Segment also provides raw access to the data with it's [Amazon S3](https://segment.com/integrations/amazon-s3) integration. Customers can add their credentials to the Amazon S3 integration in Segment and begin receiving raw data there.

## Admin control

Segment currently does not allow for different user types to have different privileges around enabling or disabling data control.

## Ease of use

The majority of the tools on Segment's platform are there to receive data from Segment. As such, it was important to the team to make it as easy as possible to route data from Segment to any tool, or even to collect data from any third-party cloud app to Segment.

All Segment needs is the key credentials from the end tool to begin sending data to or collecting data from that tool.

![Enabling Mixpanel](/segment/images/demo-mixpanel.gif)

Making integration enablement as easy as possible really helped Segment's customers get started with minimal friction.

## Building Strategic integrations

Segment treats integrations with a strategic approach, choosing to focus most of the time and effort on partners that can help drive awareness and adoption. The goal is to leverage the partner's marketing efforts.

*This was published on Nov. 22, 2016.*

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
{{< contributors username="lambtron" >}}

{{< breakdown-request >}}
