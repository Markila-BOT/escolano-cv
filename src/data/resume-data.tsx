import { GitHubIcon, LinkedInIcon } from "@/components/icons";

export const RESUME_DATA = {
  name: "Mark Escolano",
  initials: "ME",
  location: "Quezon City, Philippines",
  locationLink: "https://maps.app.goo.gl/LxsubTvFfn3x2ksf8",
  about:
    "Senior Full-Stack Engineer (AI Engineer).",
  summary:
    "I am a Senior Full-Stack Engineer with 12 years of production experience, working remotely with teams in Japan and Australia. At WealthPark I wrote the UI process when the team had no full kit, and I designed the shared React and TypeScript components the operator, owner, and valuation apps use. On the Owner Web App, state availability improved by up to 2698%. I replaced Figma as the mockup source with three skills that write the spec, annotate the page in Vercel v0, walk QA through the checks, and attach the files to the ticket.",
  avatarUrl: "https://avatars.githubusercontent.com/u/33077253?v=4",
  personalWebsiteUrl: "https://escolano-portfolio.vercel.app/",
  contact: {
    email: "mark.escolano14@gmail.com",
    tel: "+639773654521",
    social: [
      {
        name: "GitHub",
        url: "https://github.com/Markila-BOT",
        icon: GitHubIcon,
      },
      {
        name: "LinkedIn",
        url: "https://www.linkedin.com/in/mark-escolano-2715ab129/",
        icon: LinkedInIcon,
      },
    ],
  },
  education: [
    {
      school: "Rizal Technological University",
      degree: "Bachelor's Degree in Computer Engineering",
      start: "2008",
      end: "2013",
    },
  ],
  work: [
    {
      company: "WealthPark",
      link: "https://wealth-park.com/en/lp-product-us/",
      badges: ["Remote"],
      title: "Senior Software Engineer",
      start: "2021",
      end: "Present",
      description:
        "I own features for operators, owners, and the marketing customer success managers use. I wrote the UI process when the team had no full kit, and I designed the shared React and TypeScript components the operator, owner, and valuation apps use. Chat, documents, and activity sit on the same records. On the Owner Web App I rebuilt the store and the request cache, and state availability improved by up to 2698%. I replaced Figma as the mockup source with three skills: they write the spec the team implements from, annotate a built or mock page in Vercel v0 and walk QA through the manual checks in agent-browser, and attach those files to the ticket. A person reviews generated code before it is merged. I mentor juniors on design and testing.",
    },
    {
      company: "MerchantSpring",
      link: "https://merchantspring.io/",
      badges: ["Remote"],
      title: "Full Stack Engineer",
      start: "2020",
      end: "2021",
      description:
        "I architected the seller analytics product agencies and investors use across accounts: a React and Material UI design system, a Node.js and Express service per marketplace, and separate data per merchant account. Amazon, eBay, Walmart, and Shopify shop data goes into per-account models in MySQL and MongoDB. I shipped a faster login form and a responsive landing page, and demoed against live marketplace data, including the cases that failed in staging.",
    },
    {
      company: "X-Climb",
      link: "https://x-climb.com/",
      badges: ["Remote", "Part Time"],
      title: "Software Engineer → Lead Software Engineer",
      start: "2020",
      end: "2021",
      description:
        "Solo hands-on engineer, then lead. I planned, designed, and built the web app, integrated it on a serverless platform, and changed scope with the client on the business and technical side.",
    },
    {
      company: "Rakuten",
      link: "https://global.rakuten.com/corp/",
      badges: [],
      title: "Software Engineer",
      start: "2018",
      end: "2020",
      description:
        "I built reusable React search and booking components for Rakuten Travel, where suppliers list offers and consumers book. I led the animation work on the loading and selection components, and covered booking paths with unit, integration, and snapshot tests.",
    },
    {
      company: "BOSCH",
      link: "https://www.bosch.com/",
      badges: [],
      title: "Software Engineer",
      start: "2017",
      end: "2018",
      description:
        "Implemented the manual vehicle identification feature, highly involved in very analyzed and extensive test-driven components, worked on GRADE-X technologies for making a data manipulation for diagnosing a vehicle.",
    },
    {
      company: "NEC",
      link: "https://www.nec.com/en/index.html",
      badges: [],
      title: "Software Design Engineer II",
      start: "2016",
      end: "2017",
      description:
        "Design and implement sniffer function for Network/Traffic analysis of the project, creates and performs detailed unit, functional, and integration tests, make detailed designs more simple using test user scenarios.",
    },
    {
      company: "Denso",
      link: "https://www.denso.com/global/home/",
      badges: [],
      title: "Software Engineer",
      start: "2014",
      end: "2016",
      description:
        "Creates software that corresponds to the standard specifications, create test cases for every single condition for multiple functions, creates and modifies documents based on the standard rule of coding and unit testing.",
    },
  ],
  skills: [
    "JavaScript",
    "TypeScript",
    "React/Next.js",
    "Angular",
    "Node.js",
    "GraphQL",
    "WebSocket",
    "AWS (S3, SES, SQS, SNS)",
    "Azure DevOps",
    "Stripe",
    "Design Systems",
    "React Aria",
    "TypeORM",
    "Playwright",
    "Vercel v0",
    "agent-browser",
  ],
  projects: [
    {
      title: "Valuation",
      techStack: [
        "TypeScript",
        "React",
        "NextJS",
        "Tailwind CSS",
        "Framer Motion",
        "Jotai",
        "Zustand",
        "NestJS",
        "GraphQL",
        "AWS",
        "Azure DevOps",
        "Stripe",
        "Design System",
        "React Aria",
        "TypeORM",
        "Playwright",
      ],
      description:
        "Valuation is the application of assessing the worth or value of a property.",
      link: {
        label: "valuation",
        href: "https://demo.business.wealth-park.com/",
      },
    },
    {
      title: "Owner Web App",
      techStack: [
        "TypeScript",
        "React",
        "Styled Components",
        "Tailwind CSS",
        "Framer Motion",
        "RadixUI",
        "Jotai",
        "Webpack",
        "GraphQL",
        "AWS",
        "Azure DevOps",
        "Stripe",
        "Design System",
        "React Aria",
        "TypeORM",
        "Playwright",
      ],
      description:
        "By centralizing document management, the Owner Application reduces reliance on traditional paper-based communication method.",
      link: {
        label: "owner web app",
        href: "https://owner.wealth-park.com/",
      },
    },
    {
      title: "Workflow",
      techStack: [
        "JavaScript",
        "React",
        "Styled Components",
        "Redux",
        "Vite",
        "GraphQL",
        "AWS",
        "Azure DevOps",
        "Stripe",
        "Design System",
        "React Aria",
        "TypeORM",
        "Playwright",
      ],
      description:
        "Provides comprehensive information on various activities within a property, including expenses, income, and general updates.",
      link: {
        label: "workflow",
        href: "https://demo.workflow.wealth-park.com/operation/",
      },
    },
    {
      title: "Chat Admin",
      techStack: [
        "JavaScript",
        "React",
        "Material UI",
        "Redux",
        "Websockets",
        "AWS",
        "Azure DevOps",
        "Stripe",
        "Design System",
        "React Aria",
        "TypeORM",
        "Playwright",
      ],
      description:
        "Serves as the instant messaging counterpart, providing real-time responses, file sharing capabilities, and robust organization features.",
      link: {
        label: "chat-admin",
        href: "https://demo.wealth-park.com/webchat/",
      },
    },
    {
      title: "Looking Glass",
      techStack: ["JavaScript", "React", "Cordova", "XCode"],
      description:
        "Fashion app offering personalized styling services tailored to individual style and preferences.",
      link: {
        label: "chat-admin",
        href: "https://lookingglasslifestyle.com/",
      },
    },
    {
      title: "MerchantSpring",
      techStack: [
        "TypeScript",
        "React",
        "Material UI",
        "Redux",
        "Styled Components",
        "Node.js",
        "Express",
        "MySQL",
        "MongoDB",
        "Cypress",
        "Jest",
        "Webpack",
        "Docker",
        "Terraform",
        "AWS",
        "Stripe",
        "Design System",
        "React Aria",
        "TypeORM",
        "Playwright",
      ],
      description:
        "Agencies and investors read marketplace analytics across seller accounts.",
      link: {
        label: "merchantspring",
        href: "https://mm.merchantspring.io/",
      },
    },
    {
      title: "Lagoon",
      techStack: [
        "TypeScript",
        "React",
        "Redux",
        "Styled Components",
        "Firebase",
      ],
      description:
        "Redefines the way people connect and communicate, offering an immersive and feature-rich experience",
      link: {
        label: "lagoon",
        href: "https://lagoon.chat/",
      },
    },
    {
      title: "Iris",
      techStack: [
        "TypeScript",
        "React",
        "Styled Components",
        "Material UI",
        "Redux",
        "Cypress",
        "Jest",
        "Webpack",
      ],
      description:
        "Provides a solution designed to revolutionize the way SaaS companies approach customer support and success",
      link: {
        label: "iris",
        href: "https://my.asurion.com/",
      },
    },
    {
      title: "Rakuten Travel",
      techStack: [
        "JavaScript",
        "React",
        "Flux",
        "Redux",
        "LESS/SCSS",
        "Cypress",
        "Jest",
        "Webpack",
      ],
      description:
        "A premier online travel agency and a leading force in the Japanese travel industry",
      link: {
        label: "rakuten travel",
        href: "https://travel.rakuten.com/",
      },
    },
    {
      title: "ADT(Alliance Diagnostic Tool)",
      techStack: [
        "JavaScript",
        "Angular",
        "Bower",
        "Grunt",
        "LESS/SCSS",
        "Jest",
      ],
      description:
        "ADT Tool brings unprecedented efficiency to the automotive diagnostic content lifecycle.",
    },
    {
      title: "ECUs Non-Toyota-Diesel",
      techStack: ["C", "Misra C", "GAIO Tech"],
      description: "Focusing on advancing engine technology beyond vehicles",
    },
    {
      title: "Lawson Smart Report",
      techStack: ["Java", "Spring Tools Suite"],
      description:
        "Offers a streamlined platform for designing and generating insightful reports with ease",
    },
  ],
} as const;
