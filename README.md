# unslop

Created by Damir Sokolovsky ([@heydamir](https://x.com/heydamir)), who started the [Unslopping series](https://x.com/heydamir/status/2115063463063998736) on X.

![A vibecoded dashboard unslopping itself, frame by frame](skills/unslop/references/refs/story-dashboard-frames.webp)

unslop is a skill for Claude that turns vibecoded, AI-looking UI into a designed interface with its own character. It finds the slop first, the purple gradients, glows, emoji labels, shouty copy and uneven spacing, then sets a direction from your product and fixes the screen pass by pass like a designer doing a redline review. It works on React, Tailwind, HTML and CSS, on dashboards, apps and landing pages, and even on a live site when all you have is a link.

## Install

For Claude Code, copy the skill into your skills folder.

```bash
git clone https://github.com/damirsch/unslop
mkdir -p ~/.claude/skills && cp -r unslop/skills/unslop ~/.claude/skills/
```

For a single project, copy it into `.claude/skills/` inside that project instead.

## Use

Ask for it in your own words.

- unslop this dashboard
- unslop the hero of https://example.com
- unslop my landing page and make the story video so I can post it

It audits the screen and proposes a direction before it edits anything, so you can steer it early. If the screen is already good, it tells you so and suggests a few small refinements instead of redesigning it.

## What it does

- **Audit.** Lists every sign of slop with where it lives.
- **Direction.** Character, world, the one or two moments that carry the color, and a signature detail, all taken from your product.
- **Passes.** Spacing, color, icons, copy, type, layout, details, visuals and motion, in that order.
- **Visuals.** Shows your product instead of a glossy blob. With an image generation tool connected, it can make a scene or an object for the hero, and it always asks before spending.
- **Story video.** A 10 second square video of your screen unslopping itself, ready to post. It needs Playwright and ffmpeg.

Try it on the two vibecoded screens in [examples](examples).

## Want it done for you

If you would rather have a designer do it, I unslop one key screen in 3 days, built in your stack. [heydamir.design/unslop](https://heydamir.design/unslop)

## License

[CC BY 4.0](LICENSE). Use it, change it and share it, including commercially, as long as you credit Damir Sokolovsky ([@heydamir](https://x.com/heydamir)) and link back to this repository.
