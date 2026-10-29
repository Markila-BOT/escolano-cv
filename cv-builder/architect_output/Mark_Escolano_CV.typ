// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mark Escolano",
  title: "Mark Escolano - Senior Full-Stack Engineer",
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

  #headline([Senior Full-Stack Engineer · AI-enabled SaaS, Relational domain modeling, and AI-assisted delivery])

#connections(
  [Metro Manila, Philippines],
  [#link("mailto:mark.escolano14@gmail.com", icon: false, if-underline: false, if-color: false)[mark.escolano14\@gmail.com]],
  [#link("tel:+63-977-365-4521", icon: false, if-underline: false, if-color: false)[0977 365 4521]],
  [#link("https://escolano-portfolio.vercel.app/", icon: false, if-underline: false, if-color: false)[escolano-portfolio.vercel.app]],
  [#link("https://linkedin.com/in/mark-escolano-2715ab129", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/mark-escolano-2715ab129]],
  [#link("https://github.com/Markila-BOT", icon: false, if-underline: false, if-color: false)[github.com\/Markila-BOT]],
)


== Summary

Senior full-stack engineer (14+ years, remote-first) who designs and ships multi-tenant SaaS with CRM-style data models: people, accounts, properties, documents, messaging, tasks, and operational workflows. Hands-on across architecture, solution design, development, and code review.

Leads AI adoption for engineering and management. Builds reusable agent skills, MCP servers, and AI-assisted workflows in Cursor, Claude Code, and Codex so teams can work on product data and codebases without leaking context or skipping human review.

== Experience

#regular-entry(
  [
    #strong[Senior Software Engineer], WealthPark -- Tokyo, Japan (Remote)

  ],
  [
    Apr 2021 – Present

  ],
  main-column-second-row: [
    - Own end-to-end delivery of a multi-product property operations platform (CRM-style): owners, operators, listings, documents, chat, activities, and marketing workflows for customer success.

    - Model relational domain data and GraphQL APIs so operators, owners, and CSMs share one operational picture without duplicating records across chat, documents, and activity streams.

    - Lead AI adoption for developers and managers: Cursor, Claude Code, and Codex; authored skills and playbooks; stood up MCP servers so agents can use repo, docs, and workflow tools under explicit permissions.

    - Treat AI output as draft work: code review, architecture review, and human-in-the-loop checks before merge; document how tools may access tenant-adjacent product data.

    - Architected store-management caching that improved speed by up to 2698\%; shipped a React\/TypeScript component system reused across operator, owner, and valuation products.

    - Mentor interns and junior engineers; set standards for design, testing, and AI-assisted development so the team can ship independently.

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
    - Built marketplace-integration microservices (Amazon, eBay, Walmart, Shopify) that isolate merchant accounts and aggregate shop data through public and private APIs.

    - Designed multi-account analytics for agencies and investors: per-tenant datasets, Node.js services, MySQL\/MongoDB, Docker, and Terraform-backed deploys.

    - Owned CI confidence with Jest and Cypress, plus stakeholder demos so product owners could approve releases against live marketplace behavior.

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
    - Reusable React search\/booking components; led animation\/reusability; unit, integration, and snapshot tests on booking-critical paths.

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
    - Bosch: VIN identification and CAN diagnostics against a centralized vehicle database (TDD, GRADE-X).

    - NEC: network\/traffic sniffer analysis with unit, functional, and integration coverage.

    - Denso: spec-driven ECU software for Japan requirements, including a complex spec with zero defects on first unit-test pass.

  ],
)

== Selected platforms

#regular-entry(
  [
    #strong[PotatoV3 — operator CRM \/ property ops]

  ],
  [
    WealthPark

  ],
  main-column-second-row: [
    - Admin\/operator console for ownership identification, owner communication, and operational work (TypeScript, React, Next.js, REST, WebSocket).

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
    - Agent–owner messaging, activity creation, and document handling on the same operational record (React, Redux, WebSocket, REST).

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
    - Human-operated activity streams for expenses, income, and property updates — approval-style operational work, not fire-and-forget automation.

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
    - Owner-facing cash flow, documents, chat, and activities across global properties (TypeScript, React, GraphQL).

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
    - Multi-account marketplace analytics with tenant-separated merchant data, APIs, and CI (Node.js, Express, MySQL, MongoDB, Docker, Terraform).

  ],
)

== AI operating model

Shared agent skills for engineers (architecture, implementation, review) and managers (planning, status, stakeholder write-ups) so Cursor, Claude Code, and Codex follow the same rules.

MCP servers as the tool boundary: agents only get repo, docs, and workflow tools we expose; product data is not dumped into prompts by default.

Human-in-the-loop: generated code, specs, and process changes go through review; structured outputs for tickets and review notes so the work is auditable.

== Skills

#strong[Architecture:] Multi-tenant SaaS, CRM-style relational modeling, GraphQL\/REST APIs, integrations, caching, component systems, evented UI (WebSocket)

#strong[AI delivery:] AI-assisted architecture and development, agent skills, MCP servers, Cursor, Claude Code, Codex, human-in-the-loop review, permission-aware tool use

#strong[Languages & data:] TypeScript, JavaScript, C\#, Rust, SQL, PostgreSQL, GraphQL, MongoDB, MySQL

#strong[Stack:] React, Next.js, Node.js, NestJS, C\# \/ .NET backends, Rust services, Docker, Terraform, Jest, Cypress, CI\/CD

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
