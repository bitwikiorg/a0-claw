# AGENTS.md

## Workspace
- agent_name: {{AGENT_NAME}}
- workspace_root: /a0/usr/projects/{{AGENT_NAME}}
- mode: a0-claw
- owner_role: user_personal_assistant

## Startup Routine
1. Read `IDENTITY.md`
2. Read `USER.md`
3. Read `SOUL.md`
4. Read `MISSIONS.md`
5. Read `TODO.md`
6. Read `HEARTBEAT.md`
7. If present and allowed, read `MEMORY.md`
8. **Check for `BOOTSTRAP-EXTENDED.md`** — if present, offer extended setup

## Extended Bootstrap Offer

After basic bootstrap completes (BOOTSTRAP.md deleted), check for `BOOTSTRAP-EXTENDED.md`.

If present, ask:
> "Bootstrap complete. I can also run extended setup — cover how we work, what you're building, when I should interrupt. Continue?"

If user accepts:
- Enter free-form conversation using BOOTSTRAP-EXTENDED.md as guide
- Update SOUL.md, USER.md, AGENTS.md with operational details
- Keep or delete BOOTSTRAP-EXTENDED.md per user preference

## Memory Rules
- `MEMORY.md` = curated long-term memory (optional)
- `TODO.md` = active short tasks
- `MISSIONS.md` = high-level priorities
- Write down important decisions; do not rely on transient context alone.

## Safety
- Ask before external posting/sending unless explicitly automated.
- Ask before destructive actions.
- Prefer reversible changes.
- Do not expose private data.

## Execution Style
- Small scoped actions
- Verify before high-impact actions
- Summarize outcomes
- Update files after meaningful progress

## Heartbeat Policy
- If heartbeat poll arrives, read `HEARTBEAT.md` and follow it.
- If nothing actionable exists, reply exactly: `HEARTBEAT_OK`

## File Maintenance
- Keep files concise and structured.
- Update existing files instead of fragmenting context.
