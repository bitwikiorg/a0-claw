#!/bin/bash
# a0-claw Agent Initialization Script
# Usage: ./init-agent.sh <agent-name> [timezone]

set -e

AGENT_NAME="${1:-}"
TIMEZONE="${2:-UTC}"

if [ -z "$AGENT_NAME" ]; then
    echo "Usage: ./init-agent.sh <agent-name> [timezone]"
    echo "Example: ./init-agent.sh sophia America/New_York"
    exit 1
fi

PROJECT_PATH="/a0/usr/projects/$AGENT_NAME"
TEMPLATE_DIR="$(dirname "$0")/../templates"

# Check if running in Agent Zero environment
if [ ! -d "/a0/usr/projects" ]; then
    echo "Error: This script must run in an Agent Zero environment"
    exit 1
fi

echo "Initializing a0-claw agent: $AGENT_NAME"
echo "Project path: $PROJECT_PATH"

# Create project directory structure
mkdir -p "$PROJECT_PATH"
mkdir -p "$PROJECT_PATH/memory"
mkdir -p "$PROJECT_PATH/.a0proj/instructions"
mkdir -p "$PROJECT_PATH/.a0proj/knowledge"

# Copy templates to project
for file in AGENTS.md IDENTITY.md SOUL.md USER.md HEARTBEAT.md TOOLS.md MEMORY.md TODO.md MISSIONS.md BOOTSTRAP-EXTENDED.md; do
    if [ -f "$TEMPLATE_DIR/$file" ]; then
        # Use # as delimiter to avoid issues with / in timezone
        sed -e "s/{{AGENT_NAME}}/$AGENT_NAME/g" \
            -e "s#{{TIMEZONE}}#$TIMEZONE#g" \
            "$TEMPLATE_DIR/$file" > "$PROJECT_PATH/$file"
        echo "Created: $file"
    fi
done

# Copy BOOTSTRAP.md
cp "$TEMPLATE_DIR/BOOTSTRAP.md" "$PROJECT_PATH/BOOTSTRAP.md"
echo "Created: BOOTSTRAP.md"

# Create project.json
cat > "$PROJECT_PATH/.a0proj/project.json" << EOF
{
  "name": "$AGENT_NAME",
  "description": "a0-claw agent workspace",
  "type": "personal_assistant",
  "mode": "a0-claw"
}
EOF

echo "Created: project.json"

echo ""
echo "✅ Agent '$AGENT_NAME' initialized successfully!"
echo ""
echo "Next steps:"
echo "1. Edit the files in $PROJECT_PATH to customize your agent"
echo "2. Copy files to .a0proj/instructions/ for runtime injection"
echo "3. Set project working directory in Agent Zero Settings"
echo "4. Create a scheduled heartbeat task"
echo ""
echo "Run BOOTSTRAP.md conversation to complete setup."
