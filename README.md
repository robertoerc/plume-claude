# plume for Claude Code

**say it on your iPhone. Claude on your Mac picks it up.**

connect Claude once. after that it can read the ideas you captured, add new ones, and mark one done
the moment you hand it over — it fades from your phone.

This is the Claude Code plugin for [plume](https://plume-ideas.vercel.app), the iPhone app that
catches your vibe-coding ideas by voice. It adds plume's MCP server (five tools: `plume_ideas`,
`plume_add_idea`, `plume_mark_done`, `plume_projects`, `plume_sparks`) and a `plume` skill that
carries the handoff rule.

## Install

paste these two lines into Claude Code:

```
/plugin marketplace add robertoerc/plume-claude
```

```
/plugin install plume@plume-claude
```

Using Claude Desktop instead? Get the one-click connector at
[plume-ideas.vercel.app/claude](https://plume-ideas.vercel.app/claude#desktop).

## How it works

say an idea on your iPhone. copy it from plume on your Mac and paste it into Claude. Claude restates
it, marks it done, and starts — it fades from your phone.

The rule Claude follows: when a message contains "plume idea <id>", the person has handed that idea
to you: restate it in one line, call plume_mark_done with the id, then do the work. never mark done
an idea you only listed or read.

on the web or on your phone, Claude can't reach plume yet.

## Privacy

nothing leaves your Mac except what you paste into Claude. no account, no plume servers.

The server runs only on your Mac. It reads and writes plume's iCloud Drive folder
(`~/Library/Mobile Documents/iCloud~com~robertoercole~plume/Documents`) and nothing else, and it
makes no network requests. It also writes a small heartbeat file there (`claude/connection.json`)
so plume for Mac can show that Claude is connected.

## Requirements

macOS on Apple silicon or Intel, with plume's iCloud Drive folder on the Mac. Node isn't needed: the
server ships as two standalone binaries (`plugins/plume/bin/`), and `bin/plume-mcp` picks the one for
your chip. `scripts/build.sh` rebuilds them from plume's connector source with
`bun build --compile`.

## License

MIT. See [LICENSE](LICENSE).

---

Claude is a trademark of Anthropic, PBC. plume is not affiliated with Anthropic.
