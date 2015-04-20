---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
title: "Cellulose"
subheadline: "Getting embedded devices up and running"
header:
   image_fullwidth: ""
widget-2:
    title: "Projects"
    url: '/projects/'
    text: 'Check out the projects and see which ones may be of interest to you.'
    image: xcode.png
widget-1:
    title: "Getting Started"
    url: '/getting-started/'
    text: 'Checkout overview information about the <em>Cellulose</em> projects and how they may be used and fit together'
    image: running_man.png
widget-3:
    title: "Checkout Code"
    url: 'https://github.com/cellulose'
    text: '<em>Cellulose</em> is an open source project with hopes to increase use of Elixir/Erlang on embedded devices. Please feel free to check out the source, use it as you with, and contribute any improvements you wish.'
    image: github-303x182.jpg
---

Cellulose is an [Elixir](http://elixir-lang.org) based framework and designed to create systems (such as an embedded device) called ___cells___. This is accomplished through the [Cellulose projects](/projects) and the [Nerves project](http://nerves-project.org).

A Cellulose __system__ is composed of one or more ___cells___ (such as an embedded device, or possibly PC, server, or virtual instance).   Each ___cell___ is comprised of a ___Hub___ whose purpose is to maintain a __state cache__, and coordinate multiple [___actors___](http://en.wikipedia.org/wiki/Actor_model) that interact with the __system's__ state in order to provide ___services___ for that cell.

A ___cell___ is often connected via a network port (Ethernet or Wifi) to one or more ___clients___ that interact with the cell, in a client/server relationship.  A client might be a web browser, or a custom piece of software that speaks one of the __Cellulose transport protocols__.

Through the [Cellulose projects](/projects) a ___cell___ can employ:

* Ethernet networking
* Remote network configurability
* Device discovery
* Firmware management
  * Remote updatability
  * Fallback recovery
  * Standardized versioning
* JSON based ___services___ format
* Status reporting
* System wide state repository
* REST-based server that allows REST/JSON communication

Because Cellulose's approach to building systems is unconventional, some of the terminology and concepts can be confusing. In the interest of clarity, we reuse existing technology as appropriate, often from the networking world, but choose some new terms where existing terms might be ambiguous.
