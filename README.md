# GitHub League

Tools to manage teams across organizations.


## Why?

Because companies, foundations, etc. may have multiple GitHub
"organizations" that they manage teams of people across.

For example, Pivotal Cloud Foundry and the Cloud Foundry Foundation
are comprised of multiple organizations, each of which has a distinct
purpose that describes the code in the org's repositories:

* `cloudfoundry` - contains core parts of Cloud Foundry, as defined by the Foundation
* `cloudfoundry-incubator` - contains projects that may someday become core parts
* `pivotal-cf` - contains core parts of Pivotal's CF platform
* `pivotal-cf-experimental` - everything else

Pivotal has many teams (dozens, in fact) each of which may be
permissioned slightly differently, and may actually have different
members, depending on whether the person is a Pivotal employee or not.

Each of these teams has to be maintained in each of the
organizations. This is error-prone and labor-intensive, and over time
teams got out of synch across these orgs.


## So how will these tools help?

These tools encompass two new first-class concepts:

* a `league` that encompasses multiple organizations
* and a `squad` that can be kept in synch across all of the league's orgs, taking into account each person's organization memberships.


## How does it work?

Great question. Readme-Driven-Development, anyone?


## Backlog

- As a github user
  - I should be able to authenticate with github

- As a github organization administrator
  - I should be able to see all my organizations
  - I should be able to create a league that has-many orgs
  - I should be able to see all teams in my organizations
  - I should be able to create a squad which has-many teams, with the limitation that it can be linked with at most one team from each org
  - I should be able to view an exception report which includes:
    - squad name inconsistencies
    - squad membership inconsistencies
    - squad members who are not members of all organizations
