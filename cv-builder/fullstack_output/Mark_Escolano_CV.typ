// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mark Escolano",
  title: "Mark Escolano - Full-Stack Engineer",
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
    day: 2,
  ),
)


= Mark Escolano

  #headline([Senior Full-Stack Engineer])

#connections(
  [Metro Manila, Philippines],
  [#link("mailto:mark.escolano14@gmail.com", icon: false, if-underline: false, if-color: false)[mark.escolano14\@gmail.com]],
  [#link("tel:+63-977-365-4521", icon: false, if-underline: false, if-color: false)[0977 365 4521]],
  [#link("https://escolano-portfolio.vercel.app/", icon: false, if-underline: false, if-color: false)[escolano-portfolio.vercel.app]],
  [#link("https://linkedin.com/in/mark-escolano-2715ab129", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/mark-escolano-2715ab129]],
  [#link("https://github.com/Markila-BOT", icon: false, if-underline: false, if-color: false)[github.com\/Markila-BOT]],
)


== Summary

I am a full-stack engineer with 12 years of production experience, working remotely with teams in Japan and Australia. I take a feature from the data model and API through the React UI, then change it after people use it.

Recent work is React, Next.js, and Material UI on the frontend, with Node.js, NestJS, REST, and GraphQL on the backend. I watch query cost and caching when a page is slow. I use Claude Code and Cursor daily, and a person reviews the output before it ships.

== Experience

#regular-entry(
  [
    #strong[Senior Software Engineer], WealthPark -- Tokyo, Japan (Remote)

  ],
  [
    Apr 2021 – Present

  ],
  main-column-second-row: [
    - Own features across the property operations product: operators, owners, documents, chat, activities, and marketing. Talk with the people who use it, cut scope, and ship the version they will actually open.

    - Design the data model and the API with the UI. PostgreSQL-backed GraphQL and REST keep chat, documents, and activity streams on the same records.

    - Built the property valuation app in React and Next.js over a NestJS and GraphQL API, for assessing what a property is worth.

    - Shipped Workflow as activity streams for expenses, income, and property updates, with review and approval steps in the UI.

    - Built Chat Admin in React, Material UI, and Redux: live messaging, file sharing, and activity creation over WebSocket and REST.

    - Traced slow store-management pages to extra fetches and cache misses, then rebuilt the cache. Load time dropped by up to 2698\%.

    - Shared React and TypeScript components across the operator, owner, and valuation apps. Use Claude Code, Cursor, and Codex, with review before generated code is merged.

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
    - Shipped the seller analytics product end to end: React and Material UI on the front, Node.js and Express services behind it.

    - Ingested shop data from Amazon, eBay, Walmart, and Shopify, mapped it into per-account models, and kept each merchant's data separate in MySQL and MongoDB.

    - Ran the services in Docker with Terraform-managed deploys. Demoed against live marketplace data, including the cases that failed in staging.

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
    - Solo engineer on a web product: gathered the requirements, designed the app, built it, and changed scope with the client as the product moved.

    - Integrated the application on a serverless platform and kept delivery moving without a local team.

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
    - Built reusable React search and booking components for a live travel product. Covered booking paths with unit, integration, and snapshot tests.

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

    - Denso: ECU software from detailed specs, including one spec that passed unit tests with zero defects on the first run.

  ],
)

== Selected products

#regular-entry(
  [
    #strong[Chat Admin]

  ],
  [
    WealthPark

  ],
  main-column-second-row: [
    - Operator messaging UI in React, Material UI, and Redux, with WebSocket updates and REST for files and activities.

  ],
)

#regular-entry(
  [
    #strong[Valuation]

  ],
  [
    WealthPark

  ],
  main-column-second-row: [
    - Property valuation app in React and Next.js, backed by NestJS and GraphQL.

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
    - Expense, income, and property-update flows with operator review (React, Redux, GraphQL).

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
    - Multi-account marketplace analytics (React, Material UI, Node.js, Express, MySQL, MongoDB, Docker).

  ],
)

== Skills

#strong[Frontend:] React, Next.js, Material UI, Redux, TypeScript, JavaScript, responsive UI, Jest, Cypress

#strong[Backend and APIs:] Node.js, NestJS, Express, REST, GraphQL, WebSocket, third-party API integrations

#strong[Data and performance:] PostgreSQL, MySQL, MongoDB, SQL, relational modeling, query cost, caching

#strong[Delivery:] Docker, Terraform, serverless, CI\/CD, remote product teams

#strong[AI tooling:] Claude Code, Cursor, Codex, MCP servers, review of generated code before merge

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
