#!/bin/bash
# Web Architect — installer for Claude Code
# Copies skills, agents, and commands to ~/.claude/

set -e

CLAUDE_DIR="${CLAUDE_DIR:-$HOME/.claude}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Web Architect to $CLAUDE_DIR ..."

# Create directories
mkdir -p "$CLAUDE_DIR/skills/web-architect/references"
mkdir -p "$CLAUDE_DIR/agents"
mkdir -p "$CLAUDE_DIR/commands/wa"

# Copy files
cp "$SCRIPT_DIR/skills/web-architect/SKILL.md" "$CLAUDE_DIR/skills/web-architect/"
cp "$SCRIPT_DIR/skills/web-architect/references/"*.md "$CLAUDE_DIR/skills/web-architect/references/"
cp "$SCRIPT_DIR/agents/"wa-*.md "$CLAUDE_DIR/agents/"
cp "$SCRIPT_DIR/commands/wa/"*.md "$CLAUDE_DIR/commands/wa/"

echo ""
echo "Installed:"
echo "  skills/web-architect/SKILL.md"
echo "  skills/web-architect/references/constrained-generation.md"
echo "  skills/web-architect/references/project-profiles.md"
echo "  skills/web-architect/references/quality-standards.md"
echo "  agents/wa-designer.md"
echo "  agents/wa-architect.md"
echo "  agents/wa-builder.md"
echo "  agents/wa-reviewer.md"
echo "  commands/wa/design.md"
echo "  commands/wa/build.md"
echo "  commands/wa/review.md"
echo "  commands/wa/profile.md"
echo ""

# Append to CLAUDE.md if not already present
if [ -f "$CLAUDE_DIR/CLAUDE.md" ]; then
  if ! grep -q "## Web Architect" "$CLAUDE_DIR/CLAUDE.md"; then
    cat "$SCRIPT_DIR/claude-md-snippet.md" >> "$CLAUDE_DIR/CLAUDE.md"
    echo "Appended Web Architect section to $CLAUDE_DIR/CLAUDE.md"
  else
    echo "Web Architect section already exists in CLAUDE.md — skipped"
  fi
else
  echo "No ~/.claude/CLAUDE.md found — copy claude-md-snippet.md contents manually"
fi

echo ""
echo "Done! Start a new Claude Code session and try:"
echo "  /wa:profile landing"
echo "  /wa:design homepage hero section"
