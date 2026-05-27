# Interactive TDD Pedagogy Skills

Agent skill package for guided project takeover, code-reading practice, and contract-gated red-green-refactor learning.

## Install

Install from GitHub with the skills installer:

```bash
npx skills@latest add laid-backprogrammer/interactive-tdd-pedagogy-skills
```

Or link it locally into a specific agent:

```bash
npm run link:claude
npm run link:codex
```

The local linking script supports these targets:

- `AGENT=claude` -> `~/.claude/skills`
- `AGENT=codex` -> `${CODEX_HOME:-~/.codex}/skills`
- `AGENT=agents` -> `~/.agents/skills`
- `AGENT=custom SKILLS_DIR=/path/to/skills` -> custom skills directory

The `npx skills@latest add ...` installer remains the recommended path for
multi-agent installs. The local script is a deterministic fallback when you
want to link directly into a known skills directory.

## Included Skills

- [`interactive-tdd-pedagogy`](./skills/engineering/interactive-tdd-pedagogy/SKILL.md) - A project takeover and code-reading training system for unfamiliar codebases, using Mini Behavior Contracts, Socratic checkpoints, and gated red-green-refactor loops.

## Development

List packaged skills:

```bash
npm run list:skills
```

Preview the npm package contents:

```bash
npm pack --dry-run
```
