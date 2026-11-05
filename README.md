# Awesome Agent Loops

A curated list of agent loop commands, skills,
workflows, and practical recipes.

## Contents

- [Harnesses](#harnesses)
- [Skills](#skills)
- [Recipes](#recipes)
- [Resources](#resources)

## Harnesses

- [`dsh-loop`](https://github.com/XiaoWind/dsh-loop) — DSH `/loop` plugin: interval, persistence, status, resume, and stop.
- [`dsh-mnemon`](https://github.com/omdsh-dev/dsh-mnemon) — DSH memory and context composition for stateful agent work.
- [`dsh-skill-mcp-panel`](https://github.com/Fishquito7/dsh-skill-mcp-panel) — Manage DSH skills and MCP servers from a panel.
- [`dsh-research-report`](https://github.com/PerryLink/dsh-research-report) — Evidence ledger and verifiable report workflow for DSH.
- [`dsh-permission-rules`](https://github.com/PerryLink/dsh-permission-rules) — Permission and network boundaries for long-running DSH work.

## Skills

- [Claude Code `/loop`](https://code.claude.com/docs/en/scheduled-tasks#run-a-prompt-repeatedly-with-loop) — Re-run a prompt or allowed skill on an interval.
- [DSH skills source](https://github.com/omdsh-dev/dsh-mnemon/tree/main/plugins/dsh-mnemon-source-skills) — Skill management, evolution suggestions, and evidence trajectories.
- [Local skill inventory](skills/README.md) — Skills found in the audited Codex / DSH environment.

## Recipes

- [PR babysitting](recipes/pr-babysitting.md) — Poll CI and review state, then stop when merged or closed.
- [Experiment watchdog](recipes/experiment-watchdog.md) — Poll metrics and logs with persisted state and a budget.
- [Research watch](recipes/research-watch.md) — Re-run a source check and append only new evidence.

## Resources

- [Claude Code scheduled tasks](https://code.claude.com/docs/en/scheduled-tasks) — Native `/loop`, cron, expiry, and session boundaries.
- [Codex loop request #15679](https://github.com/openai/codex/issues/15679) — Upstream `/loop` proposal, closed as not planned; use goals or an external scheduler.
- [DSH loop install notes](https://github.com/XiaoWind/dsh-loop#安装) — DSH plugin installation and profile restart requirements.

## Community Picks

- [Anthropic Ralph Loop plugin](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/ralph-loop) — Official Claude Code plugin for goal-oriented iteration.
- [SantanderAI Ralph](https://github.com/SantanderAI/ralph) — Fresh-session Bash / PowerShell loop for coding CLIs.
- [Ralph Claude Code](https://github.com/frankbria/ralph-claude-code) — Stop-aware autonomous loop with state and verification hooks.
- [Pi Ralph Loop](https://github.com/lnilluv/pi-ralph-loop) — Skill-driven Ralph loop with acceptance gates.
- [Ralph Loop Dashboard](https://github.com/tjegbejimba/ralph-loop-dashboard) — Planning and orchestration skills around a Ralph workflow.
- [Autonomous Coding Ralph Loop](https://github.com/fnusatvik07/autonomous-coding-ralph-loop) — Spec, code, test, and QA loop example.
- [Agent Skills](https://github.com/vercel-labs/agent-skills) — Public skills collection for coding agents.
- [Selamy Agent Skills](https://github.com/selamy-labs/agent-skills) — Reusable `SKILL.md` workflows for coding and operations.
- [Jorge Agent Skills](https://github.com/jorgeasaurus/agent-skills) — Development skills including automation recommendations.
- [Awesome Agent Skills](https://github.com/junminhong/awesome-agent-skills) — Curated skills and multi-agent workflow index.
- [Mouadja Skills](https://github.com/mouadja02/skills) — Large categorized collection of reusable agent skills.
- [AgentHouse Skills](https://github.com/AgentHouse-org/skills) — Cross-agent open-source skills collection.
- [Common Skills](https://github.com/warpdotdev/common-skills) — Shared skills intended for reuse across repositories.
- [Skills Manager](https://github.com/xingkongliang/skills-manager) — Manage skills across Claude Code, Codex, Cursor, and more.
- [Claude Skills](https://github.com/GeiserX/claude-skills) — Durable repository workflows and loop-related hooks.
- [Orchestrate Ralph](https://github.com/n1mmy/orchestrate-ralph) — Orchestrator skill for multi-step autonomous coding runs.
- [Ralph Architecture Sweep](https://github.com/Aijo24/ralph-architecture-sweep) — Analysis-first Ralph skill for filing architecture issues.
- [OpenAI Codex](https://github.com/openai/codex) — Codex CLI source and goal-driven execution reference.
- [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness) — DSH core source and extension model.
- [Claude Code docs](https://code.claude.com/docs/en) — Official command, skill, and scheduling reference.
