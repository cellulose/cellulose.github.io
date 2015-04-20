---
layout: page-fullwidth
title: "Cellulose - Terminology"
subheadline: ""
teaser: "Get to know the lingo..."
permalink: "/terminology/"
header:
   image_fullwidth: ""
---

### Cellulose Transport Protocols and Bridges

In order for a Cellulose cell to communicate with the outside world in a useful way, it needs a way to represent it's system state in some kind of protocol which can be passed across a network, serial link, or other media.  These protocols are called ___transports___ and an actor which implements a transport is called a ___bridge___.

Cellulose defines a few different protocols which are optimized for different applications, all of which allow an external device or system to query the state of a node, get informed of changes to that state, and request changes to that state, while enforcing security.

[JRTP - JSON/REST Transport Protocol](/projects)

Represents state and changes to state as json objects managed over an HTTP interface with REST semantics, including long polling and HTTP Authentication.  SSL/TLS is supported.   This scheme allows for store-and-forward synchronization and moderate-latency event delivery.   _Implmementation fully functional but subject to changes._

NETP - Native Erlang Transport Protocol

A low level protcol based on distributed erlang which is optimized for real-time communications between Cellulose cells for the purpose of forming grids.  This protocol provides very low latency and very high throughput when used with fairly reliable links, and degrades gracefully as link quality and speed go down.   It is not intended nor available for use outside of Erlang systems. _Implementation fully functional but subject to changes._

WSTP - WebSocket Transport Protocol

Like JRTP, but optimized for client systems which can use the WebSockets standard, this implements all changes as JSON objects passed over a socket.  Ideal for javascript-based client applications in web browsers.  _Implementation not complete nor functional at this time_

Most clients will want to code to [JRTP](/projects) which works best for most use cases, is simple and accessible, and is likely to undergo the fewest changes as Echo evolves.
