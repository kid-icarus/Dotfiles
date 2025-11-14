#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: git wt-clean <worktree-path>"
    exit 1
fi

worktree_path="$1"

# Get the full path
full_path=$(realpath "$worktree_path" 2>/dev/null || echo "$worktree_path")

# Get branch name from worktree
branch=$(git worktree list --porcelain | grep -A 2 "worktree $full_path" | grep "branch" | sed 's/branch refs\/heads\///')

# Get project name (basename of the worktree path)
project_name=$(basename "$worktree_path")

echo "This will:"
echo "  1. Remove worktree: $worktree_path"
[ -n "$branch" ] && echo "  2. Delete branch: $branch"
echo "  3. Delete Claude Code project: $project_name"
echo ""
echo "Continue? (y/N)"
read -r response

if [[ ! "$response" =~ ^[Yy]$ ]]; then
    echo "Cancelled"
    exit 0
fi

# 1. Remove worktree
if git worktree remove "$worktree_path" 2>/dev/null || git worktree remove --force "$worktree_path"; then
    echo "✓ Removed worktree: $worktree_path"
else
    echo "✗ Failed to remove worktree"
    exit 1
fi

# 2. Delete branch if found
if [ -n "$branch" ]; then
    if git branch -D "$branch" 2>/dev/null; then
        echo "✓ Deleted branch: $branch"
    else
        echo "✗ Could not delete branch: $branch"
    fi
else
    echo "ℹ No branch associated with this worktree"
fi

# 3. Delete Claude Code project
if [ -d "$HOME/.claude/projects/$project_name" ]; then
    rm -rf "$HOME/.claude/projects/$project_name"
    echo "✓ Deleted Claude Code project: $project_name"
else
    echo "ℹ No Claude Code project found for: $project_name"
fi

echo ""
echo "✓ Cleanup complete!"
