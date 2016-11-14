+++
date = "2016-10-25T00:00:00Z"
title = "Team Management"
featureslug = "teams"
type = "feature"
hero = "/images/teams.svg"
+++

Teams describes the functionality that enables modern software to be collaborative and managed. Through Teams, app users invite others to collaboratively use the application with them by creating or linking an account. Apps that don’t have team functionality often require password sharing for multiple users to access the account, which is an obvious security hurdle for most business users.

The fact that it needs to be included as a critical, EnterpriseReady feature underscores the importance of consumer software with enterprise users (see Gmail, Dropbox, Evernote, 1Password). (Side note: Apps that start with a broad consumer reach have to evaluate the best way to introduce teams functionality: [user-centric vs team-centric](/blog/user-centric-v-team-centric).)

## Key product elements for teams feature:
**Create** - during signup a team/organization is created & named by the initial user.  
**Invite** - emails sent to users to invite them to the team. There are interesting trends around automatically assigning all accounts with domain associated email addresses to a primary team.  
**List** - users should be able to view the team, see pending invites and resend invitations.  
**Remove** - users can be removed from teams and logged out of current sessions.  
**Resource discovery** - users can find other users and resources created by those users easily.  
**Profiles** - each user has a profile that lists the resources they’ve created or contributed to.  

## Advanced features for teams:
**Private resources** - Allow users to create resources that aren’t shared with the rest of the team, or potentially only shared with a subset of the team.  
**Ownership** - resources are created by a single user and then shared with others. Ownership of a resource can be transferred to another user, including the bulk transfer of all owned resources when a user is deleted.  
**Comments** - users can add context, details or ask questions within a resource.  
**Live revisions** - For collaborative applications there is a chance that users might be making updates to the same resource at the same time. Technologies like EventSource or WebSockets can be leveraged to instantly show changes to other team members without a page refresh.  
**Roles & permissions** - [Role based access control](/features/role-based-access-control) is a core feature of EnterpriseReady.  
**API tokens** - if you have an API, you’ll need to generate named API tokens for varying use cases.  
**Sub-teams** - for large companies a single team would become too unwieldy. Instead, these enterprises will require that they can create a federated account of multiple teams with different settings (but likely unified billing) for each.  


## Examples:
<DIV style="float:left">
<a href="/asana/teams"><img src="/asana/images/example.png" width="300px" align="left" style="margin:0;"/></a>
<DIV class="clearfix"></DIV>
### [Asana Team Management](/asana/teams)
</DIV>

<DIV style="float:left">
<a href="/heroku/teams"><img src="/heroku/images/example.png" width="300px" align="left" style="margin:0;"/></a>
<DIV class="clearfix"></DIV>
### [Heroku Team Management](/heroku/teams)
</DIV>
