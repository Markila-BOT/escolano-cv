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
    day: 24,
  ),
)


= Mark Escolano

  #headline([Senior Full-Stack Engineer · TypeScript SaaS, spec-driven AI development])

#connections(
  [Metro Manila, Philippines],
  [#link("mailto:mark.escolano14@gmail.com", icon: false, if-underline: false, if-color: false)[mark.escolano14\@gmail.com]],
  [#link("tel:+63-977-365-4521", icon: false, if-underline: false, if-color: false)[0977 365 4521]],
  [#link("https://escolano-portfolio.vercel.app/", icon: false, if-underline: false, if-color: false)[escolano-portfolio.vercel.app]],
  [#link("https://linkedin.com/in/mark-escolano-2715ab129", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/mark-escolano-2715ab129]],
  [#link("https://github.com/Markila-BOT", icon: false, if-underline: false, if-color: false)[github.com\/Markila-BOT]],
)


== Summary

Senior full-stack engineer, 14+ years, mostly remote. I ship TypeScript SaaS on operational data: people, documents, messages, tasks, and workflows, from a messy request through integrations and the data model underneath.

Daily Claude Code, Cursor, and Codex. Create skills and use official MCP servers. Debug, test, and review generated work before it ships.

== Experience

#regular-entry(
  [
    #strong[Senior Software Engineer], WealthPark -- Tokyo, Japan (Remote)

  ],
  [
    Apr 2021 – Present

  ],
  main-column-second-row: [
    - Owned delivery of the property operations suite: operators, owners, documents, chat, activities, and customer-success marketing work. Talked with stakeholders, cut scope, and shipped what they would use.

    - Modeled the domain in PostgreSQL-backed GraphQL so chat, documents, and activity streams share the same records.

    - Rolled out Claude Code, Cursor, and Codex for engineers and managers. Created skills and playbooks. Wired official MCP servers for repo, docs, and workflow tools.

    - Put AI guardrails around generated work: code review, permission checks, and a written list of what tools may access. Kept product data out of prompts unless a person approved it.

    - Rebuilt store-management caching and cut load time by up to 2698\% (slow reads, extra fetches, cache misses). Shared React\/TypeScript components across operator, owner, and valuation apps.

    - Mentored juniors and set design, testing, and AI-tool conventions so people can ship without waiting on me.

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
    - Built Node.js services that ingest merchant shop data from Amazon, eBay, Walmart, and Shopify, map it into our models, and keep each merchant's data separate.

    - Shipped multi-account analytics for agencies and investors: per-account datasets, MySQL and MongoDB, Docker, Terraform, CI.

    - Covered the pipelines with Jest and Cypress. Demoed to product owners against live marketplace behavior, including the cases that failed in staging.

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
    - Built React search and booking components for a live travel product. Covered booking-critical paths with unit, integration, and snapshot tests.

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
    - Admin app for ownership, owner communication, and daily ops. Shipped and iterated with operators (TypeScript, React, Next.js, REST, WebSocket).

  ],
)

#regular-entry(
  [
    #strong[Chat Admin + documents]

  ],
  [
    WealthPark

  ],
  main-column-second-row: [
    - Agent and owner messaging, activities, and documents on one record (React, Redux, WebSocket, REST).

  ],
)

#regular-entry(
  [
    #strong[Workflow]

  ],
  [
    WealthPark

  ],
  main-column-second-row: [
    - Activity streams for expenses, income, and property updates. Operators complete and approve the work.

  ],
)

#regular-entry(
  [
    #strong[Owner Web Application]

  ],
  [
    WealthPark

  ],
  main-column-second-row: [
    - Cash flow, documents, chat, and activities for owners with properties in more than one country (TypeScript, React, GraphQL).

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
    - Marketplace analytics across merchant accounts: ingest, model, and report (Node.js, Express, MySQL, MongoDB, Docker, Terraform).

  ],
)

== How I use LLMs

Daily Claude Code, Cursor, and Codex. Create skills for build, review, planning, and turning a long discussion into tickets.

Official MCP servers for repo, docs, and workflow tools. Product records stay out of prompts unless a person reviews the change.

Generated code gets tests, types, and a pass over failure paths before merge.

== Skills

#strong[Languages:] TypeScript, JavaScript, SQL, C\#, Rust, GraphQL

#strong[Data & systems:] PostgreSQL, MySQL, MongoDB, ingestion from third-party APIs, relational modeling, caching, query performance, Docker, Terraform, CI\/CD

#strong[Product stack:] React, Next.js, Node.js, NestJS, REST, WebSocket, Jest, Cypress

#strong[AI tooling:] Claude Code, Cursor, Codex, official MCP servers, skills, AI guardrails, review of generated code and specs

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
