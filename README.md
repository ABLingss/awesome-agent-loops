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
