---
id: building_a_new_internet_from_the_ground_up_pt2
title: "Building a New Internet From the Ground Up – Part 2: Storage"
tags: [threefold_grid,technology,peer_to_peer]
category: [foundation,farming,cloud]
image: ./building_a_new_internet_2.png
image_caption: The ThreeFold Grid Peer-to-Peer Technology
excerpt: Part two of an approachable series on the inner workings of the ThreeFold Grid. This time, storage
authors: [scott_yeager]
created: 2021-07-28
---

Welcome back for the second part of this introductory series on ThreeFold Grid technology. [Last time](https://threefold.io/blog/post/an_intro_to_the_threefold_grid/) we took a high level view of all that the Grid offers. This time, we'll be zooming in on storage, covering the low level components and how they can provide a familiar experience like the cloud "drives" and "boxes" we use today.
<br/>
<br/>
The ThreeFold Grid offers several different storage primitives that can be combined in various ways to meet the needs of developers and end users of Grid capacity. Ultimately, all storage services are a way of presenting the underlying hardware to software workloads in various ways, according to the desired features. ThreeFold has created a few unique storage offerings, providing distinct benefits over legacy cloud infrastructure. From the start, every component has been designed for optimal efficiency and they work together to offer an unprecedented level of security.
<br/>
<br/>
Our most basic storage primitive is a "volume", which simply offers some disk space to an application in a generic way. We'll focus more on the innovative solutions that are built on the Zero Database, or Zdb. These are compatible with existing use cases but also represent a quantum leap forward for privacy and security. They are called Zdbfs, Zstor, and QSFS. Let's take a look at each component and how they work together to provide a complete set of tools for developers building on the Grid. We'll also see why this matters to end users of services that are hosted on the Grid.

## Zdb

Zdb is a low level offering that implements with a subset of features from the popular Redis protocol. It is a key-value store, which means that information is indexed like a dictionary. Each "word" in the database is associated with a "definition" or piece of data. Zdb is super fast and efficient, along with operating in an "append only" manner. This means that all new data is added to empty space following the end of existing data, never overwritten. It's like writing in pen on paper without leaving any white space.
<br/>
<br/>
Append only has many advantages, including extending the life of certain hardware and offering archiving features out of the box. The disadvantage, of course, is that old data is retained even when no longer needed. However, this can be addressed by periodically "compacting" the data, to remove what's no longer needed and restructure what remains with the same level of efficiency. We use Zdb as a base layer for more complex storage implementations that benefit from these features.

## Zdbfs

While Zdb has all of those neat properties, it requires that applications utilize a specific database interface. To expand its capabilities, we have the Zdb Filesystem. With Zdbfs, the back end Zdb is exposed through the most common interface used for storing and retrieving data: a filesystem. This is the same format we're all familiar with from the file explorers on our computers. When running Zdbfs, a new "folder" appears on the system, allowing reading and writing to the connected Zdb without any concern for the underlying database. With Zdbfs, nearly all existing tools for working with data can be plugged in to and benefit from the advantages of Zdb.

## Zstor

So far, we've been discussing solutions that utilize storage space on a single node only. While this offers flexibility for developers with a variety of needs, it is also limited in the sense that the failure of a single node would result in the loss of all data. With that in mind, we offer the Zstor solution for spreading data across multiple nodes in a way that provides both resilience against failures and unprecedented security.
<br/>
<br/>
Zstor takes a single file as input, to be stored among a number of nodes as specified in its configuration. The system is flexible and able to cater to different needs for performance, redundancy, and geographical distribution. Understanding what happens behind the scenes requires a little math, but I'll provide as simple an explanation as I can. Zstor has a very unique property: it does not actually upload any of the user's data to the back end nodes, but it is able to reconstruct the data later based on the descriptive information that is stored.

### The magic of erasure encoding

Sounds like magic? Well, let's explore briefly how this is possible. Zstor relies on a technology known as erasure encoding, which was originally designed to protect data against errors that sometimes occur in the normal operation of computer hardware. Rather than simply making copies of the data as backups, a clever scheme is used to efficiently offer the same benefit. With basic redundancy, four extra copies would be needed to accommodate four failures without a loss of data. Erasure encoding can accomplish the same failure tolerance using less than half the space needed for the original data.
<br/>
<br/>
While erasure encoding can be implemented by storing the data itself along with some extra data known as "parity", it can also be implemented without storing the original data at all. As a simplified example, let's say that we want to store the number 13. First, we take each digit individually, 1 and 3. Next, we calculate 1 + 3 = 4 and 3 - 1 = 2. By storing 4 and 2, along with the instructions to reverse these calculations, we have everything needed to get back to 13. If we add one more equation, say 1 - 3 = -2, we can restore the original data using any two of the numbers we've computed.
<br/>
<br/>
Each of our values would be stored on separate nodes, while the instructions to recombine them would be stored in yet another location. If an attacker were to compromise one of these nodes, they would only have a number that's meaningless without the other elements. If a single node fails, the original data can be restored using the remaining nodes, and we can add a new node to bring us back to our desired state. By tuning these values, additional security or redundancy can be achieved. We might decide that we want 9 of 10 values to be present for reconstruction, representing a high level of security. Alternatively, a 2 of 10 arrangement would provide high redundancy, tolerating the failure of 8 nodes.

## Quantum Safe Filesystem

With all of these components working together, we have ThreeFold's flagship storage solution, the Quantum Safe Filesystem or QSFS. It uses Zstor to backup data written to a Zdbfs. This provides the convenient and highly compatible filesystem interface along with the exceptional security and redundancy benefits of Zstor. We call it quantum safe, because even an attacker with a quantum computer would not be able to decode users' data, if they managed to hack into one of the back end nodes—already an extraordinary feat given the exceptional security of Zero OS.

## Bringing it home

So, we've toured a good bit of technology which might be feeling a bit abstract at this point. Bringing this home, our front end experience with these technologies can feel no different than any of the "drives" and "boxes" we use to store our files in the cloud. In fact, ThreeFold has already developed a prototype file browser based on QSFS which has many cool features like editing documents and viewing media directly in the web interface. It's one piece of a full suite of solutions we're excited to showcase and invite the community to test soon.
<br/>
<br/>
I hope you found this piece informative and approachable. Thanks for joining me to learn and explore the wonderful world of ThreeFold technology. We'll cover more aspects of what makes it all tick in future parts of this series. Do you have questions or feel like chatting about what's possible with ThreeFold's technology? We'd love to hear from you on [our forum](https://forum.threefold.io) or in [our Telegram group](https://t.me/threefold).
