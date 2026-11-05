# Awesome Agent Loops

A curated list of agent loop commands, skills,
workflows, and practical recipes.

## Contents

- [Harnesses](#harnesses)
- [Skills](#skills)
- [Recipes](#recipes)
- [Resources](#resources)

## Harnesses

- [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness) — Extensible harness with plugin-provided commands.
- [`dsh-loop`](https://github.com/XiaoWind/dsh-loop) — DSH plugin adding `/loop` for timed recurring agent prompts.
- [OpenAI Codex](https://github.com/openai/codex) — Goal-driven execution is available in current Codex CLI; recurring `/loop` remains unplanned upstream.
- [Claude Code scheduled tasks](https://code.claude.com/docs/en/scheduled-tasks) — Native session-scoped `/loop` and cron scheduling.

## Skills

- [Claude Code `/loop` skill](https://code.claude.com/docs/en/scheduled-tasks#run-a-prompt-repeatedly-with-loop) — Re-run a prompt or allowed skill on an interval.
- [Codex goals](https://github.com/openai/codex) — Goal-driven iteration with explicit completion and stop boundaries.
- [DSH research report](https://github.com/deepseek-ai/deepseek-harness) — Installed local plugin for evidence-led research reports; verify availability in your profile.

## Recipes

- [PR babysitting](recipes/pr-babysitting.md) — Poll CI and review state, then stop when merged or closed.
- [Experiment watchdog](recipes/experiment-watchdog.md) — Poll metrics and logs with persisted state and a budget.
- [Research watch](recipes/research-watch.md) — Re-run a source check and append only new evidence.

## Resources

- [Codex loop request #15679](https://github.com/openai/codex/issues/15679) — Upstream `/loop` proposal, closed as not planned.
- [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness) — Official project.
