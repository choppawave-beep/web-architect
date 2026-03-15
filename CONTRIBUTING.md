# 🤝 Contributing to Web Architect

Thanks for your interest in contributing! Here's how you can help.

## 🐛 Bug Reports

Open an [issue](https://github.com/choppawave-beep/web-architect/issues) with:
- What command you ran
- What you expected
- What actually happened
- Your agent (Claude Code, Cursor, Amp, etc.)

## 💡 Feature Requests

Ideas welcome! Open an issue tagged `enhancement`. Popular requests:
- New project profiles (e.g., `docs-site`, `admin-panel`)
- New constraint rules (font pairings, color harmonies)
- New quality dimensions
- Better integration with specific agents

## 🔧 Pull Requests

### Adding a project profile

1. Edit `skills/web-architect/references/project-profiles.md`
2. Follow the existing format (table + anti-patterns)
3. PR with description of what the profile is for

### Adding font pairings or color harmonies

1. Edit `skills/web-architect/references/constrained-generation.md`
2. Add to the appropriate table
3. Include source/reasoning for the pairing

### Adding a quality check

1. Edit `skills/web-architect/references/quality-standards.md`
2. Add checklist items to existing dimensions OR propose a new dimension
3. If new dimension: update weights (must sum to 100%)

### Translations

We have READMEs in 6 languages. To add or improve a translation:
- File naming: `README.<lang-code>.md` (e.g., `README.de.md` for German)
- Keep the language selector links consistent across all files
- Keep code blocks, commands, URLs in English

## 📋 Code of Conduct

Be kind. Be helpful. Review with empathy.

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.
