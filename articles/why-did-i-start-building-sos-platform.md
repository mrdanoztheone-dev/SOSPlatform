# Why did I start building SOS Platform?

Like many side projects, this one wasn't really planned. It slowly evolved from several ideas that eventually came together.

I've been working as a SQL Server DBA for over 27 years. During that time I noticed that many investigations followed the same pattern. Different customer, different server, but often the same questions, the same scripts and the same reasoning.

Like many DBAs, my first attempt at automating this work was a large collection of PowerShell scripts. It worked, but I never really enjoyed writing PowerShell—although I do enjoy spaghetti as a meal.

## JsonDb

In early 2026 I decided to improve my C# skills by building something completely different: a small file-based database engine. I needed it for another hobby project and thought it would be an interesting learning exercise.

That project became **JsonDb**.

JsonDb is a lightweight database engine that stores everything as JSON files. It separates schema from data and keeps the implementation intentionally simple so it's easy to understand and experiment with.

## The LEGO warehouse

The hobby project itself has nothing to do with SQL Server.

I'm a big LEGO enthusiast, and I've been building a warehouse system to keep track of LEGO parts and where they're stored. JsonDb became the storage engine, and I built a small Studio application to manage it.

Eventually I'd like to connect it to an ESP32 and some LEDs so the storage bins can literally light up to show where a part is located.

While working on JsonDb and the Studio application, another idea started taking shape.

## From LEGO to diagnostics

Instead of storing LEGO parts, why not store diagnostic evidence?

What if diagnostic results could simply be imported as JSON documents, without having to design a database schema first? The application could organize the information structurally while remaining largely independent of the JSON format itself.

That idea became the foundation of **SOS Platform**.

The original goal was quite modest. I wanted a small application that could run from a USB stick, collect diagnostic information from a Windows machine, save everything as JSON files, and later analyse those files on another computer running SOS Studio.

Production systems would remain untouched while investigations could be performed safely offline.

## Capturing experience

As the project evolved, the idea became much bigger.

I realised that I wasn't really trying to automate scripts.

I was trying to capture experience.

Every investigation teaches something. Every conclusion is based on evidence. Over time those investigation steps become reusable building blocks.

That's the core idea behind SOS Platform.

Rather than creating one large monolithic diagnostic process, the platform is built around small pieces of reusable knowledge that can be combined, much like LEGO bricks. Some investigations consist of a single step, while others combine many small pieces into a larger workflow.

Because the platform works with structured evidence instead of depending on one fixed JSON format, it also isn't tied to a single technology.

Today that means Windows and SQL Server.

Tomorrow it could just as easily be Linux, cloud platforms, e-mail systems or something entirely different.

The platform isn't really about JSON.

It's about turning evidence into reusable knowledge.

## What's next?

And that's only the beginning of the story.

There's still plenty to explain about the architecture, investigations, playbooks, AI-assisted analysis, and how all those pieces fit together.

I hope you'll enjoy following the journey.
