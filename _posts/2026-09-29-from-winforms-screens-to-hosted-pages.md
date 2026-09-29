---
layout: update
title: 'From WinForms screens to hosted pages'
date: 2026-09-29 12:00:00 +02:00
kind: 'Story'
summary: 'SOS Studio is gradually moving selected experiences into hosted pages, making the platform easier to evolve and opening the door to broader access.'
---

SOS Studio started as a classic Windows Forms application. That was a practical choice: WinForms made it possible to build a capable desktop tool quickly, integrate deeply with Windows, and keep everything local.

It still does those things well. But as Studio has grown, some of its screens have become increasingly rich and interconnected. Workbenches, contextual guidance, collections, editors, and operational views all need to present more information without becoming noisy or inconsistent.

That is why SOS Platform is undergoing a gradual shift from traditional WinForms screens to hosted pages.

## Hosted, not detached

The word *hosted* is important.

These pages still live inside SOS Studio. The native application continues to own the window, navigation, security, local configuration, file access, and integration with the rest of the platform. A retained browser surface inside Studio presents selected experiences using web technology.

This is not a plan to throw away the desktop application and start again. It is an incremental migration in which each screen moves only when there is a clear benefit and an established replacement.

The result should continue to feel like one application rather than a collection of unrelated native and browser screens.

## Why make the shift?

The first benefit is development speed.

Complex responsive layouts are generally easier to compose and refine with HTML and CSS. Shared components can be improved once and reused across an overview, a collection, or an editor. Changes to spacing, typography, responsive behavior, and contextual guidance become less expensive to implement and test.

The second benefit is consistency.

Hosted pages share one shell, one visual language, and one navigation model. Instead of every feature building its own variation of a page, the platform can reuse the same patterns for headers, commands, tabs, lists, status, validation, and the Guide.

The third benefit is reach.

Some hosted experiences can run both inside Studio and in an ordinary browser. That does not mean exposing every native administration feature on the web. It means that the parts of SOS Platform that make sense beyond one Windows desktop can increasingly be made available there without developing a second user interface from scratch.

This makes the platform more widely usable while allowing sensitive or deeply local capabilities to remain under Studio's control.

## What has moved so far?

The transition is already visible in several areas.

The SOS Workbench uses hosted pages for its Overview, Client, Workspace, and Settings experiences. Toolkit tools run in the same retained host. Library browsing and authoring are also moving into hosted collections and documents, while Studio continues to provide the surrounding navigation and native workflows.

These routes reuse one browser surface rather than opening a new window or recreating the complete page for every transition. That helps navigation feel calmer and preserves context while the next destination is prepared.

## What remains native?

Quite a lot—and deliberately so.

Studio is still a Windows desktop application. Its Explorer, application shell, configuration administration, operating-system integration, and a number of established workflows remain native. Existing WinForms screens are not being converted merely for the sake of using newer technology.

The migration is driven by ownership and usefulness:

* Is this experience useful in a browser as well as Studio?
* Would it benefit from responsive layout and reusable web components?
* Can it use the same application services and authorization rules?
* Can it replace the existing screen without creating a parallel workflow?

If the answer is no, the native implementation remains the right one.

## One platform, more than one surface

The longer-term goal is not “a web version” beside “a desktop version.” It is one SOS Platform with clear application boundaries and multiple appropriate surfaces.

Studio remains the full local workspace. Hosted pages make selected capabilities easier to evolve and, where appropriate, easier to access. Both use the same underlying concepts: Platforms, Workspaces, Cases, Actions, evidence, Catalog Items, and Blueprints.

This is a substantial architectural change, but it is being delivered in small slices. Each completed slice should leave Studio more coherent than before—not simply more modern.

That is the direction of the migration: preserve what already works, move the parts that benefit, and make SOS Platform easier to use and faster to develop along the way.

