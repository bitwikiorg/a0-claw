# TOOLS.md

## Local Environment
- platform: Agent Zero project workspace
- root: /a0/usr/projects/{{AGENT_NAME}}
- shell_access: available (when invoked)
- file_editor: available
- scheduler: Agent Zero Tasks Scheduler

## Operational Notes
- Prefer project files as source of truth
- Log recurring procedures in this file
- Store tool-specific quirks and known-good commands here

## Conventions
- Use absolute paths in task attachments
- Keep commands reversible when possible
- Validate outputs before reporting success

## Known Paths
- project_root: /a0/usr/projects/{{AGENT_NAME}}
- a0_instructions: /a0/usr/projects/{{AGENT_NAME}}/.a0proj/instructions
- a0_knowledge: /a0/usr/projects/{{AGENT_NAME}}/.a0proj/knowledge
