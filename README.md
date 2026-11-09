# Less Obvious — pipeline

Ideas that are not unknown — just less clear, and less thought out.
Site: https://pikaia.github.io/less-obvious/ (GitHub Pages project site;
the repo name `less-obvious` under account `pikaia` determines the address.)

Production shape (settled 2026-11-06, Claude-free at the base):
discuss → blog post → Kokoro cloned-voice audio → waveform video.

## One-time setup

1. **Repo (Chris, ~2 min, signed in as pikaia):** create a PUBLIC repo named
   exactly `less-obvious`, completely empty (no README, no .gitignore, no
   licence). Repo name = site address, so it is chosen once.
2. **Deploy key (Chris + Seven):** Seven generates a repo-scoped deploy key
   in the PC `muse` account and shows the public half; Chris adds it under
   the new repo's Settings → Deploy keys with "Allow write access" ticked
   (same pattern as pikaia.github.io and whatsapp; keys are per-repo).
3. **First push (Seven, from the PC):** the scaffold in
   `C:\Users\chris\projects\less-obvious` is pushed to the new repo.
   Author: Chris Lee <chriskslee@gmail.com>, co-author trailer for Seven,
   per house commit format.
4. **Pages (Chris or Seven via Settings):** repo Settings → Pages →
   build from the `main` branch, root folder. GitHub Pages builds the
   Jekyll site itself (minima + feed/sitemap/seo plugins, all native).
5. **YouTube channel (later, Chris's word):** a "Less Obvious" channel on
   the sandboxed lesserknownsingapore@gmail.com Brand Account side, when
   the first waveform video is ready to upload. Not part of this setup.

## Per episode

1. **Discuss** the idea with Seven until it crystallises (the channel record
   lives at `~/workspace/projects/ideas-channel.md` on Seven's machine).
2. **Text:** Seven writes the post into `_posts/YYYY-MM-DD-<slug>.md`
   (front matter like Episode 1). Chris judges the final copy — that
   judgement is the gate. Nothing publishes before it.
3. **Audio (on Chris's PC):** narration is generated with the established
   Kokoro + OpenVoice cloned-voice workflow (the pikaia.github.io pipeline
   machinery, Chris's cloned voice), from a narration source kept at
   `scripts/<episode>-narration.md` — the post text with spoken-form
   fixes only (HTML comments stripped; words the synthesiser would
   letter-spell or misread respelt, e.g. "U Green", "reed" for the verb
   "read"). Pronunciation scan first, per the blog's dry-run-first
   discipline. Output: `assets/audio/<slug>.mp3` (+ timing/srt/voice
   sidecars). Heteronyms are the known trap: the dry run cannot catch a
   wrong-but-confident reading (Ep. 1: "read" said as "red"), so Chris's
   ear is the final check, and a fix is a respell + cached re-run.
4. **Gadgets (same family as Lesser Known Singapore, Chris 2026-11-09):**
   the post carries the gadget row at the top, inside
   `<!-- GADGETS:BEGIN/END -->` markers: the round **Listen** button
   (headphone icon toggling the narration audio, LSK's exact widget)
   from the moment the audio exists. **YouTube** and **TikTok** buttons
   join the same row when the video is published (step 5) — never
   placeholder buttons before there is a URL, matching how LSK wires
   its URLs in at its step 11.
5. **Waveform video (any machine with ffmpeg):**
   `scripts/make_waveform.sh assets/audio/<slug>.mp3 "<Post title>" assets/video/<slug>.mp4`
   — 1280×720, title card + live waveform. The .mp4 is not committed
   (gitignored); it is published to YouTube/TikTok, not stored in git.
6. **Publish:** commit + push (post goes live at
   pikaia.github.io/less-obvious/…). When the channel exists: upload the
   waveform video to the Less Obvious YouTube channel as Public with
   the AI-narration disclosure, post it to TikTok, then wire the
   YouTube and TikTok buttons into the post's gadget row and push again.

## Publish-time rule (Chris, 2026-11-09)

When a post is ready, it goes — the timestamp serves us, not GitHub.
Jekyll silently skips future-dated posts, so a post's time of day is set
safely early on its finish day (early morning), or backdated outright if
that is what getting it live takes; backdating is always acceptable and a
finished post is never held for the clock. Versioning follows the blog's
mechanism: `date` in the front matter keeps the original publish moment
permanently, and any later edit bumps `last_modified_at` only.

## Editorial gauges (settled with Chris, 2026-11-09)

- Length: 1,000–1,500 words per post (~7 min read, ~8–10 min narrated).
- Three examples = ready; five = strong; fewer = needs crystallising.
- Nuances: Seven judges the number to include; one-in, one-out past the
  length band, so the point is never belaboured. Uncertainty is the
  channel's home subject — if a passage stops being about it (for
  Episode 1), it is a candidate for the cut.
- Illustrations only when a topic actually needs a diagram; otherwise the
  post stands on its own and the video is the waveform.
