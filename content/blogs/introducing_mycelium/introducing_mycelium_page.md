*Lee is working on a very exciting new project called Mycelium, our own Ipv6 overlay network. Thanks to him for taking the time to create this short write-up on what it is and why it is needed.*

<br>

As part of the grid, ThreeFold is also implementing a planetary network. This peer 2 peer network implementation aims to allow efficient, end-to-end encrypted communication with other participants on the network. Currently, we are using Yggdrasil as the core technology for this network. This is an open source implementation, and we have been using this since of grid v2.

<br>

Over time, some problems have been noticed. We have since spent time looking into these issues, and performed an analysis of the root cause(s).

### Yggdrasil’s Limitations

To start, it should be noted that Yggdrasil is an experimental routing protocol (based on DHT’s), which is currently still in an alpha stage. We very much admire the fact that they have been able to create a standalone network with worldwide participants from scratch. Over time, the network has grown, in part due to the grid, but also because a lot of individual participants joined and started running a node.

<br>

After investigating, we reached the conclusion that the current architecture has some scalability issues. While we have no doubt that these will eventually be solved, the importance of the planetary network in the grid is unfortunately too big to be able to wait for this. Additionally, Yggdrasil uses a technique called crypto key routing, and uses a tree structure for its routing info. This means data follows the “shortest path” in the tree, rather than the physical shortest path, which might deviate from this. As such, we have decided to implement our own Ipv6 overlay network, Mycelium.

### Implementing Mycelium

As previously pointed out, the main goal of our network is to be efficient, and end-to-end encrypted. Every node in the network is identified by a key pair. The address of a node is derived from this key pair, and data traffic between 2 nodes is encrypted using a secret derived from the key pair of both these nodes. As a result, every 2 nodes in the system use a different secret for encryption, and we can verify that the address used by a node is indeed owned by it (i.e. it has the corresponding private key). We have based our initial implementation (loosely) on the babel routing protocol.

<br>

Therefore, sending data to a remote node will follow the shortest path in terms of latency (i.e. the fastest route). The network adjusts itself in case nodes disappear or join, and multiple paths to a given destination are possible.

<br>

We are also considering implementing more advanced use cases in the future, though this remains to be seen at this stage. We are gearing up for some larger scale testing on the grid in the near future (after all, we do have multiple thousand nodes at our disposal to verify scalability), and will adjust as needed once these are done.

<br>

*If you'd like to dive deeper, take a look at the Mycelium manual [here](https://threefoldfoundation.github.io/info_cloud_production/tfcloud/mycelium/mycelium.html).