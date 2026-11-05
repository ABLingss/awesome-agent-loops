# PR Babysitting

Use a recurring prompt to inspect CI and review state, take only authorized fixes, and stop when the PR is merged or closed.

```text
/loop 20m check CI and review comments; fix only actionable failures; stop when merged or closed
```

This syntax is provided by DSH `dsh-loop` or Claude Code's native `/loop`; Codex needs an external scheduler or a goal-driven session.
