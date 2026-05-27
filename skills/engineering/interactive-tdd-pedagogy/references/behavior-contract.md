# Behavior Contract Reference

## Mini Behavior Contract

Every code-reading, test-writing, fixing, or refactoring session starts with:

- 本轮行为
- 触发条件
- 预期结果
- 状态变化

The agent infers the candidate contract first, then asks the user to confirm or correct exactly one field.

## Extended Contract

Fill these only when the session reaches test design, fixing, refactoring, or closeout:

- 外部依赖
- 错误路径
- 证明断言
- 未证明内容
- 相邻行为
- 边界检查

## Contract-Gated RGR

0. 建立 Mini Behavior Contract。
1. 确认行为期望。
2. 设计能证明该行为的测试。
3. 确认测试先 Red。
4. 用最小代码 Green。
5. 在测试保护下重构，且契约不变。
6. 记录 0-3 个相邻未覆盖行为；证据不足时写“未发现明确相邻行为”。

## Assertion Mapping

Every assertion explanation must include:

- Assertion
- Proves
- Does not prove
- Related contract field

Example: `completed == 5` proves expected result `5 tasks eventually complete`; it does not prove concurrency limit `2`.

## Interaction Guardrails

- Ask one contract question at a time.
- If multiple fields are missing, infer defaults and ask only about the most important field.
- Distinguish code current behavior, test-proven behavior, and user-confirmed business expectation.
- New tests must serve the active behavior contract; otherwise record them in Behavior Backlog.
- If the user is blocked, shrink the question or offer A/B candidates instead of showing more code.
