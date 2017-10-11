## Logically Centralized Border Gateway Protocol

This project aims to reduce the convergence time of BGP which is currently in order of minutes. Even though latencies of routers during routing is in order of milli seconds , convergence is in order of minutes due to unexpected link delays and distributed nature of BGP. We try to solve this problem by simulating the routing traffic in a virtual enviroment with higher resources (compute, network). Since link delays are lower and deterministic we obtain faster convergence. The new routing information learnt in virtual environment is used by the routers to update their routing tables.

[BGP Protocol and Problem of convergence](bgp.md).

[Resources](resources.md).
