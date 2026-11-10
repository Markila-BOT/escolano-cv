// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mark Escolano",
  title: "Mark Escolano - Senior Full-Stack Engineer (AI Engineer)",
  footer: context { [#emph[Mark Escolano -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated Nov 2026] ],
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
    month: 11,
    day: 4,
  ),
)


= Mark Escolano

  #headline([Senior Full-Stack Engineer (AI Engineer)])

#connections(
  [Metro Manila, Philippines],
  [#link("mailto:mark.escolano14@gmail.com", icon: false, if-underline: false, if-color: false)[mark.escolano14\@gmail.com]],
  [#link("tel:+63-977-365-4521", icon: false, if-underline: false, if-color: false)[0977 365 4521]],
  [#link("https://escolano-portfolio.vercel.app/", icon: false, if-underline: false, if-color: false)[escolano-portfolio.vercel.app]],
  [#link("https://linkedin.com/in/mark-escolano-2715ab129", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/mark-escolano-2715ab129]],
  [#link("https://github.com/Markila-BOT", icon: false, if-underline: false, if-color: false)[github.com\/Markila-BOT]],
)


== Summary

I am a Senior Full-Stack Engineer with 12 years of production experience, working remotely with teams in Japan and Australia. At WealthPark I wrote the UI process when the team had no full kit, and I designed the shared React and TypeScript components the operator, owner, and valuation apps use. PostgreSQL-backed GraphQL and REST keep chat, documents, and activity on the same records.

I take a feature from the data model and API through the React UI. On the Owner Web App, state availability improved by up to 2698\%. I replaced Figma as the mockup source with three skills that write the spec, annotate the page in Vercel v0, walk QA through the checks, and attach the files to the ticket. Recent work is React, Next.js, Node.js, NestJS, REST, and GraphQL.

== Experience

#regular-entry(
  [
    #strong[Senior Software Engineer], WealthPark -- Tokyo, Japan (Remote)

  ],
  [
    Apr 2021 – Present

  ],
  main-column-second-row: [
    - Own features across the property operations product: operators, owners, documents, chat, activities, and marketing customer success managers use. Talk with the people who use it, cut scope, and ship the version they will actually open.

    - Wrote the UI process when the team had no full kit, and designed the shared React and TypeScript components the operator, owner, and valuation apps use. PostgreSQL-backed GraphQL and REST keep chat, documents, and activity on the same records.

    - Built the property valuation app in React and Next.js over a NestJS and GraphQL API. Shipped Workflow so operators can review expenses, income, and property updates. Built Chat Admin so agents can message owners, share files, and create activities over WebSocket and REST.

    - On the Owner Web App, extra fetches and cache misses were slowing the state the screens read. Rebuilt the store and the request cache. State availability improved by up to 2698\%.

    - Replaced Figma as the mockup source, which cut that cost. I added three skills the team uses: one writes the spec people implement from, one annotates a built or mock page in Vercel v0 and walks QA through the manual checks in agent-browser, and one attaches those files to the ticket. A person reviews generated code before it is merged. I mentor juniors on design and testing.

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
    - Architected the seller analytics product agencies and investors use across accounts: a React and Material UI design system, a Node.js and Express service per marketplace, and separate data per merchant account.

    - Ingested shop data from Amazon, eBay, Walmart, and Shopify through public and private APIs, and mapped it into per-account models in MySQL and MongoDB.

    - Shipped a faster login form and a responsive landing page. Demoed against live marketplace data, including the cases that failed in staging.

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

    - Integrated the application on a serverless platform and shipped it without a local team.

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
    - Built reusable React search and booking components for Rakuten Travel, where suppliers list offers and consumers book. Led the animation work on the loading and selection components. Covered booking paths with unit, integration, and snapshot tests.

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
    - Bosch: manual VIN lookup and CAN diagnostics for mechanics working on Nissan, Mitsubishi, and Renault vehicles (TDD, GRADE-X).

    - NEC: network and traffic sniffer analysis, with unit, functional, and integration tests.

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
    - Agents message owners, share files, and create the activity from the same thread.

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
    - Property valuation app in React and Next.js over a NestJS and GraphQL API.

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
    - Operators review expenses, income, and property updates before they go through.

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
    - Agencies and investors read marketplace analytics across seller accounts.

  ],
)

== Skills

#strong[Frontend:] React, Next.js, Material UI, React Aria, Redux, TypeScript, JavaScript, design systems, Playwright, Jest, Cypress

#strong[Backend and APIs:] Node.js, NestJS, Express, REST, GraphQL, WebSocket, third-party API integrations

#strong[Data and performance:] PostgreSQL, MySQL, MongoDB, TypeORM, SQL, relational modeling, query cost, caching

#strong[Cloud and payments:] AWS, Azure DevOps, Stripe, Docker, Terraform, CI\/CD

#strong[AI tooling:] Claude Code, Cursor, Codex, Vercel v0, agent-browser, MCP servers, review of generated code before merge

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
