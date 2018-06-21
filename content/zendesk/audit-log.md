+++
date = "2016-10-25T00:00:00Z"
title = "Zendesk Audit Log"
featureslug = "audit-log"
type = "breakdown"
feature = "audit logs"
company = "zendesk"
ogimage = "images/twtr/zendesk-audit-log-og.png"
metadescription = "A detailed analysis of the way that Zendesk implements an audit log of the account activity in order to meet the needs of enterprise security teams."
pagetitle = "Zendesk Audit Log - Enterprise Ready Feature Breakdown"

+++

The [Zendesk audit log](https://support.zendesk.com/hc/en-us/articles/203663196-Viewing-the-Audit-log-for-changes-Enterprise-) is available only to Enterprise level customers. It includes the basic audit logging features in that it tracks Who, What, When and Where. However, it lacks many of the features that make audit logs a critical enterprise ready feature.

![enter description here](https://i.imgur.com/yw9iVHO.png)

## The Good:
### Retroactive Audit Record
The first thing you’ll notice if you enable it for an active account is that it does have a historical record of the audit events from the accounts inception (no matter what account type you started with). This can be useful if you need to enable the audit log after the fact for an incident analysis or post mortem.

### Available from the API
Zendesk does maintain a [well documented](https://developer.zendesk.com/rest_api/docs/core/audit_logs) and easy to access API for the audit trail activity, which makes it easy to pull out data into external systems. The ticket level audit trail is also [available from their API](https://developer.zendesk.com/rest_api/docs/core/ticket_audits).

![enter description here](https://i.imgur.com/lNrKEIU.png)

## The Mediocre
### Filtering
Zendesk has implemented some basic filtering into their audit trail. When you’re looking at an audit trail you can click on a month, actor, event, IP address or item to filter down to only matching events. However, this rudimentary filtering [limits the user to filtering](https://support.zendesk.com/hc/en-us/community/posts/204142156-Search-Audit-Log) only to the months, actors and items immediately on the screen.

![enter description here](https://i.imgur.com/W71bCzC.png)

### Light on Audited Events
As you look at the activity that is audited, there isn’t a ton of high value information as a very limited number of admin activities are actually logged. It is noticeably missing most agent actions including logins, account views, agent interactions etc.

### Lack of Exactness
Zendesk provides event times down the second. Most audit logs provide event times down to the millisecond which can be helpful in avoiding sequencing collisions if you’re combining multiple audit logs together. In reality, the low number of audited events will decrease the impact of this oversight but that doesn’t excuse it entirely. Additionally, it isn’t immediately clear what timezone these events are being shown in (unless you use the API).

## The Bad:
### Deletable Ticket Audit Trail
Zendesk claims to include an [audit trail of the ticket activity](https://support.zendesk.com/hc/en-us/articles/203691176) within the tickets themselves. The major problem here is that these tickets can be deleted and along with it, its audit trail. Hence, ticket audit trails are not immutable. This is a big gap (though something they [plan to fix](https://support.zendesk.com/hc/en-us/community/posts/203432386)). It doesn’t look like the primary audit trail can be altered (API is read-only), but it doesn’t seem to be provably immutable either.

| Ticket Level Audit Log | Deleted Ticket Level Audit Log |
| ---------------------- | ------------------------------ |
| ![enter description here](https://i.imgur.com/wMOrTFS.png) | ![enter description here](https://i.imgur.com/xmemmYK.png) |

### Not exportable
As mentioned earlier there is an API for the audit trail, but it isn’t available to be exported. This is generally a fairly simple feature that can take some pressure off of the need to do advanced searching and filtering in the UI.

### Not Centralized
Ticket level audit events are not captured in the primary audit trail making it very hard to get a clear picture of the complete activity in an account.

*This was published on Nov. 22, 2016.*

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
{{< contributors username="qaid" >}}
{{< contributors username="marccampbell" >}}

{{< breakdown-request >}}
