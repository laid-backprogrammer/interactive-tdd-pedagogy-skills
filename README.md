# Interactive TDD Pedagogy Skills

Agent skill package for guided project takeover, code-reading practice, and contract-gated red-green-refactor learning.

## Install

Install from GitHub with the skills installer:

```bash
npx skills@latest add laid-backprogrammer/interactive-tdd-pedagogy-skills
```

Or link it locally into Claude Code:

```bash
npm run link:claude
```

This links the packaged skill into Claude Code's default skill directory:
`~/.claude/skills`. Set `CLAUDE_SKILLS_DIR` to test or deploy to a different
directory.

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
