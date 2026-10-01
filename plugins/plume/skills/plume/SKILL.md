---
name: plume
description: The plume handoff loop. Use when a message contains "plume idea <id>" (an idea handed over from plume), or when the person asks about the ideas they captured on their iPhone with plume — what's waiting, what's in a project, or to save a new one.
---

# plume

plume catches ideas on the iPhone by voice. This plugin's `plume` MCP server reads and writes the
plume folder on this Mac.

## The handoff rule

when a message contains "plume idea <id>", the person has handed that idea to you: restate it in one line, call plume_mark_done with the id, then do the work. never mark done an idea you only listed or read.

## When to use `plume_ideas`

- The person asks what ideas they have waiting, or what they captured on their phone: call
  `plume_ideas` with no project to list every open idea, newest first.
- They ask about one project's ideas: pass that project's id or name.
- Listing never marks anything done. Only a handed-over idea ("plume idea <id>") gets
  `plume_mark_done`.

Other tools: `plume_add_idea` saves an idea so it shows on the phone (`spark: true` for a brand-new
project idea), `plume_projects` gives one line per project, `plume_sparks` lists brand-new project
ideas that aren't projects yet.

If a tool says `open plume for Mac to bring your ideas down`, the ideas are still in iCloud: say so
in one line.
