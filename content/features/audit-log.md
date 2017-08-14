+++
date = "2016-10-25T00:00:00Z"
title = "Audit Logs"
featuresslug = "audit-logs"
type = "feature"
hero = "/images/audit-log.svg"
metadescription = "To gain significant enterprise adoption, SaaS applications need to implement audit logging of all user activity and make it accessible to account admins."
pagetitle = "Enterprise Ready SaaS App Guide to Audit Logging"
ogimage = "images/twtr/audit-log-og.png"
+++

Audit logs are the centralized stream of all user activity within a team. Part of the security and compliance program of any large enterprise is designed to control and monitor the access of information within the organization. This drives the need for enterprise buyers to ask for a detailed audit trail of all activity that happens within their account. An audit trail can be used to prevent suspicious activity when it starts (if actively monitored), or to play back account activity during an incident review.

## Audit logs ≠ system logs
It isn’t enough to log events internally to a traditional logging service like Loggly, Elastic Search, Papertrail etc. Those applications are designed to provide application developers with the system level logs to diagnose application performance issues. Instead, an audit logging feature is built from the ground up to log the relevant activity into a system that is immutable, time synced and accessible by account admins. Additionally, the best audit logs (as implemented by companies like GitHub and [Google](/google/audit-log)) are fully exportable, available from an API, searchable and include well documented changes.

## Events to audit log
The most basic audit logging functionality requires a clear understanding of which events should be recorded in the audit log. The ISO-27002 specifications provide some clarity about what enterprise customers will likely need to have logged. However, every application can be a bit different in terms of what activities should actually be logged for auditing.

Examples of events that should be audit logged are as follows: application specific user activities, exceptions, information security events (successful and rejected events), use of privileges, log-on failed-attempts & successes, log-off, data accessed, data attempted to be accessed, administrative configuration changes and the use of advanced privileges.

The best way to organize **events** is as the combination of **objects** receiving **actions** (i.e. `user.created`, `user.deleted`, `document.viewed`, `account.setting.updated`). Actions can generally be categorized into their `CRUD` type (i.e. `C`reate, `R`ead, `U`pdate, or `D`elete). Events are generally performed by an actor (i.e. a bob@somebigbank.com updated their password) however, there are anonymous actions (such as failed log in attempts).

*Note: When the logging of these events is implemented in code, the audit logging method should be called at the* ***bottom*** *of the function to ensure that the event was fully executed.*

## Fields to audit log for each event
When an event is logged it should have details that provide enough information about the event to provide the necessary context of who, what, when and where etc. Specifically, the follow fields are critical to an audit log:

- **Actor** - The username, uuid, API token name of the account taking the action.
- **Where** - IP address, device ID, country.
- **When** - The server time when the event happened.
- **Event Name** - Common name for the event that can be used to filter down to similar events.
- **Object** - the underlying resource that is being changed (the noun).
- **Action** - the way in which the object was changed (the verb).
- **Action Type** - the corresponding `C``R``U``D` category.
- **Description** - A human readable description of the action taken, sometimes includes links to other pages within the application.
### Optional information
- **Server** server ids or names, server location.
- **Version** version of the code that is sending the events.
- **Protocols** ie http vs https.
- **Global Actor ID** if a customer is using Single Sign On, it might be important to also include a Global UID if it differs from the application specific ID.

## Key functionality:
### Immutability
Data in an audit log should never change. Deleted objects should maintain a separately logged record of actions associated with the object (including its creation and deletion). External facing APIs should only be able to read the audit log, not write to it.

### Time Synced
Individual application audit logs will likely be combined with other audit log data, this makes it important to ensure that the timestamp on each event is accurate. The standard is to use the server time from a regularly [NTP synced server](https://labs.signalsciences.com/read-this-post-especially-if-you-dont-have-time), generally stored in GMT down to the millisecond.

### API & exportable
The activity should be exportable to a CSV format and API accessible so that it can be centralized into an organization wide SIEM logging system like Splunk. It's advisable to offer both the ability to poll for new events and to be able to push new events to the remote system. When polling, use standards such as `etag` headers to prevent duplicate events from being received. When pushing, use standards such as webhooks to minimize the amount of custom work required to ingest these events.

### Account admin viewable
An audit log viewer should be embedded into the application to make the audit log accessible to enterprise account admins at all times. This viewer should be the central place to access all account activity logs.

### Searchable & filterable
Events should be indexed for searchability and filtering. Generally, actors, event names, IPs are all linked to filter down to related activity. The viewer should allow the account admin to specify a date range to filter in conjunction with other filters and searches.

### Change log
When new events and actions are captured in the audit log, it is important to publish the date at which each became available to appear in the audit log.

### Customizable retention time
By default an audit log should generally be kept for 1-3 years. The specific default timeframe should be documented but also made configurable (generally shorter) for customers who have data retention requirements.

### Documented lag time
If there are significant lags between collection and reporting availability, those times should be made known to the account admin viewing the logs.

## Examples:
{{< example title="Google Audit Log" url="/google/audit-log" image="/google/images/example.png" >}}

{{< example title="Zendesk Audit Log" url="/zendesk/audit-log" image="/zendesk/images/example.png" >}}

{{< contributor >}}

----
{{< contributors username="grantmiller" >}}
{{< contributors username="marccampbell" >}}
