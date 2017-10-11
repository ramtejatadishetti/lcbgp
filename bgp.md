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


