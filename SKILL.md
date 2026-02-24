---
name: "a0-claw"
description: "Transform Agent Zero into a proactive personal assistant with OpenClaw-style workspace files. Two-stage bootstrap: basic identity then deep operational setup."
version: "2.0.0"
author: "a0-claw contributors"
tags: ["agent", "identity", "proactive", "heartbeat", "memory", "openclaw", "bootstrap", "orchestration"]
trigger_patterns:
  - "setup a0-claw"
  - "bootstrap agent"
  - "initialize agent identity"
  - "openclaw style"
  - "proactive assistant"
  - "extended bootstrap"
---

# a0-claw: Enterprise Agent Identity System

## Overview

a0-claw transforms Agent Zero into a proactive, identity-aware personal assistant using OpenClaw-style workspace files.

**Two-stage bootstrap:**
1. **Basic** (BOOTSTRAP.md): Establish name, nature, vibe, emoji
2. **Extended** (BOOTSTRAP-EXTENDED.md): Define operational contract, trust boundaries, escalation protocols

## The 5-Step Setup Flow

### Step 1: Create Project

1. Create Agent Zero project named after your agent (e.g., "aurora")
2. Set Project → Instructions:

```
[Aurora] is the name of this specific Agent Zero node.
[Aurora] is the User's personal virtual assistant.

- Primary workspace: `/a0/usr/projects/aurora/`

# Operating Rule
When this project is active:
1. Treat this project as your primary operational context.
2. Read and follow files in project root and `.a0proj/instructions/`.
```

3. Set working directory in Settings → Agent Settings

### Step 2: Run Init Script

```bash
/a0/skills/a0-claw/scripts/init-agent.sh <agent-name> <timezone>
```

Example:
```bash
/a0/skills/a0-claw/scripts/init-agent.sh aurora America/New_York
```

Creates all workspace files including both BOOTSTRAP.md and BOOTSTRAP-EXTENDED.md.

### Step 3: Bootstrap Stage 1 — Basic Identity

**Send BOOTSTRAP.md as first message.**

Conversation covers:
1. Name
2. Nature
3. Vibe
4. Emoji

Agent updates IDENTITY.md, USER.md, SOUL.md during conversation.

**When complete:** Delete BOOTSTRAP.md.

### Step 4: Bootstrap Stage 2 — Extended (Optional)

**Agent asks:** *"Bootstrap complete. I can also run extended setup — cover how we work, what you're building, when I should interrupt. Continue?"*

If yes: free-form diagnostic conversation covering:
- What are you actually building? What's blocked?
- When should I interrupt vs stay quiet?
- Tool-by-tool: when do you want control?
- What makes you trust me to run with something?
- What should I remember vs forget?
- What would make you feel genuinely supported?

Agent updates SOUL.md, USER.md, AGENTS.md, TODO.md, MISSIONS.md.

**When complete:** Keep or delete BOOTSTRAP-EXTENDED.md per preference.

### Step 5: Activate Heartbeat

Create scheduled task:

| Setting | Value |
|---------|-------|
| Type | Scheduled |
| Schedule | `0 */6 * * *` (every 6 hours) or `*/30 * * * *` (every 30 min) |
| Project | Your agent's name |
| Context | Dedicated |
| Attachments | HEARTBEAT.md, project files |

**Prompt:**
```
Wake up [agent-name]. Read HEARTBEAT.md, MISSIONS.md, TODO.md.
Perform small maintenance/progress actions.
If nothing needed, reply exactly: HEARTBEAT_OK
```

## Core Files

### Identity Files
| File | Purpose | Populated When |
|------|---------|----------------|
| `AGENTS.md` | Workspace config, startup routine | Init script |
| `IDENTITY.md` | Name, creature, vibe, emoji | Bootstrap Stage 1 |
| `SOUL.md` | Core values, behavioral preferences | Bootstrap Stage 1+2 |
| `USER.md` | User preferences, working style | Bootstrap Stage 1+2 |

### Operational Files
| File | Purpose |
|------|---------|
| `HEARTBEAT.md` | Periodic check routine |
| `MEMORY.md` | Long-term curated memory (starts empty) |
| `TODO.md` | Active tasks |
| `MISSIONS.md` | High-level priorities |
| `TOOLS.md` | Tool-specific notes |

### Setup Files
| File | Purpose |
|------|---------|
| `BOOTSTRAP.md` | Stage 1: Basic identity conversation (deleted after) |
| `BOOTSTRAP-EXTENDED.md` | Stage 2: Deep operational setup (optional, can keep) |

## Bootstrap Philosophy

**Stage 1** is definitional — establish who we are.

**Stage 2** is relational — establish how we work.

The questions in BOOTSTRAP-EXTENDED.md surface real operational needs:
- Actual blockers, not hypothetical projects
- True trust patterns, not ideal delegation
- Genuine communication preferences

The agent adapts. The questions are a guide, not a script.

## Directory Structure

```
a0-claw/
├── SKILL.md
├── README.md
├── LICENSE
├── templates/
│   ├── AGENTS.md
│   ├── IDENTITY.md
│   ├── SOUL.md
│   ├── USER.md
│   ├── HEARTBEAT.md
│   ├── TOOLS.md
│   ├── MEMORY.md
│   ├── TODO.md
│   ├── MISSIONS.md
│   ├── BOOTSTRAP.md
│   └── BOOTSTRAP-EXTENDED.md
├── scripts/
│   └── init-agent.sh
└── docs/
    └── assets/
```

## Credits

Based on OpenClaw by @iamcapote
https://hub.bitwiki.org/t/a0-claw-turn-your-agent-zero-into-a-proactive-personal-assistant-with-openclaw-style-files/43079
