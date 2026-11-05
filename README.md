# Awesome Agent Loops

A practical directory of agent loop skills, workflow automations, and cloud delivery recipes for DSH, Codex, Claude Code, and compatible agents.

Install the curated skills in one pass:

```sh
curl -fsSL https://raw.githubusercontent.com/ABLingss/awesome-agent-loops/main/install-skills.sh | bash
```

For DSH plugins too, clone the repository and run `./install-skills.sh --dsh`.

## Contents

- [DSH Skills](#dsh-skills)
- [Workflow Skills](#workflow-skills)
- [Cloud & Delivery Skills](#cloud--delivery-skills)
- [Engineering Skills](#engineering-skills)
- [Research & Automation Skills](#research--automation-skills)

## DSH Skills

- [dsh-loop](https://github.com/XiaoWind/dsh-loop) — Adds `/loop 30m <task>`, status, resume, and stop to DeepSeek Harness.
- [dsh-mnemon-source-skills](https://github.com/omdsh-dev/dsh-mnemon/tree/main/plugins/dsh-mnemon-source-skills) — Stores, evolves, and evaluates reusable DSH skills.
- [dsh-skill-mcp-panel](https://github.com/Fishquito7/dsh-skill-mcp-panel) — Manages DSH skills and MCP servers from one panel.
- [dsh-research-report](https://github.com/PerryLink/dsh-research-report) — Turns repeated research runs into evidence-backed reports.
- [dsh-permission-rules](https://github.com/PerryLink/dsh-permission-rules) — Adds allow, deny, and ask boundaries around long-running DSH work.
- [dsh-context](https://github.com/bowenliang123/dsh-context) — Inspects and manages context growth during long agent runs.
- [dsh-deja](https://github.com/vshulcz/deja-vu) — Recalls searchable history from previous coding-agent sessions.
- [dsh-undo-savepoint](https://github.com/lire1131/dsh-undo-savepoint) — Rolls back broken plugin trees and configuration changes.
- [cc-safety-net](https://github.com/kenryu42/cc-safety-net) — Blocks destructive commands and secret-file access from coding agents.
- [dsh-computer-use](https://github.com/Anionex/dsh-computer-use) — Adds guarded macOS computer-use actions for agent workflows.
- [dsh-vision-toolkit](https://github.com/Anionex/dsh-vision-toolkit) — Adds OCR, grounding, UI restoration, and pixel-diff actions.
- [dsh-subagent-codex](https://github.com/deepseek-ai/deepseek-harness/tree/main/packages/subagent/subagent-codex) — Lets DSH delegate a bounded task to Codex.
- [dsh-subagent-claude-code](https://github.com/deepseek-ai/deepseek-harness/tree/main/packages/subagent/subagent-claude-code) — Lets DSH delegate a bounded task to Claude Code.
- [dsh-tool-subagent](https://github.com/deepseek-ai/deepseek-harness/tree/main/packages/subagent/tool-subagent) — Exposes subagent delegation as a model-facing tool.
- [dsh-mnemon-source-documents](https://github.com/omdsh-dev/dsh-mnemon/tree/main/plugins/dsh-mnemon-source-documents) — Makes project documents available as a memory source.
- [dsh-mnemon-source-runtime](https://github.com/omdsh-dev/dsh-mnemon/tree/main/plugins/dsh-mnemon-source-runtime) — Provides runtime state as a composable memory source.
- [dsh-mnemon-source-memory-spaces](https://github.com/omdsh-dev/dsh-mnemon/tree/main/plugins/dsh-mnemon-source-memory-spaces) — Connects durable memory spaces to DSH context.
- [dsh-mnemon-strategy-auto-capture](https://github.com/omdsh-dev/dsh-mnemon/tree/main/plugins/dsh-mnemon-strategy-auto-capture) — Captures useful durable memory during a turn.
- [dsh-mnemon-strategy-default-three-tier](https://github.com/omdsh-dev/dsh-mnemon/tree/main/plugins/dsh-mnemon-strategy-default-three-tier) — Selects context through an explicit three-tier strategy.
- [dsh-mnemon-strategy-light-context](https://github.com/omdsh-dev/dsh-mnemon/tree/main/plugins/dsh-mnemon-strategy-light-context) — Caps projected context to protect loop budgets.

## Workflow Skills

- [find-skills](https://www.skills.sh/vercel-labs/skills/find-skills) — Finds and installs another skill from the open ecosystem.
- [grill-me](https://www.skills.sh/mattpocock/skills/grill-me) — Stress-tests a plan before an autonomous run starts.
- [to-spec](https://www.skills.sh/mattpocock/skills/to-spec) — Converts an idea into an executable specification.
- [to-tickets](https://www.skills.sh/mattpocock/skills/to-tickets) — Breaks a specification into trackable implementation tasks.
- [implement](https://www.skills.sh/mattpocock/skills/implement) — Drives an implementation task through code and checks.
- [handoff](https://www.skills.sh/mattpocock/skills/handoff) — Leaves a durable handoff for the next agent or loop iteration.
- [triage](https://www.skills.sh/mattpocock/skills/triage) — Classifies incoming work before choosing an execution path.
- [agent-browser](https://www.skills.sh/vercel-labs/agent-browser/agent-browser) — Runs persistent browser actions across sequential agent commands.

## Cloud & Delivery Skills

- [google-agents-cli-workflow](https://www.skills.sh/google/agents-cli/google-agents-cli-workflow) — Scaffolds, evaluates, deploys, and observes agents on Google Cloud.
- [google-agents-cli-scaffold](https://www.skills.sh/google/agents-cli/google-agents-cli-scaffold) — Adds Cloud Run, GKE, and CI/CD scaffolding to an agent project.
- [google-agents-cli-deploy](https://www.skills.sh/google/agents-cli/google-agents-cli-deploy) — Deploys agents with Terraform, secrets, rollout, and rollback workflows.
- [cloud-operator](https://www.skills.sh/google/skills/cloud-operator) — Delegates GCP infrastructure, rollout, incident, and cost operations.
- [design-deploy](https://www.skills.sh/google/skills/design-deploy) — Designs and validates GCP infrastructure through Terraform before deployment.
- [research-to-deploy](https://www.skills.sh/jeremylongshore/tons-of-skills-marketplace/research-to-deploy) — Turns cloud research into reviewed Terraform, Pulumi, Docker, or Kubernetes output.
- [senior-devops](https://www.skills.sh/borghei/claude-skills/senior-devops) — Generates CI/CD, container, Kubernetes, Terraform, rollout, and rollback workflows.
- [cc-devops-skills](https://www.skills.sh/seaworld008/commonly-used-high-value-skills/cc-devops-skills) — Covers delivery pipelines, Kubernetes, observability, incidents, and reliability.
- [Devops Cloud Bundle](https://www.skills.sh/mayurrathi/awesome-agent-skills/devops-cloud-bundle) — Bundles Docker, Kubernetes, Helm, Terraform, Ansible, Pulumi, and CI/CD skills.
- [full-stack DevOps skills](https://www.skills.sh/full-stack-skills/devops-skills) — Provides Kubernetes, Terraform, GitLab CI, GitHub Actions, Ansible, and CloudFormation skills.
- [flutter-ci-cd](https://www.skills.sh/thienqo/flutter-skills/flutter-ci-cd) — Builds provider-preserving CI/CD workflows with release and secret boundaries.

## Engineering Skills

- [tdd](https://www.skills.sh/mattpocock/skills/tdd) — Keeps each loop on a red, green, refactor testing cycle.
- [code-review](https://www.skills.sh/mattpocock/skills/code-review) — Reviews a change set before a loop declares success.
- [diagnosing-bugs](https://www.skills.sh/mattpocock/skills/diagnosing-bugs) — Applies an observe, hypothesize, test, verify debugging loop.
- [improve-codebase-architecture](https://www.skills.sh/mattpocock/skills/improve-codebase-architecture) — Finds architectural friction and proposes testable refactors.
- [systematic-debugging](https://www.skills.sh/obra/superpowers/systematic-debugging) — Uses hypothesis-driven debugging instead of repeated guessing.
- [frontend-design](https://www.skills.sh/anthropics/skills/frontend-design) — Produces deliberate UI direction instead of generic agent output.
- [web-design-guidelines](https://www.skills.sh/vercel-labs/agent-skills/web-design-guidelines) — Audits web UI against concrete quality rules.
- [webapp-testing](https://www.skills.sh/officialskills/webapp-testing) — Tests local web applications through browser automation.

## Research & Automation Skills

- [research](https://www.skills.sh/mattpocock/skills/research) — Runs bounded research with explicit sources and outputs.
- [grill-with-docs](https://www.skills.sh/mattpocock/skills/grill-with-docs) — Questions a design against its repository documentation.
- [ui-test](https://officialskills.sh/skill/ui-test) — Runs adversarial UI checks before a loop stops.
- [web-quality-audit](https://officialskills.sh/skill/web-quality-audit) — Verifies performance, accessibility, SEO, and best practices.
- [variant-analysis](https://officialskills.sh/skill/variant-analysis) — Searches for related vulnerabilities after one is found.
- [yeet](https://officialskills.sh/skill/yeet) — Automates the final Git staging-to-pull-request path.
- [remotion-best-practices](https://www.skills.sh/remotion-dev/skills/remotion-best-practices) — Keeps repeated video-generation runs consistent.
- [skill-creator](https://www.skills.sh/anthropics/skills/skill-creator) — Creates, tests, and publishes a reusable skill.
- [Ralph Loop plugin](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/ralph-loop) — Runs goal-oriented Claude Code iterations with a stop condition.

Each link is an external skill or plugin; inspect its source and permissions before installing it.
