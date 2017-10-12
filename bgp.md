### Border Gateway Protocol :

Border Gateway Protocol (BGP) is a standardized exterior gateway protocol designed to exchange routing and reachability information among autonomous systems (AS) on the Internet. The Border Gateway Protocol makes routing decisions based on paths, network policies, or rule-sets configured by a network administrator and is involved in making core routing decisions.
The table below describes the order of routing decisions applied during BGP decision process.

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

As we could observe BGP decision process is complex. We try to understand problem of convergence considering only AS_Path attribute. AS_path attribute of already advertized route could be changed by 4 possible routing events

* Route which was previously unavailable is available after a network repair.
* Route which was previously available is not available.
* Route which was previously available has an increased cost
* Route which was previously available has a decreased cost.

Whenever a BGP router receives one of the above annoucement for a path to a destination prefix, router completes BGP decision process with including the new information recieved via announcement. If there is any change in its routing table, that new information is sent to its peers. This process continues until every router reaches a stable state. Theorotically this might result in exchange of O(n-1)! messages between the routers until every router reaches a stable state. This problem is reduced to MRAI_time * O(n) by using bundling updates at regular intervals using MRAI timers. Given the scale of internet, O(n) is really big .MRAI time could be reduced to smaller values if the networking resouces are high.

MRAI - Minimum Route Advertisement Interval






