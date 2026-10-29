// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mark Escolano",
  title: "Mark Escolano - Forward Deployed Engineer",
  footer: context { [#emph[Mark Escolano -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated Oct 2026] ],
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
    month: 10,
    day: 1,
  ),
)


= Mark Escolano

  #headline([Senior Full-Stack Engineer · Stakeholder-facing delivery, integrations, and AI-enabled applications])

#connections(
  [Metro Manila, Philippines],
  [#link("mailto:mark.escolano14@gmail.com", icon: false, if-underline: false, if-color: false)[mark.escolano14\@gmail.com]],
  [#link("tel:+63-977-365-4521", icon: false, if-underline: false, if-color: false)[0977 365 4521]],
  [#link("https://escolano-portfolio.vercel.app/", icon: false, if-underline: false, if-color: false)[escolano-portfolio.vercel.app]],
  [#link("https://linkedin.com/in/mark-escolano-2715ab129", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/mark-escolano-2715ab129]],
  [#link("https://github.com/Markila-BOT", icon: false, if-underline: false, if-color: false)[github.com\/Markila-BOT]],
)


== Summary

I am a full-stack engineer with 12 years of production experience, including remote work with teams in Japan and Australia. I work directly with operators, product owners, and customer-success teams to understand unclear requests, define the requirements and data model, and ship software they use.

My work covers React and Next.js, Node.js, REST and GraphQL APIs, relational and NoSQL databases, external integrations, and infrastructure as code. I also build AI-assisted workflows with Claude Code, Cursor, Codex, and MCP servers. A person reviews the output before it reaches production data.

== Experience

#regular-entry(
  [
    #strong[Senior Software Engineer], WealthPark -- Tokyo, Japan (Remote)

  ],
  [
    Apr 2021 – Present

  ],
  main-column-second-row: [
    - Own delivery of the property operations suite (operators, owners, documents, chat, activities, marketing). Sit with operators and CSMs to map the workflow and pain points, cut scope, and ship what they will use.

    - Turn loosely defined operational requests into requirements, data models, and implementation plans. Modeled the domain in PostgreSQL-backed GraphQL so chat, documents, and activity streams share the same records.

    - Take features from prototype to production: demo early builds, collect feedback, then harden through testing, UAT with operators, rollout, and production support.

    - Diagnosed slow store-management pages (slow reads, extra fetches, cache misses) and rebuilt caching, cutting load time by up to 2698\%.

    - Built a shared React\/TypeScript component system reused across operator, owner, and valuation apps, so new features start from proven parts.

    - Rolled out Claude Code, Cursor, and Codex for engineers and managers. Created reusable skills and playbooks, wired MCP servers for repo, docs, and workflow tools, and set guardrails for what AI tools can access.

    - Explain tradeoffs, risks, and options to non-technical stakeholders. Mentor juniors and set design and testing conventions so the team ships without bottlenecks.

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
    - Integrated Amazon, eBay, Walmart, and Shopify through public and private APIs. Node.js services ingest merchant shop data, map it into our models, and keep each merchant's data separate.

    - Shipped multi-account analytics for agencies and investors: per-account datasets, MySQL and MongoDB, Docker, Terraform-managed deploys, CI.

    - Demoed to product owners against live marketplace behavior, including the cases that failed in staging, so they could sign off on releases with real data.

  ],
)

#regular-entry(
  [
    #strong[Software Engineer → Lead Software Engineer (Part-time)], X-Climb -- Remote

  ],
  [
    2020 – 2021

  ],
  main-column-second-row: [
    - Solo, hands-on lead from planning to delivery: gathered requirements, designed the web application, and ran technical and business reviews with the client.

    - Built and integrated the application on a serverless platform, then adjusted scope and design as business needs changed.

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
    - Built reusable React search and booking components for a live travel product used by millions. Led the animation sub-team and covered booking-critical paths with unit, integration, and snapshot tests.

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
    - Bosch: VIN lookup and CAN diagnostics against a central vehicle database for Nissan, Mitsubishi, and Renault (TDD, GRADE-X).

    - NEC: network and traffic sniffer analysis, with unit, functional, and integration tests.

    - Denso: ECU software from Japan specs, including a complex spec that passed unit tests with zero defects on first run.

  ],
)

== Selected solutions

#regular-entry(
  [
    #strong[PotatoV3 (operator console)]

  ],
  [
    WealthPark

  ],
  main-column-second-row: [
    - Internal business app for ownership identification, owner communication, and daily ops. Built and iterated directly with operators (TypeScript, React, Next.js, REST, WebSocket).

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
    - Activity streams for expenses, income, and property updates, with operator review and approval steps (React, Redux, GraphQL).

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
    - Real-time agent and owner messaging, file sharing, and activity creation on one record (React, Redux, WebSocket, REST).

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
    - Multi-marketplace ingest and analytics across merchant accounts (Node.js, Express, MySQL, MongoDB, Docker, Terraform).

  ],
)

== How I work

Start with the problem, not the ticket: ask who uses it, what breaks today, and what 'done' means for the business before picking a stack.

Ship a thin working version early, validate it with the people who will use it, then harden for production with tests, types, and failure paths.

Use LLM tooling daily (Claude Code, Cursor, Codex, MCP servers) and treat its output as a draft that gets reviewed, tested, and permission-checked.

Leave behind reusable components, skills, and playbooks so the next project starts faster.

== Skills

#strong[Languages:] TypeScript, JavaScript, SQL, GraphQL, C\#, Rust

#strong[Frontend:] React, Next.js, Redux, component systems, WebSocket UIs, Jest, Cypress

#strong[Backend & APIs:] Node.js, NestJS, Express, REST, GraphQL, WebSocket, third-party API integrations, caching, query performance

#strong[Data:] PostgreSQL, MySQL, MongoDB, relational domain modeling, multi-tenant data separation

#strong[Cloud & DevOps:] Docker, Terraform, serverless, CI\/CD

#strong[AI:] Claude Code, Cursor, Codex, MCP servers, agent skills, AI-assisted development, guardrails and review of generated code

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
