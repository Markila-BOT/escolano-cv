import { GitHubIcon, LinkedInIcon } from "@/components/icons";

export const RESUME_DATA = {
  name: "Mark Escolano",
  initials: "ME",
  location: "Quezon City, Philippines",
  locationLink: "https://maps.app.goo.gl/LxsubTvFfn3x2ksf8",
  about:
    "Senior Software Engineer with a strong focus on frontend technologies.",
  summary:
    "I played a significant role in the development of a web application that serves millions of users globally. That’s when I decided to focus on the WEB because I believe in WEB development I can serve more people that want to access valuable and necessary information. I lead teams effectively, ensuring an environment where people can do their best work. Currently, I work mostly with TypeScript, React, Node.js, and GraphQL. I have over a decade of experience in working remotely with companies all around the world.",
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
        "Built UI components in React to help property owners and property managers collaborate with ease, designed and implemented a design system to be used across all UI platforms within Wealth-Park business, managing and conducting quick iteration for deployment across all environments.",
    },
    {
      company: "MerchantSpring",
      link: "https://merchantspring.io/",
      badges: ["Remote"],
      title: "Full Stack Engineer",
      start: "2020",
      end: "2021",
      description:
        "Applying and using public/private APIs that will gather merchant's shop pieces of information from different marketplaces like Amazon, eBay, Walmart, Shopee, etc. Unit testing and integration testing with Jest and Cypress.",
    },
    {
      company: "X-Climb",
      link: "https://x-climb.com/",
      badges: ["Remote", "Part Time"],
      title: "Software Engineer → Lead Software Engineer",
      start: "2020",
      end: "2021",
      description:
        "Focusing on terms of planning, designing, and implementing the web application project. conducting technical reviews and modifications in the business and technical side of the project, solo and hands-on engineer for coding and integrating to the serverless platform.",
    },
    {
      company: "Rakuten",
      link: "https://global.rakuten.com/corp/",
      badges: [],
      title: "Software Engineer",
      start: "2018",
      end: "2020",
      description:
        "Create and develop highly reusable components for the search and booking functionalities of the web application, lead a team that will focus on the animation, create test scenarios that will cover functionalities. Unit, Integration, and Snapshot testing.",
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
      techStack: ["JavaScript", "React", "Material UI", "Redux", "Websockets"],
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
      ],
      description:
        "Powerful analytics and reporting platform designed for agencies, vendors, and investors managing multiple e-commerce brands.",
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
