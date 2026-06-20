# Building a credential and documentation manager for my camera team

I'm a Camera systems tech for a local commuter bus company. Not exactly "tech," but it's the closest thing I've landed so far in my journey.
I'm one of three people that installs, configures and wire the DVR and NVR camera systems in the buses.
We work with IP addresses, credentials, and wiring diagrams across maybe a dozen different systems, and you never know what's going to go wrong during an install. We 
also have to be ready to tear apart things to replace our camera wires if need be.

## The problem

Before I started, the team's approach to credential and documentation management was loose. Default
credentials got written down on paper or saved somewhere in their phones; buried in photo libraries, notes, or message
threads. When they couldn't be found, we'd have to track down one of the electrical engineers, who'd
either dig through their documentation or contact the manufacturer directly. That process could take days, which
means the install stalls and we can't finish the job.

## The Solution

I wanted something simple with a central location everyone could access. I landed on Seafile.

I already run a Proxmox server at home and expose a few services to the internet. Nextcloud for
family file storage and a music streaming stack. Adding Seafile was straightforward. Once it
was installed, I went into my Cloudflared tunnel container and added Seafile's internal IP. That gave it a clean,
accessible URL without exposing my home network directly.

## How It Works

I created a folder for each camera system. Inside each folder we store the default credentials and
any photos taken during install. Since we often work on separate buses at the same time, this
has been huge. If I needed to reference what another tech did to finish the bus I'm on, it's
right there.

On the access control side, I'm the only one who can create accounts, and everyone uses
a unique password. It's not a full password manager setup, but the goal was something the team
would actually use, and they do. 

## The Results

No more lost credentials, no more waiting days for engineers to dig through documentation.
Everything lives in one place, accessible from anywhere. The team picked it up immediately and it's
been running without issues.

  Seafile for the win!! 
---
