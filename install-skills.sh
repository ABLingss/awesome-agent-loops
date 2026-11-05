#!/usr/bin/env bash
set -Eeuo pipefail

usage() {
  cat <<'EOF'
Install the curated Agent Skills into the current user's supported agents.

Usage:
  ./install-skills.sh [--dsh] [--dry-run]

Options:
  --dsh       Also install the curated DeepSeek Harness plugins.
  --dry-run   Print commands without running them.
EOF
}

install_skill() {
  local repo="$1" skill="$2"
  local command=(npx skills add "https://github.com/${repo}" --skill "$skill" -y)
  if [[ "$DRY_RUN" == true ]]; then
    printf '+ '; printf '%q ' "${command[@]}"; printf '\n'
  else
    printf '\n==> %s/%s\n' "$repo" "$skill"
    "${command[@]}"
  fi
}

install_dsh_plugin() {
  local repo="$1"
  local command=(dsh plugin --profile web add "github:${repo}")
  if [[ "$DRY_RUN" == true ]]; then
    printf '+ '; printf '%q ' "${command[@]}"; printf '\n'
  else
    printf '\n==> DSH %s\n' "$repo"
    "${command[@]}"
  fi
}

DRY_RUN=false
INSTALL_DSH=false
for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=true ;;
    --dsh) INSTALL_DSH=true ;;
    -h|--help) usage; exit 0 ;;
    *) printf 'Unknown option: %s\n' "$arg" >&2; usage >&2; exit 2 ;;
  esac
done

if [[ "$DRY_RUN" == false ]] && ! command -v npx >/dev/null 2>&1; then
  printf 'npx is required. Install Node.js first.\n' >&2
  exit 1
fi

skills=(
  'vercel-labs/skills|find-skills'
  'mattpocock/skills|grill-me'
  'mattpocock/skills|to-spec'
  'mattpocock/skills|to-tickets'
  'mattpocock/skills|implement'
  'mattpocock/skills|handoff'
  'mattpocock/skills|triage'
  'vercel-labs/agent-browser|agent-browser'
  'mattpocock/skills|tdd'
  'mattpocock/skills|code-review'
  'mattpocock/skills|diagnosing-bugs'
  'mattpocock/skills|improve-codebase-architecture'
  'obra/superpowers|systematic-debugging'
  'anthropics/skills|frontend-design'
  'vercel-labs/agent-skills|web-design-guidelines'
  'google/agents-cli|google-agents-cli-workflow'
  'google/agents-cli|google-agents-cli-scaffold'
  'google/agents-cli|google-agents-cli-deploy'
  'google/skills|cloud-operator'
  'google/skills|design-deploy'
  'jeremylongshore/tons-of-skills-marketplace|research-to-deploy'
  'borghei/claude-skills|senior-devops'
  'seaworld008/commonly-used-high-value-skills|cc-devops-skills'
  'mayurrathi/awesome-agent-skills|Devops Cloud Bundle'
  'full-stack-skills/devops-skills|kubernetes'
  'full-stack-skills/devops-skills|terraform'
  'full-stack-skills/devops-skills|github-actions'
  'full-stack-skills/devops-skills|gitlab-ci'
  'mattpocock/skills|research'
  'anthropics/skills|skill-creator'
)

for item in "${skills[@]}"; do
  IFS='|' read -r repo skill <<< "$item"
  install_skill "$repo" "$skill"
done

if [[ "$INSTALL_DSH" == true ]]; then
  if [[ "$DRY_RUN" == false ]] && ! command -v dsh >/dev/null 2>&1; then
    printf '\nDSH not found; skipping DSH plugins.\n' >&2
  else
    dsh_plugins=(
      'XiaoWind/dsh-loop'
      'Fishquito7/dsh-skill-mcp-panel'
      'PerryLink/dsh-research-report'
      'PerryLink/dsh-permission-rules'
      'lire1131/dsh-undo-savepoint'
    )
    for repo in "${dsh_plugins[@]}"; do install_dsh_plugin "$repo"; done
    printf '\nRestart DSH after plugin installation.\n'
  fi
fi

printf '\nDone. Review installed skills before granting broad tool access.\n'
