---
layout: post
title: "It Forgets Everything. So You Build It a Notebook."
date: 2026-11-16 01:05:00 -0500
last_modified_at: 2026-11-16 07:19:00 -0500
categories: [ideas, agents]
---

<!-- GADGETS:BEGIN (same gadget family as Lesser Known Singapore: Listen and YouTube wired in when each leg is published) -->
<div style="display: flex; gap: 2em; margin: 0.5em 0 1.5em 0; align-items: flex-end;">
  <div id="listen-widget" role="button" tabindex="0" aria-label="Play audio narration of this post" style="display: inline-flex; flex-direction: column; align-items: center; cursor: pointer; gap: 0.2em; user-select: none;">
    <span id="listen-icon" aria-hidden="true" style="display: inline-flex; align-items: center; justify-content: center; width: 2.1em; height: 2.1em; border-radius: 50%; border: 1px solid #888; font-size: 1.1em;">&#127911;</span>
    <span style="font-size: 0.7em; text-transform: uppercase; letter-spacing: 0.05em; opacity: 0.75;">Listen</span>
    <audio id="listen-audio" preload="none" style="display: none;">
      <source src="/less-obvious/assets/audio/it-forgets-everything.mp3" type="audio/mpeg">
    </audio>
  </div>
  <a href="https://youtu.be/uUEHxZH7ncM" target="_blank" rel="noopener" aria-label="Watch this post as a video on YouTube" style="display: inline-flex; flex-direction: column; align-items: center; gap: 0.2em; text-decoration: none; color: inherit;">
    <span aria-hidden="true" style="display: inline-flex; align-items: center; justify-content: center; width: 2.4em; height: 2.4em; border-radius: 50%; border: 1px solid #888;">
      <svg width="1.4em" height="1.4em" viewBox="0 0 24 24" aria-hidden="true"><rect x="1" y="4" width="22" height="16" rx="5" fill="#FF0000"/><path d="M10 8.5l6 3.5-6 3.5z" fill="#fff"/></svg>
    </span>
    <span style="font-size: 0.7em; text-transform: uppercase; letter-spacing: 0.05em; opacity: 0.75;">YouTube</span>
  </a>
</div>

<script>
(function () {
  var widget = document.getElementById('listen-widget');
  var icon = document.getElementById('listen-icon');
  var audio = document.getElementById('listen-audio');

  function setIcon(playing) {
    icon.innerHTML = playing ? '&#10074;&#10074;' : '&#127911;';
  }

  function toggle() {
    if (audio.paused) {
      audio.play();
    } else {
      audio.pause();
    }
  }

  widget.addEventListener('click', toggle);
  widget.addEventListener('keydown', function (e) {
    if (e.key === 'Enter' || e.key === ' ') {
      e.preventDefault();
      toggle();
    }
  });
  audio.addEventListener('play', function () { setIcon(true); });
  audio.addEventListener('pause', function () { setIcon(false); });
  audio.addEventListener('ended', function () { setIcon(false); });
})();
</script>
<!-- GADGETS:END -->

Last week, my agent forgot our conversation while we were in the middle of it.

We were sorting boxes in the basement — or rather, I was sorting and it was keeping the catalogue — when the conversation grew past its size limit and was compressed into a summary. The agent carried on from the summary, and it kept the gist faithfully. But some of the fine detail had blurred, the way a photocopy of a photocopy softens. Later that same afternoon I mentioned a project "we talked about earlier" — some NFC tags from another conversation — and the agent did not hold that thread at all. It went and searched its written record, found the discussion, and reconnected it. The record did the remembering. The agent did the fetching.

Most people, hearing this, would file it under *limitations of AI*. I have come to think it is the most instructive thing about working with one. Because the forgetting is not a defect that better models will shortly remove. It is a fact of the machinery — and once you state the fact plainly, the whole shape of a working system with an agent falls out of it, piece by piece, almost forced.

![The Compaction — a long conversation is compressed into a summary, and work resumes from it](/less-obvious/assets/images/the-compaction.png)

*The compaction: everything said, squeezed into a summary — the gist kept, the fine detail softened — and the thread resumed from it.*

## Three plain facts

Underneath, a language model is *stateless*. Each time it wakes, it knows nothing except what it is handed. Between one conversation and the next, nothing carries over on its own.

Its working memory is *finite*. A conversation can only hold so much at once; past that limit, the older part must be compressed, summarised, or set aside.

And it natively reads and writes *text*. That is its whole interface with the world.

Nothing about this is hard, once it is stated. But unstated, everyone fills the gap with their own little ideas about how these systems must work — and those ideas may or may not be true.

## The furniture the facts force

Put any competent builder in front of those three facts and the escapes are nearly forced:

- No memory between sessions → write the memory *outside* the model, in files.
- Files the model must read and write → plain text, and markdown in particular, because it is text that carries structure without machinery.
- Finite working memory → summarise when full, and *retrieve* what is needed instead of carrying everything — fetch the relevant page of the notebook rather than memorising the notebook.
- Work too long for one sitting → leave logs, markers and mailboxes, so the next waking can pick up exactly where the last one stopped.

![Facts and furniture — stateless forces memory in files; finite forces summarising and retrieval; text in and out forces logs, markers and mailboxes](/less-obvious/assets/images/facts-and-furniture.png)

*Three facts, and the furniture they force. Finite does double duty: it is why conversations are summarised, and why the agent fetches pages instead of carrying the whole notebook.*

If this furniture sounds familiar, it should. Bridges in different countries end up looking alike, not because the engineers copy each other, but because the loads are the same. Agent systems converge the same way. Some pieces have academic pedigrees: retrieval from documents was a research idea before it was a product feature, and a paper called MemGPT modelled an agent's memory on a computer's virtual memory — a small core held in mind, the rest paged in from storage as needed. Industry standardised other pieces by imitation, the way the AGENTS.md convention — a file of standing instructions at the top of a project — spread from tool to tool simply because it worked. And underneath it all are older human patterns being rediscovered: the lab notebook, the ship's log, and Unix's old principle that everything is a file.

![The Notebook Loop — the agent wakes, reads the record, works, writes back, and sleeps, forgetting everything](/less-obvious/assets/images/the-notebook-loop.png)

*The notebook loop: the agent forgets everything on every pass. The record in the middle is the only thing that persists.*

## The proof is in my own house

The strongest evidence that this is convergence, and not fashion, is that I arrived at the same shapes without ever being handed the papers.

I run several projects with my agent — a blog, an exercise channel, a ministry's videos, a hundred basement boxes to catalogue before a move. Out of ordinary working instincts, the kind you pick up in a career and stop noticing, I built: a mailbox file through which I leave work orders for a second agent on my computer, and through which it reports back; a build log for every substantial job, so progress is read from the log rather than scraped off a screen — "log, don't scrape" became a house rule; and watermarks in the watchers, so each knows what it has already seen. Piece for piece, these are the industry's shapes. Nobody taught them to me. The constraints pushed me where they push everyone who stays at the problem long enough.

The same applies to the layer nobody puts in the diagrams: the protocol between us. A thumbs-up from me means *read and understood*, not *go*. A gap in replies carries no meaning. When the agent is wrong, the correction goes into the written record, not just into the conversation — so it cannot blur twice. None of this was designed in advance. Each rule was born when one of us noticed a seam, and we named it together.

That protocol lives in the files too, and deliberately. After a stroke some years ago, my own memory has its clouded days. A written understanding that neither of us has to hold perfectly — not the agent through its compressions, not me through a cloudy afternoon — is what lets the work survive both of us.

## The claim

The usual question about agents and memory is *when will they get real memory?* — as if memory were a feature the next model will ship with. The less obvious answer is that the memory was never going to live inside the model. It lives in the notebook around the model: the files, the logs, the record.

And that turns out to be the good arrangement, not the consolation prize. A memory inside a model would be a black box — you could not open it, check it, or correct it. A notebook can be opened. I can read what my agent believes about my projects, my family, my preferences — and when it is wrong, I can fix the page, and the fix holds. The memory is mine in a way no trained-in memory could be: inspectable, correctable, and portable. It will still be there, readable, when the models have changed beyond recognition.

Continuity, it turns out, is not a property of the agent. It is a property of the record. Keep the record well, and the agent who wakes tomorrow is the same one who worked with you today — not because it remembers, but because it can *look it up*.

## A note on how this was made

As with the first episode: this post was discussed with my agent until the idea was clear, then written by the agent from our conversation, in my words as far as it could manage them. If you are listening, the voice is my own, cloned.

There is a fitting detail I should not leave out. The conversation this episode came from was itself compressed and summarised at least once along the way, and this draft was assembled from the written record of it — the notebook doing its work, on an episode about the notebook. The draft did not notice the interruption. That is rather the point.
