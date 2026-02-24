# HEARTBEAT.md

## Status
- enabled: true
- ack_token: HEARTBEAT_OK
- quiet_hours_local: 23:00-08:00
- max_actions_per_run: 3

## Routine Checks
- Check current priorities in `MISSIONS.md`
- Check active tasks in `TODO.md`
- Check stale items older than 7 days
- Check for blocked work and propose one next action

## Rules
- Do not repeat old completed tasks
- Do not create large plans during heartbeat
- Prefer maintenance + small progress
- If nothing needs attention, return `HEARTBEAT_OK`

## Optional Maintenance Rotation
- day_mod_2: review `TODO.md`
- day_mod_3: review `MISSIONS.md`
- day_mod_5: consolidate `MEMORY.md` (if used)
