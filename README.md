# GitHub Institution

Tools to manage teams across organizations.


## Why?

Because companies, foundations, etc. may have multiple GitHub
"organizations" that they manage teams of people across.

For example, Pivotal Cloud Foundry and the Cloud Foundry Foundation
cross over multiple organizations, each of which has a distinct
purpose that describes the code in the org's repositories:

* `cloudfoundry` - contains core parts of Cloud Foundry, as defined by the Foundation
* `cloudfoundry-incubator` - contains projects that may someday become core parts
* `pivotal-cf` - contains core parts of Pivotal's CF platform
* `pivotal-cf-experimental` - everything else

Pivotal has many teams (dozens, in fact) each of which may be
permissioned slightly differently (which may be a smell; but let's
talk about that over a beer).

Each of these teams has to be maintained in each of the
organizations. This is error-prone and labor-intensive, and over time
teams got out of synch across these orgs.


## So how will these tools help?

These tools encompass two new first-class concepts:

* an __institution__ that encompasses multiple organizations
* and a true __team__ that can be kept in synch across all of the institution's orgs


## How does it work?

Great question. Readme-Driven-Development, anyone?
