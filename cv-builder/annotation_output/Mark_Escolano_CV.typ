// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mark Escolano",
  title: "Mark Escolano - Full-Stack Engineer",
  footer: context { [#emph[Mark Escolano -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated Sept 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.55in,
  page-bottom-margin: 0.5in,
  page-left-margin: 0.6in,
  page-right-margin: 0.6in,
  page-show-footer: false,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 22pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.12cm,
  sections-space-between-regular-entries: 0.32cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 9,
    day: 25,
  ),
)


= Mark Escolano

#connections(
  [Metro Manila, Philippines],
  [#link("mailto:mark.escolano14@gmail.com", icon: false, if-underline: false, if-color: false)[mark.escolano14\@gmail.com]],
  [#link("tel:+63-977-365-4521", icon: false, if-underline: false, if-color: false)[0977 365 4521]],
  [#link("https://escolano-portfolio.vercel.app/", icon: false, if-underline: false, if-color: false)[escolano-portfolio.vercel.app]],
  [#link("https://linkedin.com/in/mark-escolano-2715ab129", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/mark-escolano-2715ab129]],
  [#link("https://github.com/Markila-BOT", icon: false, if-underline: false, if-color: false)[github.com\/Markila-BOT]],
)


== Summary

Senior full-stack engineer, 14+ years in production TypeScript. I ship SaaS and review generated diffs for API design, database and cache behavior, auth, and React or Next.js rendering and state.

Claude Code, Cursor, and Codex. Create skills, use official MCP servers, and follow through with a complete implementation when the first pass needs more work.

== Experience

#regular-entry(
  [
    #strong[Senior Software Engineer], WealthPark -- Tokyo, Japan (Remote)

  ],
  [
    Apr 2021 – Present

  ],
  main-column-second-row: [
    - Ship operator, owner, and valuation apps in React and Next.js. Review frontend architecture: state, extra renders, and whether browser APIs match what the UI claims.

    - REST and GraphQL over PostgreSQL for chat, documents, and activities. Check N+1 fetches, cache misses, and caching strategy; store-management caching cut load time by up to 2698\%.

    - Claude Code, Cursor, and Codex. Create skills. Wire official MCP servers. Generated changes get tests, types, and an auth or permission check before they touch product data.

    - Mentored juniors on design and testing, and on taking a first-pass patch through review until it is ready to ship.

  ],
)

#regular-entry(
  [
    #strong[Full Stack Engineer], MerchantSpring -- Melbourne, Australia (Remote)

  ],
  [
    Sept 2020 – Apr 2021

  ],
  main-column-second-row: [
    - Node.js ingest from Amazon, eBay, Walmart, and Shopify. Map marketplace payloads into our models and keep merchant accounts separate.

    - Jest and Cypress on the pipelines. Demoed against live marketplace behavior, including the staging failures.

  ],
)

#regular-entry(
  [
    #strong[Front End Engineer], Rakuten -- Tokyo, Japan

  ],
  [
    June 2018 – Sept 2020

  ],
  main-column-second-row: [
    - React search and booking on a live travel product. Unit, integration, and snapshot tests on booking-critical paths.

  ],
)

#regular-entry(
  [
    #strong[Software Engineer], Bosch, NEC, Denso -- Tokyo \/ Manila

  ],
  [
    Apr 2014 – June 2018

  ],
  main-column-second-row: [
    - Bosch: VIN lookup and CAN diagnostics against a central vehicle database (TDD, GRADE-X).

    - NEC: network and traffic sniffer analysis, with unit, functional, and integration tests.

    - Denso: ECU software from Japan specs, including a complex spec that passed unit tests with zero defects on first run.

  ],
)

== Selected platforms

#regular-entry(
  [
    #strong[PotatoV3 (operator console)]

  ],
  [
    WealthPark

  ],
  main-column-second-row: [
    - Admin app for ownership, owner communication, and daily ops (TypeScript, React, Next.js, REST, WebSocket).

  ],
)

#regular-entry(
  [
    #strong[Rakuten Travel]

  ],
  [
    Rakuten

  ],
  main-column-second-row: [
    - Supplier and consumer travel search and booking. Reusable React components, state, and tests on booking-critical paths (JavaScript, React, Flux, Redux, Jest, Cypress).

  ],
)

#regular-entry(
  [
    #strong[Alliance Diagnostic Tool]

  ],
  [
    Bosch

  ],
  main-column-second-row: [
    - VIN-based diagnostics for Nissan, Mitsubishi, and Renault against a central vehicle database (JavaScript, Angular, Jest).

  ],
)

#regular-entry(
  [
    #strong[MerchantSpring Seller Tool]

  ],
  [
    MerchantSpring

  ],
  main-column-second-row: [
    - Marketplace ingest and analytics (Node.js, Express, MySQL, MongoDB, Docker, Terraform).

  ],
)

== Code review

Frontend: React and Next.js structure, state, rendering cost, and whether the UI matches the APIs it calls.

Backend: REST and GraphQL design, database modeling, caching, N+1 queries, and how services talk to each other.

Auth and access: login, permissions, and whether a generated change would expose data it should not.

Write the prompt or skill with a real constraint, then finish with types, tests, and the failure path.

== Skills

#strong[Frontend:] React, Next.js, TypeScript, state management, rendering performance, WebSocket UIs, Jest, Cypress

#strong[Backend and APIs:] REST, GraphQL, PostgreSQL, MySQL, MongoDB, caching, N+1 and query performance, Node.js, NestJS, C\#, Rust

#strong[Auth and infra:] Authentication, permission checks, Docker, Terraform, CI\/CD, networking diagnostics

#strong[AI tooling:] Claude Code, Cursor, Codex, official MCP servers, skills, review of generated diffs

== Education

#education-entry(
  [
    #strong[Rizal Technological University], BS in Computer Engineering -- Mandaluyong, Philippines

  ],
  [
    Mar 2008 – Mar 2013

  ],
  main-column-second-row: [
  ],
)

== Certifications

#strong[JLPT:] Japanese Language Proficiency Test N3

#strong[JTEST:] D Level
