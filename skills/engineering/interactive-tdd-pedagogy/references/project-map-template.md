# Project Takeover Map Template

Use this file as the human-readable progress map for interrupted learning. Keep it short and update it after each session.

## Current Position

- Current participation level: `watch / confirm / edit-test / fix-code / review`
- Last stopping point: `<one assertion, branch, or test>`
- Next tiny step: `<one question, prediction, edit, or test>`
- Active behavior contract: `<one Mini Behavior Contract summary>`

## Core Behavior Paths

- [ ] `<behavior path 1>`: `<one-line business meaning>`
- [ ] `<behavior path 2>`: `<one-line business meaning>`
- [ ] `<behavior path 3>`: `<one-line business meaning>`
- [ ] `<behavior path 4>`: `<one-line business meaning>`
- [ ] `<behavior path 5>`: `<one-line business meaning>`

Rules:

- Create only 5-8 paths on first scan.
- Do not document the full project tree.
- Each path should be checkable through tests or Red-Green practice.
- Mark `[x]` only after the user confirms the business expectation and evidence is recorded.

## Verified Paths

### [ ] `<test or behavior name>`

- Business meaning: `<plain language>`
- Mini Contract: `<behavior / trigger / expected result / state change>`
- Key assertion: `<one assertion>`
- Proves: `<contract field proved>`
- Does not prove: `<one limitation>`
- User confirmed: `yes / no`
- Red-Green evidence: `<command and result>`
- Blindspot: `<concept and status>`

## Behavior Backlog

- [ ] `<adjacent behavior>`: `<why adjacent, what is not covered, suggested follow-up test>`

Rules:

- New tests must serve the active behavior contract. Otherwise record them here.
- Record 0-3 adjacent behaviors after each session.
- If evidence is insufficient, write `未发现明确相邻行为` instead of inventing backlog items.

## Review Queue

- [ ] `<concept>`: `<one small exercise>`
