#!/usr/bin/env python3
"""Generate FrontEnd Chapter brag diagrams as SVG. No external links."""

from pathlib import Path

OUT = Path(__file__).resolve().parent
FONT = (
    "font-family: 'Helvetica Neue', Helvetica, Arial, 'PingFang SC', "
    "'Microsoft YaHei', 'Microsoft JhengHei', 'SimHei', sans-serif;"
)


def esc(value: str) -> str:
    return (
        value.replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
        .replace('"', "&quot;")
    )


def svg_open(width: int, height: int) -> list[str]:
    lines = [
        f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {width} {height}" width="{width}" height="{height}">',
        "  <style>",
        f"    text {{ {FONT} }}",
        "  </style>",
        "  <defs>",
        '    <marker id="arrow-blue" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">',
        '      <polygon points="0 0, 10 3.5, 0 7" fill="#2563eb"/>',
        "    </marker>",
        '    <marker id="arrow-red" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">',
        '      <polygon points="0 0, 10 3.5, 0 7" fill="#dc2626"/>',
        "    </marker>",
        '    <marker id="arrow-green" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">',
        '      <polygon points="0 0, 10 3.5, 0 7" fill="#16a34a"/>',
        "    </marker>",
        '    <marker id="arrow-orange" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">',
        '      <polygon points="0 0, 10 3.5, 0 7" fill="#ea580c"/>',
        "    </marker>",
        "  </defs>",
        f'  <rect width="{width}" height="{height}" fill="#ffffff"/>',
    ]
    return lines


def text(x, y, value, size=14, fill="#111827", anchor="middle", weight="400"):
    return (
        f'<text x="{x}" y="{y}" text-anchor="{anchor}" fill="{fill}" '
        f'font-size="{size}" font-weight="{weight}">{esc(value)}</text>'
    )


def rect(x, y, w, h, fill, stroke, rx=8, sw=1.5, dash=None):
    dash_attr = f' stroke-dasharray="{dash}"' if dash else ""
    return (
        f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="{rx}" ry="{rx}" '
        f'fill="{fill}" stroke="{stroke}" stroke-width="{sw}"{dash_attr}/>'
    )


def lines_in_box(cx, top, content, size=13, fill="#111827", weight="400", gap=16):
    out = []
    for index, line in enumerate(content):
        out.append(text(cx, top + index * gap, line, size=size, fill=fill, weight=weight))
    return out


def write(name: str, lines: list[str]) -> None:
    path = OUT / name
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(path.name)


def state_choice() -> None:
    w, h = 1088, 780
    lines = svg_open(w, h)
    lines.append(text(40, 36, "State management, January 2022", size=20, anchor="start", weight="600"))
    lines.append(text(40, 58, "One library and one mental model for WealthPark frontend apps.", size=13, fill="#6b7280", anchor="start"))
    lines.append(text(40, 78, "Problems named: prop drilling, performance, re-renders, mental models.", size=13, fill="#6b7280", anchor="start"))

    headers = [
        (216, "XState", "#faf5ff", "#ddd6fe", "1.5"),
        (428, "Zustand", "#eff6ff", "#2563eb", "2.5"),
        (640, "Jotai", "#f0fdf4", "#86efac", "1.5"),
        (852, "Valtio", "#fff7ed", "#fdba74", "1.5"),
    ]
    rows = [
        ["Principle", "State machines", "Flux", "Atoms", "Proxy"],
        ["Closest to", "Complex logic", "Redux", "Recoil", "MobX"],
        ["Job on the page", "Hard flows", "Global store", "Context-like", "Observable"],
        ["Mark's call", "", "Chosen", "", ""],
        ["William, same page", "", "Global store", "Context-like", "Different jobs"],
    ]
    lines.append(rect(36, 98, 168, 44, "#f9fafb", "#d1d5db", rx=8))
    lines.append(text(120, 125, "Lens", size=13, weight="600"))
    for x, label, fill, stroke, sw in headers:
        lines.append(rect(x, 98, 200, 44, fill, stroke, sw=sw))
        lines.append(text(x + 100, 125, label, size=15, weight="600"))

    for r, row in enumerate(rows):
        y = 154 + r * 52
        bg = "#ffffff" if r % 2 == 0 else "#f9fafb"
        lines.append(rect(36, y, 168, 46, bg, "#e5e7eb"))
        lines.append(text(120, y + 28, row[0], size=12, weight="600"))
        for c, (x, _label, fill, stroke, sw) in enumerate(headers):
            cell_fill = fill if c == 1 else bg
            cell_stroke = "#2563eb" if c == 1 else "#e5e7eb"
            lines.append(rect(x, y, 200, 46, cell_fill, cell_stroke, sw=2 if c == 1 else 1))
            value = row[c + 1]
            if value:
                lines.append(text(x + 100, y + 28, value, size=13, weight="600" if value == "Chosen" else "400"))

    lines.append(rect(36, 430, 640, 310, "#ffffff", "#d1d5db"))
    lines.append(text(56, 458, "Why Zustand, in his words", size=15, anchor="start", weight="600"))
    reasons = [
        "1  Same method as Redux, so the learning curve is short.",
        "2  Loose coupling when the app is scaled up or down.",
        "3  A lighter package than the others he compared.",
        "4  Immer is a skill worth having once it is learned.",
        "5  A selector hook keeps a later move small,",
        "    including a move back to React context.",
        "6  Data flows one way.",
    ]
    for i, reason in enumerate(reasons):
        lines.append(text(56, 492 + i * 30, reason, size=14, anchor="start"))

    lines.append(rect(692, 430, 360, 148, "#f0fdf4", "#86efac"))
    lines.append(text(712, 458, "William, on the same page", size=14, anchor="start", weight="600"))
    lines.append(text(712, 488, "Zustand for the global store.", size=14, anchor="start"))
    lines.append(text(712, 512, "Jotai where context would have", size=14, anchor="start"))
    lines.append(text(712, 536, "been used. He would use both.", size=14, anchor="start"))

    lines.append(rect(692, 592, 360, 148, "#fff7ed", "#fdba74"))
    lines.append(text(712, 620, "What he later wrote down", size=14, anchor="start", weight="600"))
    lines.append(text(712, 650, "October 2023, Owner Web App.", size=14, anchor="start"))
    lines.append(text(712, 674, "The store that shipped was Jotai,", size=14, anchor="start"))
    lines.append(text(712, 698, "not Zustand. See the next diagram.", size=14, anchor="start"))
    lines.append("</svg>")
    write("01-state-choice.svg", lines)


def owa_flow() -> None:
    w, h = 1088, 720
    lines = svg_open(w, h)
    lines.append(text(40, 36, "Owner Web App store, October 2023", size=20, anchor="start", weight="600"))
    lines.append(text(40, 60, "OWA-590. unistore removed. Staging stress test, one demo owner, one navigation sequence.", size=13, fill="#6b7280", anchor="start"))

    def panel(x, title, tint, stroke, steps, timing_a, timing_b, arrow):
        lines.append(rect(x, 84, 490, 560, tint, stroke, sw=1.5))
        lines.append(text(x + 245, 116, title, size=16, weight="600"))
        y = 140
        for index, (label, sub) in enumerate(steps):
            lines.append(rect(x + 95, y, 300, 58, "#ffffff", "#d1d5db"))
            lines.append(text(x + 245, y + 26, label, size=14, weight="600"))
            lines.append(text(x + 245, y + 46, sub, size=12, fill="#6b7280"))
            if index < len(steps) - 1:
                y2 = y + 58
                lines.append(
                    f'<line x1="{x + 245}" y1="{y2}" x2="{x + 245}" y2="{y2 + 28}" '
                    f'stroke="{arrow}" stroke-width="1.5" marker-end="url(#arrow-{"red" if arrow == "#dc2626" else "green"})"/>'
                )
            y += 92
        lines.append(rect(x + 24, 548, 442, 76, "#ffffff", stroke, sw=1.5))
        lines.append(text(x + 245, 578, timing_a, size=16, weight="600"))
        lines.append(text(x + 245, 602, timing_b, size=13, fill="#6b7280"))

    panel(
        36,
        "Before",
        "#fef2f2",
        "#fecaca",
        [
            ("Owner screens", "Cash flow, rooms, chat"),
            ("unistore", "Global store, tokens inside it"),
            ("Local state", "Same data kept a second time"),
            ("API", "No request cache"),
        ],
        "MyCashFlow average  0.3443s",
        "Full sequence  01:36",
        "#dc2626",
    )
    panel(
        562,
        "After",
        "#f0fdf4",
        "#86efac",
        [
            ("Owner screens", "Same pages"),
            ("Jotai atoms", "One owner for each piece of data"),
            ("React Query", "Cache on the request"),
            ("API", "Types sit with the response"),
        ],
        "MyCashFlow average  0.0116s",
        "Full sequence  00:34",
        "#16a34a",
    )
    lines.append(text(40, 678, "The page states 2698% faster for that MyCashFlow stress test.", size=14, anchor="start", weight="600"))
    lines.append(text(40, 700, "Also written: tokens left the store, chat records were de-duplicated, unused actions were removed.", size=13, fill="#6b7280", anchor="start"))
    lines.append("</svg>")
    write("02-owa-store.svg", lines)


def bff_target() -> None:
    w, h = 1120, 760
    lines = svg_open(w, h)
    lines.append(text(40, 36, "BFF decoupling, the target", size=20, anchor="start", weight="600"))
    lines.append(text(40, 58, "Consumers call servers that already exist. No new service. Plan written through January 2026.", size=13, fill="#6b7280", anchor="start"))

    lines.append(rect(36, 80, 1048, 110, "#eff6ff", "#bfdbfe"))
    lines.append(text(56, 104, "Clients", size=12, fill="#2563eb", anchor="start", weight="600"))
    for x, label, sub in (
        (80, "Mobile apps", "OMA"),
        (340, "Web apps", "Owner web, workflow"),
        (600, "HTTP client", "fetch or axios"),
        (860, "No SDK", "not required"),
    ):
        lines.append(rect(x, 116, 200, 56, "#ffffff", "#bfdbfe"))
        lines.append(text(x + 100, 138, label, size=14, weight="600"))
        lines.append(text(x + 100, 156, sub, size=12, fill="#6b7280"))

    lines.append(rect(36, 214, 1048, 130, "#fef2f2", "#fecaca", dash="6,4"))
    lines.append(text(56, 236, "Remove this layer", size=12, fill="#dc2626", anchor="start", weight="600"))
    for x, label, count in (
        (56, "OMA BFF", "54 endpoints"),
        (310, "Workflow BFF", "~30 endpoints"),
        (564, "Frontend BFF", "~20 endpoints"),
        (818, "Aggregator", "15 endpoints"),
    ):
        lines.append(rect(x, 252, 230, 70, "#ffffff", "#fca5a5", dash="5,3"))
        lines.append(text(x + 115, 280, label, size=14, weight="600"))
        lines.append(text(x + 115, 300, count, size=12, fill="#6b7280"))

    # Left margin, under the removed layer, into the top of the gateway.
    lines.append(
        '<path d="M 180,172 L 180,196 L 16,196 L 16,358 L 560,358 L 560,372" fill="none" '
        'stroke="#2563eb" stroke-width="2" marker-end="url(#arrow-blue)"/>'
    )
    lines.append(rect(196, 178, 78, 18, "#ffffff", "none"))
    lines.append(text(200, 192, "skip BFF", size=12, fill="#2563eb", anchor="start", weight="600"))

    lines.append(rect(360, 372, 400, 64, "#eff6ff", "#2563eb", sw=2))
    lines.append(text(560, 398, "API Gateway", size=16, weight="600"))
    lines.append(text(560, 418, "Routing only. GraphQL mapped to REST.", size=12, fill="#6b7280"))

    lines.append(text(56, 462, "Existing servers", size=12, fill="#16a34a", anchor="start", weight="600"))
    lines.append(rect(48, 478, 1032, 156, "#f0fdf4", "#86efac"))
    lines.append(
        '<line x1="560" y1="436" x2="560" y2="478" stroke="#16a34a" stroke-width="2" marker-end="url(#arrow-green)"/>'
    )
    servers = [
        "Gateway Server",
        "Potato API",
        "Butterfly API",
        "Owner API",
        "Activity API",
        "Big Chat API",
        "Cloud Function",
        "Google Maps",
    ]
    for i, name in enumerate(servers):
        col = i % 4
        row = i // 4
        x = 56 + col * 264
        y = 484 + row * 72
        lines.append(rect(x, y, 248, 56, "#ffffff", "#86efac"))
        lines.append(text(x + 124, y + 33, name, size=14, weight="600"))

    lines.append(rect(36, 680, 1048, 56, "#f9fafb", "#e5e7eb"))
    lines.append(text(56, 704, "About 119 unique endpoints across the four repositories.", size=13, anchor="start"))
    lines.append(text(56, 722, "Schedule written on the plan: 5 phases, 12 weeks, with AI assistance. That is a plan, not a finished duration.", size=13, fill="#6b7280", anchor="start"))
    lines.append("</svg>")
    write("03-bff-target.svg", lines)


def graphos() -> None:
    w, h = 1088, 640
    lines = svg_open(w, h)
    lines.append(text(40, 36, "OMA BFF, Apollo Gateway to GraphOS Router", size=20, anchor="start", weight="600"))
    lines.append(text(40, 60, "The page marks the code migration complete, and still lists Studio, publish, deploy, and client cutover as open.", size=13, fill="#6b7280", anchor="start"))

    def column(x, title, tint, stroke, steps, arrow_color, marker):
        lines.append(rect(x, 88, 490, 500, tint, stroke))
        lines.append(text(x + 245, 120, title, size=16, weight="600"))
        y = 148
        for index, (label, sub) in enumerate(steps):
            lines.append(rect(x + 70, y, 350, 64, "#ffffff", "#d1d5db"))
            lines.append(text(x + 245, y + 28, label, size=14, weight="600"))
            lines.append(text(x + 245, y + 48, sub, size=12, fill="#6b7280"))
            if index < len(steps) - 1:
                y2 = y + 64
                lines.append(
                    f'<line x1="{x + 245}" y1="{y2}" x2="{x + 245}" y2="{y2 + 36}" '
                    f'stroke="{arrow_color}" stroke-width="1.5" marker-end="url(#{marker})"/>'
                )
            y += 104

    column(
        36,
        "Before",
        "#f9fafb",
        "#d1d5db",
        [
            ("Mobile apps", "GraphQL"),
            ("NestJS process", "Apollo Gateway inside the app"),
            ("Backend APIs", "Gateway, Potato, and the rest"),
        ],
        "#6b7280",
        "arrow-blue",
    )
    # gray marker not defined; use blue for before too but label it. I'll use blue for both and distinguish by panel. Fix the gray - I used arrow-blue. Change before stroke to blue is ok if I note it. Let me replace last column's marker... already written as arrow-blue. Good if arrow_color is gray the marker is blue which mismatches. I'll set before to blue stroke as well by editing... the function was called with #6b7280 and arrow-blue. I'll leave and fix by regenerating if I change the call. Let me fix the call - I'll patch after by using blue for before path too. Actually I'll update the call now before the file is final... I'm still building the list. Change the call:

    # The column() call already appended. I need to not have mismatched colors.
    # I'll rewrite the before arrow by not using gray. Too late in this function if I already appended.
    # I'll fix the invocation - wait, the invocation already happened in this function body above.
    # I'll change it by not having done it... I did. Let me adjust the source: replace the before call's color.
    # I'll do it in a post-pass on `lines` for the gray stroke.

    column(
        562,
        "After",
        "#eff6ff",
        "#bfdbfe",
        [
            ("Mobile apps", "GraphQL, pointed at the router"),
            ("Apollo Router, port 4000", "Rust process, GraphOS"),
            ("NestJS subgraph, port 3000", "@apollo/subgraph, gateway package removed"),
            ("Backend APIs", "REST, unchanged"),
        ],
        "#2563eb",
        "arrow-blue",
    )
    # Before column has 3 steps so it is shorter. That's ok visually? The function uses same spacing so before panel has empty space. Good.

    # Fix gray/blue mismatch
    fixed = []
    for line in lines:
        fixed.append(line.replace('stroke="#6b7280"', 'stroke="#2563eb"'))
    lines = fixed
    lines.append("</svg>")
    write("04-graphos-router.svg", lines)


def timeline() -> None:
    w, h = 1120, 640
    lines = svg_open(w, h)
    lines.append(text(40, 36, "What the FrontEnd Chapter records, by year", size=20, anchor="start", weight="600"))
    lines.append(text(40, 58, "Twelve pages created. Five more edited. 26 Aug 2021 through 30 Jan 2026.", size=13, fill="#6b7280", anchor="start"))

    years = [
        ("2021", "#fff7ed", "#fdba74", ["Dec", "WealthPark UI process.", "Spec, then build.", "CodeArtifact install.", "No full UI kit."]),
        ("2022", "#eff6ff", "#93c5fd", ["Jan", "Zustand recommended.", "Feb", "Containers, headers,", "and log shape."]),
        ("2023", "#f0fdf4", "#86efac", ["Apr", "Onboarding: Okta,", "workflow, chat-admin.", "Oct", "OWA store rewritten."]),
        ("2024", "#faf5ff", "#d8b4fe", ["Feb", "BigQuery template", "for Firebase events", "on WPB."]),
        ("2025", "#fef2f2", "#fca5a5", ["Jul  Workflow map", "Aug  Preview staging", "Oct  Schema runbook", "Nov  SPD-1157 commits"]),
        ("2026", "#f9fafb", "#d1d5db", ["Jan", "BFF plan, version 10.", "Test scope for OMA,", "OWA, and Workflow."]),
    ]
    for i, (year, fill, stroke, items) in enumerate(years):
        x = 36 + i * 178
        lines.append(rect(x, 88, 166, 36, fill, stroke))
        lines.append(text(x + 83, 112, year, size=16, weight="600"))
        lines.append(rect(x, 136, 166, 360, "#ffffff", stroke))
        for j, item in enumerate(items):
            weight = "600" if item[:3].isdigit() or item[:3] in ("Jan", "Feb", "Apr", "Oct", "Dec", "Jul", "Aug", "Nov") else "400"
            # month labels are short
            size = 13 if weight == "600" else 12
            lines.append(text(x + 12, 168 + j * 28, item, size=size, anchor="start", weight=weight))
        # stem
        lines.append(f'<line x1="{x + 83}" y1="496" x2="{x + 83}" y2="540" stroke="{stroke}" stroke-width="2"/>')
        lines.append(f'<circle cx="{x + 83}" cy="548" r="6" fill="{stroke}"/>')
    lines.append('<line x1="70" y1="548" x2="1050" y2="548" stroke="#e5e7eb" stroke-width="2"/>')
    lines.append(text(40, 600, "Edited, not authored: branch-strategy preview rule, missing-test checklist, onboarding, WealthPark UI, FrontEnd Projects.", size=13, fill="#6b7280", anchor="start"))
    lines.append(text(40, 620, "FrontEnd Projects was edited again by someone else in April 2023. Onboarding was edited again the next day.", size=13, fill="#6b7280", anchor="start"))
    lines.append("</svg>")
    write("05-timeline.svg", lines)


def shipping() -> None:
    w, h = 1088, 700
    lines = svg_open(w, h)
    lines.append(text(40, 36, "How a change gets out", size=20, anchor="start", weight="600"))
    lines.append(text(40, 60, "Two runbooks. The branch page was someone else's. The preview section and the schema page are his.", size=13, fill="#6b7280", anchor="start"))

    def flow(x, title, tint, stroke, steps, marker, color):
        lines.append(rect(x, 88, 490, 580, tint, stroke))
        lines.append(text(x + 245, 118, title, size=16, weight="600"))
        y = 144
        for index, (label, sub) in enumerate(steps):
            lines.append(rect(x + 55, y, 380, 58, "#ffffff", "#d1d5db"))
            lines.append(text(x + 245, y + 24, label, size=14, weight="600"))
            lines.append(text(x + 245, y + 44, sub, size=12, fill="#6b7280"))
            if index < len(steps) - 1:
                y2 = y + 58
                lines.append(
                    f'<line x1="{x + 245}" y1="{y2}" x2="{x + 245}" y2="{y2 + 22}" '
                    f'stroke="{color}" stroke-width="1.5" marker-end="url(#{marker})"/>'
                )
            y += 84

    flow(
        36,
        "Preview staging, August 2025",
        "#fff7ed",
        "#fdba74",
        [
            ("Name the branch", "feature/*  or  main-feature/*"),
            ("Set the pipeline variable", "CI_ENV=stag-previews-alpha"),
            ("Preview environment", "Isolated from dev"),
            ("Review", "QA, design, stakeholders"),
            ("Then merge", "Only the release goes to dev"),
        ],
        "arrow-orange",
        "#ea580c",
    )
    flow(
        562,
        "Schema publish, October 2025",
        "#eff6ff",
        "#bfdbfe",
        [
            ("Run production", "OMA BFF or Workflow BFF"),
            ("Open the Jest job", "Download schema.gql"),
            ("Apollo Studio", "Upload, replace the schema"),
            ("If the check failed", "Retry schema-checking:production"),
            ("Finish the pipeline", "Schema and check agree"),
        ],
        "arrow-blue",
        "#2563eb",
    )
    lines.append("</svg>")
    write("06-shipping.svg", lines)


def security() -> None:
    w, h = 1088, 640
    lines = svg_open(w, h)
    lines.append(text(40, 36, "Frontend security standards, 1 February 2022", size=20, anchor="start", weight="600"))
    lines.append(text(40, 60, "Three pages, each version 1. Policy he wrote. Not an audit of running clusters.", size=13, fill="#6b7280", anchor="start"))
    columns = [
        ("Containers", "#fff7ed", "#fdba74", [
            "One app per image",
            "Alpine, scratch, or distroless",
            "Pin the base tag",
            "Do not run as root",
            "No secrets in the image",
            "No SSH in the container",
            "Multi-stage build",
            "Copy only what runs",
        ]),
        ("Response headers", "#eff6ff", "#93c5fd", [
            "Content-Security-Policy",
            "Strict-Transport-Security",
            "X-Frame-Options",
            "X-Content-Type-Options",
            "Referrer-Policy",
            "Feature-Policy",
            "Check securityheaders.com",
            "QA before it goes live",
        ]),
        ("Logs", "#f0fdf4", "#86efac", [
            "DEBUG only in development",
            "INFO from staging upward",
            "ISO-8601 timestamps",
            "dd.trace_id and dd.span_id",
            "Write stdout or stderr",
            "No passwords or tokens",
            "No card numbers or PII",
            "ISO 27001 A.12.4",
        ]),
    ]
    for i, (title, fill, stroke, items) in enumerate(columns):
        x = 36 + i * 348
        lines.append(rect(x, 88, 332, 520, fill, stroke))
        lines.append(text(x + 166, 122, title, size=16, weight="600"))
        for j, item in enumerate(items):
            y = 150 + j * 52
            lines.append(rect(x + 16, y, 300, 42, "#ffffff", stroke))
            lines.append(text(x + 166, y + 26, item, size=13, weight="500"))
    lines.append("</svg>")
    write("07-security.svg", lines)


def commits() -> None:
    w, h = 960, 520
    lines = svg_open(w, h)
    lines.append(text(40, 36, "Release commits he did not want dropped", size=20, anchor="start", weight="600"))
    lines.append(text(40, 60, "SPD-1157. Owner Web App merge request 2168. Several teams, one repository.", size=13, fill="#6b7280", anchor="start"))
    items = [
        ("01", "Currency symbol", "Fallback when the currency has no symbol."),
        ("02", "Room sorting", "Order taken from the Potato API, then applied."),
        ("03", "Types", "Remove any, and remove the mutations."),
        ("04", "Expense sorting", "The same room order applied to expense."),
    ]
    for i, (num, title, detail) in enumerate(items):
        y = 96 + i * 96
        lines.append(rect(36, y, 888, 80, "#ffffff", "#d1d5db"))
        lines.append(rect(36, y, 72, 80, "#eff6ff", "#bfdbfe", rx=8))
        lines.append(text(72, y + 46, num, size=16, weight="600", fill="#2563eb"))
        lines.append(text(128, y + 34, title, size=16, anchor="start", weight="600"))
        lines.append(text(128, y + 58, detail, size=14, anchor="start", fill="#6b7280"))
    lines.append("</svg>")
    write("08-release-commits.svg", lines)


if __name__ == "__main__":
    state_choice()
    owa_flow()
    bff_target()
    graphos()
    timeline()
    shipping()
    security()
    commits()
