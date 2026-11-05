# Experiment Watchdog

Persist the last observed run and metric, compare deltas on each wakeup, and stop after completion, failure, or a fixed budget.

```text
/loop 15m inspect the latest run, compare metrics with state.json, and report only changes
```

Treat this as a recipe template: connect it to the project's own metrics and verification commands.
