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
   machinery, Chris's cloned voice), from the post's narration text.
   Pronunciation scan first, per the blog's dry-run-first discipline.
   Output: `assets/audio/<slug>.mp3`. Wire it into the post at the
   `<!-- LISTEN -->` marker as an `<audio controls>` element.
4. **Waveform video (any machine with ffmpeg):**
   `scripts/make_waveform.sh assets/audio/<slug>.mp3 "<Post title>" assets/video/<slug>.mp4`
   — 1280×720, title card + live waveform. Tested 2026-11-09 on sample audio.
5. **Publish:** commit + push (post goes live at
   pikaia.github.io/less-obvious/…), upload the waveform video to the
   Less Obvious YouTube channel as Public with the AI-narration disclosure,
   then add the YouTube link to the post and push again.

## Editorial gauges (settled with Chris, 2026-11-09)

- Length: 1,000–1,500 words per post (~7 min read, ~8–10 min narrated).
- Three examples = ready; five = strong; fewer = needs crystallising.
- Nuances: Seven judges the number to include; one-in, one-out past the
  length band, so the point is never belaboured. Uncertainty is the
  channel's home subject — if a passage stops being about it (for
  Episode 1), it is a candidate for the cut.
- Illustrations only when a topic actually needs a diagram; otherwise the
  post stands on its own and the video is the waveform.
