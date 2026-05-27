# Session Template

## Opening

审计结论：`<one short sentence only; no file list unless unsafe>`

本轮只看：`<one behavior path or one assertion>`

Mini Behavior Contract:
- 本轮行为：`<one sentence>`
- 触发条件：`<one sentence>`
- 预期结果：`<one sentence>`
- 状态变化：`<one sentence or "none">`

契约确认：`<one candidate field for the user to confirm or correct>`

这条断言在证明：`<plain-language business expectation>`

Assertion Mapping:
- Assertion: `<one assertion>`
- Proves: `<one contract field and meaning>`
- Does not prove: `<one limitation>`
- Related contract field: `<Mini/Extended field name>`

先问你一个小问题：`<one multiple-choice or prediction question>`

请你先回答：`<A/B/C or one short sentence>`

Stop here. Wait for the user before continuing.

## After User Answers

你的判断：`<correct / partially correct / not yet>`

只补一小点：`<one business, test, or language concept>`

你的一个小动作：`<confirm / edit one fake input / run one test / explain one failure>`

Stop here. Wait for completion or result.

## Contract-Gated RGR

原分支：`<branch before learning branch>`

学习安全分支：`<learning/topic branch>`

允许修改的文件：`<one file path>`

RGR 状态：
- Mini Contract: `<established / missing>`
- Behavior confirmed: `<yes / no>`
- Proof test designed: `<yes / no>`
- Red confirmed: `<yes / no>`
- Green fix: `<one minimal change>`
- Refactor: `<unchanged contract / skipped>`

先预测：`<which assertion should fail or pass>`

运行命令：`<minimal test command>`

退出实验：`<switch back to original branch or cleanup plan; execute only after user confirmation>`

## Closing Record

地图更新：`<current position, checkbox status, next tiny step>`

本轮证据：`<user answer, edit, test result, or self-reported blocker>`

相邻未覆盖行为：`<0-3 items, or "未发现明确相邻行为">`

我会记录的盲点：`<concept + weak/review/known/mastered>`

下次建议：`<one next behavior path or one review task>`
