### Border Gateway Protocol :

Border Gateway Protocol (BGP) is a standardized exterior gateway protocol designed to exchange routing and reachability information among autonomous systems (AS) on the Internet. The Border Gateway Protocol makes routing decisions based on paths, network policies, or rule-sets configured by a network administrator and is involved in making core routing decisions.
The table below describes the order of rules applied during BGP decision process.

### BGP Decision Process :

| Priority | Attribute | How the attribute is used |
| --- | --- | --- |
| 1 | Local Preference | Highest Local preference |
| 2 | AS_Path | Shortest AS Path |
| 3 | Lowest origin Type | IG > EGP > incomplete |
| 4 | MED | Lowest MED Preferred |
| 5 | eBGP > iBGP | Routes learned over eBGP are preferred comapred to iBGP |
| 6 | IGP Path | Pick the path lowest IGP cost |
| 7 | Lowest Router IDs | Router id to break ties |

### Problem of Convergence :

As we could observe BGP decision process is a complex we limit this project to reduce BGP convergence time considering only AS_Path attribute. Based on AS_Path attribute there are 4 possible routing events.

* Route which was previously unavailable is available after a network repair.
* Route which is previously available is not available.
* Route which was previously available has an increased cost
* Route which was previously available has a decreased cost.

Whenever a BGP router receives one of the above annoucement for a path to a destination prefix, the router could change its routing information base based on this annoucement. After changing its routing information base, the router advertise
the changed route to its peers and this process goes on until every router reaches stable state.
