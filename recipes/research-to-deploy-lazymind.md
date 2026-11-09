# Research-to-Deploy as a Reviewable LazyMind Workflow

This recipe maps the `research-to-deploy` Skill into an inspectable workflow
without replacing its deployment rules. Use the native Skill for a single
agent session. Use the workflow path when research, generated infrastructure,
approval, execution, and recovery need separate states and evidence.

## Pinned source and contract

- Repository: [`jeremylongshore/tons-of-skills-marketplace`](https://github.com/jeremylongshore/tons-of-skills-marketplace)
- Commit: [`0500b275e963c027f6b410e8c49c0446945c574e`](https://github.com/jeremylongshore/tons-of-skills-marketplace/commit/0500b275e963c027f6b410e8c49c0446945c574e)
- Skill: [`skills/.curated/research-to-deploy/SKILL.md`](https://github.com/jeremylongshore/tons-of-skills-marketplace/blob/0500b275e963c027f6b410e8c49c0446945c574e/skills/.curated/research-to-deploy/SKILL.md), Git blob `e6e9878c6ff1a36011ab3db923bf25facbbebf3a`
- Required reference: [`references/validation-and-execution.md`](https://github.com/jeremylongshore/tons-of-skills-marketplace/blob/0500b275e963c027f6b410e8c49c0446945c574e/skills/.curated/research-to-deploy/references/validation-and-execution.md), Git blob `522e42086f8a2debf266bd9f2130b9a3b5ff68b4`
- Version and license: `0.15.0`, MIT
- Optional tools: current provider documentation access and, only when the
  selected checks need them, Terraform, Docker, or kubectl. Credentials and an
  authenticated cloud account are not required for generation-only runs.

The source Skill's inputs are the application, target platform, environment,
scope, and known operational constraints. Its outputs can include a research
summary, infrastructure configuration, CI/CD proposal, cost model, runbook,
and evidence receipt. Keep those contracts when reviewing the conversion.

## Setup

1. Install [LazyMind](https://github.com/LazyAGI/LazyMind#quick-start).
2. Add the pinned public repository and Skill path above to the LazyMind Skills
   workspace, then choose **Skill → Workflow**.
3. Before publishing or running the generated workflow, compare its steps,
   inputs, outputs, and tool permissions with the pinned Skill and reference.
   Conversion does not itself validate provider guidance or authorize a cloud
   operation.

## Workflow contract

Preserve these stages and state boundaries:

1. **Scope the target** — capture the application, platform, environment,
   account or project, region, state owner, and requested operating boundary.
   An ambiguous target blocks environment reads and writes.
2. **Collect dated evidence** — inspect the repository and current primary
   provider documentation. Save source URLs, access dates, supported versions,
   and unresolved contradictions as a research artifact.
3. **Review the architecture** — present the proposed architecture,
   alternatives, cost assumptions, security boundaries, and open decisions.
   Estimates are not spending caps, compliance evidence, or SLAs.
4. **Generate the requested artifacts** — create only the necessary IaC,
   container, manifest, CI/CD, and runbook files. Keep credentials and raw
   secret-bearing state out of artifacts.
5. **Validate without overstating** — run only available, relevant checks and
   record each result as generated, checked, deployed, or unverified. A missing
   tool or credential produces a skipped-check receipt, not a successful
   validation claim.
6. **Human approval gate** — show the exact target and change plan, including
   replacements, deletions, public access, privilege, and billing effects. Keep
   the workflow pending unless execution of that plan is explicitly authorized.
7. **Execute and recover** — if authorized, perform only the approved operation.
   On timeout or partial success, preserve operation and resource identifiers,
   inspect the same operation, and do not start a blind retry.
8. **Verify and hand off** — check resource status, application health, and the
   requested functional behavior. Deliver the evidence receipt, remaining gaps,
   and rollback or restore path as separate artifacts.

## Trial path

Start with the source Skill's restricted-environment example:

> Draft Cloud Run Terraform and a runbook for this API. Do not access or change
> a cloud account, and mark every account-dependent check as unverified.

For a native baseline, run the pinned Skill once with the same request. For the
workflow run, expect separate research, architecture, configuration, validation,
approval, and evidence artifacts. Then check that:

- no cloud read, apply, deployment, or account mutation occurs;
- the provider sources and their access dates remain visible;
- generated files are not reported as checked or deployed;
- the approval stage remains pending because execution was not authorized; and
- a missing project ID or Terraform executable produces an actionable blocked
  or skipped result without discarding the completed research and configuration.

This is a static runtime mapping and trial contract, not evidence that this
specific conversion has completed an end-to-end deployment. It does not claim
that LazyMind improves deployment quality or that the Skill author endorses
LazyMind.
