---
id: interview_with_jimber
title: Interview – Designing Solutions for a P2P Future
tags: [peer_to_peer, threefold_grid, technology]
category: [farming, threefold_grid, threefold_token, foundation]
image: ./interview_with_jimber.png
image_caption: interview with jimber
excerpt: An interview with Jonas Delrue from Jimber, the team developing P2P solutions like video chat and office workspace, using the Digital Twin platform. Digital Twin is a use case on top of the ThreeFold Grid.
authors: [scott_yeager]
created: 2021-08-26
---

Earlier this month, I met with Jonas Delrue from Jimber, the team developing P2P solutions like video chat, office workspace, isolated web browser, and messaging, using the Digital Twin platform. Digital Twin is a use case on top of the ThreeFold Grid. We talked about the technical hurdles and motivations for developing private, decentralized, and open source alternatives to popular products from major corporations.
<br/>
<br/>
*The following has been edited lightly for clarity and flow.*
<br/>
<br/>
I'm wondering about this video chat solution that we're using for the interview right now. Building reliable video conferencing took a long time for the industry to get right, as far as I understand, and this seems very comparable in performance to Zoom. What did it take to produce this, what challenges came up, and what open source components are you using?
<br/>
<br/>
*Yes, the solution is fully open source, using Janus as a back end which is a signaling and MTU server that handles all the traffic. But the main reason why we created our own solution is because we want to deploy the solution on the ThreeFold Grid and make a really decentralized video application. So everyone can start their own video room and the data will only be shared between the members of the room, instead of going through Zoom.*
<br/>
<br/>
*The reasons for this have become very clear in the latest developments at Zoom where they had the lawsuits for end-to-end encryption. So something that our solution will offer is not only end-to-end encryption but also the traffic won't go through central points – so there's no way for us to eavesdrop on any of the conversations as a company since we're not included in the process. So that's the main reason that we created this one.*
<br/>
<br/>
Very cool. I know for Zoom free accounts, all traffic is routed through servers in the United States which also has performance implications for anyone in other parts of the world. You have this big transatlantic hop back and forth for people talking to each other in different parts of Europe, for example, which could create lag or dropouts. And of course, the privacy feature is super important, because if we're using Zoom or any other centralized service it's a black box. They say your connections are end-to-end encrypted, but there's no way to verify that without open source code and self hosting.
<br/>
<br/>
*Yep, so what we offer is fully open source, and using the Digital Twin platform you'll be able to start your own solutions, so it's fully in your own hands.*
<br/>
<br/>
Do you know what kind of resources are required to run the video chat server?
<br/>
<br/>
*The CPU and memory usage on the server is very low, but bit rate depends on how good your connection is and how high quality you want to use. Right now we have some default quality but we will be able to make that configurable, so you'll be able to choose how much data that you want to consume during your conversation, which will of course imply a better or a worse resolution and experience.*
<br/>
<br/>
Totally. I've heard that we should be able to host many Digital Twins on a single node. I'm curious of your thoughts on that. How many Digital Twins do you think we could run on a single Titan node or server in a rack?
<br/>
<br/>
*That's a hard one. I'd have to check for real numbers on the current implementation, but the thing is that there's not really a hard limit, as long as you keep improving your software and making it more efficient, making it more suitable to the scaling case. Right now in centralized systems this mostly is not a concern, but if you make it more suitable to self hosting and the digital twin scenario, then we should be able to get really far on that.*
<br/>
<br/>  
*It's going to take some effort and time to improve it and to make it better so the usage goes down, while the hardware also gets better so it's two ways. I think in the long run we should be able to host really lots and lots of Digital Twins on one single node. It also depends on what you're doing on the Digital Twins, if everyone is doing video conversations it will of course have more consumption than if everyone is just chatting in text.*
<br/>
<br/>
There's a good number of features here in video chat already like the background replace and some others I was impressed to see already during my testing. Of course Zoom has many more features like hosting these large conferences, breakout groups, allowing people to raise their hand digitally. I'm wondering what features are on the road map for this solution and what should we expect to see coming next?
<br/>
<br/>
*Raising hands is one of the things that we're developing now, but we're mostly doing improvements at the back end so we can get a more efficient solution and a solution that is better suited to the decentralized way of working. Now, we don't have the size of team that Zoom has of course at this point, so we're a bit slower in releasing new features. We do have a list of things that we want to implement in the near future. Things like waiting rooms and all the stuff that you came up with, they're on the road map but not for the very short term since right now we're really focusing on getting this thing working in a decentralized way on the Grid.*
<br/>
<br/>
That makes sense. And what is the status of that? Are we using the Grid right now, or is this a staging server?
<br/>
<br/>
*This is a production server of Jimber. We use this one to talk to our employees, so for internal calls, and we're also using it to talk to clients. We've been using it for over six months without any problems so it's really production ready, but this version is not running on the Grid right now. We do have deployments on the Grid that work perfectly.*
<br/>
<br/>
Good to know. Is that something that someone with the proper amount of knowledge and motivation could test for themselves already, running the solution on the Grid?
<br/>
<br/>
*Yeah, they should be able to. It might be that they still need a little bit of help from the technical team, but it should be doable, yes.*
<br/>
<br/>
Cool, I'll put that on my list of things to try out. So that's video chat. Do you see any challenges arising from quirks of the Grid in implementing any features or scaling things up to a certain level. Is there anything that's tricky about moving something like this onto the Grid?
<br/>
<br/>
*It's more about the Digital Twin than the meeting solution itself. Right now we're really working on getting the Digital Twin able to launch for a single person, so we're checking out how we'll do the deployments, the payment flow, things like that.*
<br/>
<br/>   
*So for us, that's the challenge right now, but in the long run it's probably going to be scaling, being sure that the Digital Twin runs close enough to the person actually using it, being sure that the interaction between Digital Twins is really fast and with low latency. Things like that will of course be a huge challenge, and also keeping everything private, making sure that everything is secure is also a bit challenging.*
<br/>
<br/>   
*Another big challenge is that users are not used to a decentralized environment. So if you lose your seed phrase or in some way destroy your own Digital Twin, it's decentralized so we can't access it. There isn't a company that can just look into the big system and fix it for you. You are a bit responsible for your own system so that's also a bit of a challenge. So to get users informed and make software that's really easy for them, where they can't mess things up, and where users can give us enough logs when something goes wrong to help them in a decentralized way.*
<br/>
<br/>
For sure, I know that's a big concern around our VDC solution as well. You onboard someone into the system and they need to take responsibility for their own data and deployments. I think that's a huge issue across this space right, you want to give people the power but they also need to be able to take the responsibility. We'll see how that goes, as users start to come onboard and what kinds of challenges they run into.
<br/>
<br/>
*Yeah, that's going to be the fun part, once users really start onboarding and start using everything. It's mostly a stressful situation at first if you launch a new product, but we're going to be starting off with a beta version so we don't get too much ahead of ourselves. Using the beta period to really get the software to be at the point where we need it for production will probably be the best step, to take the stress a bit off the team, and in the next version we can go full fledged production with a really nice product.*
<br/>
<br/>
How soon do you think we'll be ready to invite some members of the community to start testing?
<br/>
<br/>
*We want to have a version ready for September, so that's what we're looking at.*
<br/>
<br/>
Great. Let's shift gears and talk about the file browser and office solution, which I've also tested. It's very cool. You're able to preview images and videos, edit documents, and more. I understand it's at least two open source components, you have the file browser and OnlyOffice working together.
<br/>
<br/>
*So the file browser is totally made by us, it's fully new. We use OnlyOffice as a document service to edit the documents, and right now you can already share documents with other people and collaborate on documents. We're building a kind of online office alternative that is owned by you and where your files are safe from companies trying to get data from it to give you specific advertisements and that sort of thing.*
<br/>
<br/>
Okay, I didn't realize that the file browser piece had been built in house.
<br/>
<br/>
*It's still very basic. It doesn't have all the features of the big ones yet. It has the basic functionality—you can upload files, make folders, put the files in the folders, open files, collaborate, save them, share with people, all of those things are available, so it's pretty usable. This has been launched in a staging version right now, so it's not available to the full public yet but it should be available in September when we launch the first Digital Twin version.*
<br/>
<br/>
I've tested it, and it works really well. I'm curious again—obviously building something like this isn't a small task. Building an alternative to products from massive corporations with huge budgets and teams. So for your team, what are the challenges and how did you make this work?
<br/>
<br/>
*Of course using open source components like OnlyOffice is a big difference. It'd be hard to make all of the documents services ourselves—that would be really insane. So using open source components is a big key factor in this, but a second thing is that our team has been building and trying out stuff like this for a few years so we do have some experience in building these kinds of tools.*
<br/>
<br/>
So in Digital Twin we also have the chat solution. Is there anything about chat that's cool or unique?
<br/>
<br/>
*We're looking at the big modern chat applications for our ideas there, as well as adding some new stuff in it. For the most part you have all the features that you need. You can send text messages and audio streams. You can send GIFs, which is of course the most important feature in any chat application. Then there's, block users, delete users, add users to make group conversations, share files with the whole group, all the things like that.*
<br/>
<br/>
Does that mean that we should be able to switch from Telegram sometime in the near future?
<br/>
<br/>
*I hope so yeah, it would be really cool when we can do that. The biggest difference of course is the underlying decentralized architecture.*
<br/>
<br/>
So finally, to wrap up, maybe you could talk a bit about how privacy and security is handled? We have end-to-end encryption, we have self hosting of data. What does that look like and how is it built?
<br/>
<br/>
*In terms of the platform itself, that's something that the ThreeFold core team is more working on, so I know the principles and know how it works but I can't give you real technical details. As for what we build, the biggest tool that we use right now for end-to-end encryption is Yggdrasil or the Planetary Network, as we refer to it in ThreeFold. So that's a technology where multiple computers form one grid and they can exchange messages with each other which are fully end-to-end encrypted, using the standard TCP stack of those nodes. In that way we can communicate between Digital Twins in a very easy way, using standard technology, but just changing the underlying network architecture.*
<br/>
<br/>
Totally, I know a bit about Yggdrasil. I haven't had a chance to test it myself, but it's super exciting technology, right? It allows anyone behind a firewall to still have a public address where they can still be reachable on IPv6 and everything is encrypted.
<br/>
<br/>
*And as soon as you're connected to one node, you're connected to every one of them, because they all forward the packets, all end to end encrypted. So it's a really cool technology.*
<br/>
<br/>
Absolutely, and it's great to be able to build on this kind of stuff. Like you're saying, the open source components give us a big head start in trying to build these alternatives.
<br/>
<br/>
*Indeed.*
<br/>
<br/>
Is there anything else you'd like to say about what you all have been building over there?
<br/>
<br/>
*The whole ride has been really cool, we're kind of working on a few things at once, and ThreeFold is one of the components of it. For us it's a very exciting project, it's very technical and building something entirely new that doesn't exist yet using all these open source components. So for the team it's a very cool challenge, we really like to work on it, and it drives the team to create something really cool. It's a great opportunity.*
<br/>
<br/>
I love that, and it's a big reason I'm excited to be involved with ThreeFold as well: building something that's totally new, going from 0 to 1, and then inviting the world to come check it out and enjoy all the benefits.
<br/>
<br/>
Oh yeah, I forgot to ask about the web browser. I understand that Jimber has been building this for a while and I've seen some things about this on your website. So the web browser solution essentially renders the webpage on the back end and just shows the user an image of it?
<br/>
<br/>
*Yeah, it caches the page on the back end and forwards the data to the client where it's rendered. So the code of the website itself doesn't reach you, and that's a solution that we use for multiple things. One is to protect APIs from getting attacked by users, what we call web application isolation. The second use case is where we have an office environment where people browse the internet and they use our solution to kind of make a gap between the computer in the company and the internet itself. But they can still browse the web and use all their favorite tools without having the risk of getting viruses and things like that.*
<br/>
<br/>
I didn't realize that there's benefit on the server end as well. So by requiring users to interact with a web service through the browser solution, that provides isolation for the app as well?
<br/>
<br/>
*If users are going to the service they are going through our browser, which will fetch the service for you and just give you a state of how it looks so that way we can really protect the back end of the applications from multiple attacks.*
<br/>
<br/>
And does this effectively provide a VPN for users as well?
<br/>
<br/>
*It's kind of the same thing, yes.*
<br/>
<br/>
That's super exciting. Something that folks ask me about when they learn about ThreeFold is hosting VPNs on the Grid as a way to get the benefits of VPN in a decentralized way.
<br/>
<br/>
*Yggdrasil is a bit closer to a VPN than our browser itself, but they pretty much help each other out. The browser in the ThreeFold network is used to protect the Digital Twin itself, to make it very secure and private for you, but the browser can also be used to browse websites from any country in the world without restrictions. So it can be used in that way too, which is kind of similar to how people at home use VPNs.*
<br/>
<br/>
That's good to know. Well, I really like the bigger picture here of an internet experience that's end-to-end encrypted, where all of your data is under your control, and you have the anonymity and privacy that a VPN would provide. It's very exciting stuff, and I'm looking forward to sharing about it with our larger community.
