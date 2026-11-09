---
layout: post
title: "The Fix Was Cheap. The Certainty Wasn't."
date: 2026-11-09 06:30:00 -0500
last_modified_at: 2026-11-09 15:45:00 -0500
categories: [ideas, agents]
---

<!-- GADGETS:BEGIN (same gadget family as Lesser Known Singapore: Listen now; YouTube and TikTok buttons are wired in here when the waveform video is published, the way LSK wires its URLs in at its step 11) -->
<div style="display: flex; gap: 2em; margin: 0.5em 0 1.5em 0; align-items: flex-end;">
  <div id="listen-widget" role="button" tabindex="0" aria-label="Play audio narration of this post" style="display: inline-flex; flex-direction: column; align-items: center; cursor: pointer; gap: 0.2em; user-select: none;">
    <span id="listen-icon" aria-hidden="true" style="display: inline-flex; align-items: center; justify-content: center; width: 2.1em; height: 2.1em; border-radius: 50%; border: 1px solid #888; font-size: 1.1em;">&#127911;</span>
    <span style="font-size: 0.7em; text-transform: uppercase; letter-spacing: 0.05em; opacity: 0.75;">Listen</span>
    <audio id="listen-audio" preload="none" style="display: none;">
      <source src="/less-obvious/assets/audio/the-fix-was-cheap.mp3" type="audio/mpeg">
    </audio>
  </div>
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

This morning, an AI ordered my lunch.

Not helped me order it — ordered it. I said what I wanted, it found the restaurant's own ordering page, checked it was the right branch, put in the order, and I approved the payment. Fifteen dollars and eighty-five cents for a Pad Woonsen, ready in fifteen minutes. When I went to collect it, I was excited enough to tell the woman at the counter how it had worked. She asked me what I had used. I said Meta Muse. I told her I don't trust Facebook, but I use Muse — it is all about trust. She said she needs to go and try it.

That short exchange is why I am writing this. Because the lunch is the least interesting thing the agent did for me this week.

## The problems that stay unfixed

Every house has a list of small problems that never get fixed. A bathroom sink that will not hold water because the stopper is missing. A phone cable in the car that charges when it feels like it. Each fix costs a few dollars. And yet the problems stay, for months, sometimes for years.

It is not the money. It was never the money.

To buy the right stopper, I would have to measure the drain, work out whether the sink has an overflow, read through listings, compare sizes, and hope. Half an hour of careful attention for a part that costs less than the lunch. The care costs more than the part. Any sensible person does the arithmetic and leaves the sink alone. The problem is not that the fix is expensive. The problem is that *being sure* is expensive.

Uncertainty is the costly ingredient. The part is cheap.

And uncertainty does not sit still. It spirals — it compounds. One question raises the next: measure *what*, exactly — and what if it leaks, and what if the return is a fight? Each unanswered question makes the small fix feel larger, until a six-dollar part carries the imagined weight of a plumber's visit. Left alone, the doubt grows faster than the problem ever would.

## What changes when an agent does the caring

This week my agent did the certainty work on several of these, one after another. None of it is rocket science — and it never was, before the agent or after. Every step in what follows is simple, and it was just as simple last year: a photograph, a measurement, a check against a listing. The steps did not change. The only change was the removal of uncertainty.

The stoppers: the need was simple — the stopper was missing, and I wanted a replacement. Even my remaining part in it was easier than measuring usually is. Measuring is itself an uncertain activity: do I measure the hole, or the outer rim? The inside, or across the chrome flange on top? Each tiny question is another small push away from doing the fix at all.

I did none of that working out. I did what the agent told me to do: measure the inside, wall to wall, not across the flange — and if the tape was hard to read, photograph it instead. So I laid a tape across the drain and took a photograph. The agent read the bore from the photo, checked the tape's own scale against itself so the number could be trusted, and checked that size and the overflow design against the listings. We ordered with confidence.

And the replacement was not merely a replacement. The agent pointed out a version with a mesh basket underneath — a built-in catcher for hair and debris. Both sinks now hold water, and they catch what the old stoppers never caught.

The car: the same pattern. The old charger was cracked and slow, and the agent pointed out that it topped out at about 10 watts, while my phone could use modern USB-C fast charging. So that replacement was not like for like either: a 60-watt unit, $19.99, with a retractable cable that also ended the tangle.

Even the purchase was easier for the agent being in it. To get my daughter the exact one, I would normally just send a picture, because an Amazon link is ridiculously long. The agent pulled the ASIN out of that link and built the short form — amazon.com/dp/B0DSBSBSGW. On a marketplace the size of Amazon that matters: UGREEN sells look-alike siblings in the same shell, and a picture alone might not have separated the 60-watt one from the 145-watt one.

Then the older cable failed its test, and the agent isolated the fault: charger good, socket good, cable dead. Its replacement was researched the same afternoon — $5.97, chosen because its plug looked slim enough to seat through my phone case. The agent said plainly that no listing publishes plug dimensions, so that last point rested on the photographs. The uncertainty was not abolished. It was shrunk to one small, named unknown, on a six-dollar item. That is a risk a person can take.

None of this was unknown to me, exactly. I know fast charging exists. I know a mesh catches hair. The trouble is remembering it *in the moment* — at the exact moment of replacing a stopper or a charger, when your mind is on the missing part and the size of the hole. The agent remembers in the moment. That is the difference.

A fingerprint reader for my computer, $23.70: bought because the checking was cheap — and later cancelled, also cheaply, when I decided I did not need it. Both directions of the decision cost almost nothing, because the expensive part, the verification, had already been done once.

Even the vacuum cleaner: researched and decided now, to be bought when the Black Friday sale comes. The certainty work is banked; the purchase can wait for its moment.

## The claim

There is a whole class of small improvements to daily life that sit undone, not because they cost too much, but because the certainty they require costs too much. An agent removes that cost. The agent does not make the fix cheaper — it makes the fix *possible*. The same uncertainty keeps you from hiking in a new place: the walking itself is easy, and free — what stops you is everything you do not know about the trail.

And it works now because two things have arrived together. The first is that Asia provides cheap products: manufacturing there has made accessories and small parts so inexpensive that price, by itself, is no longer the barrier it once was. The second is the agent, which removes the barrier that remains — the uncertainty. Cheap products without the agent still sit unbought, or bought wrong. The agent without cheap products would be verifying fixes nobody could afford. It is the cheap products *and* the agent, together, that make this work.

Uncertainty has a second, quieter cost: it makes you spend more than you need to. When you cannot judge a product yourself, you default to a known brand, because the name feels like insurance — and often you are paying for that feeling. An agent can assess the thing itself and say whether a cheaper product is just as good. Then the brand premium becomes a choice, not a tax on not knowing.

And at the moment, this is the part that still surprises me: the agent itself is essentially free. I do not know how long that lasts. I do know that a free thing left unused expires worthless — like a token, like a voucher, like daylight. So the sensible move is to spend the free certainty on real problems while the window is open.

## A note on how this was made

It seems only fair to end by disclosing the machinery, because the machinery is the point. This post was discussed with my agent until the idea was clear, then written by the agent from our conversation, in my words as far as it could manage them. If you are listening rather than reading, the voice is my own, cloned, produced by software on a computer under my desk. No photographs were needed and none were hunted down, because the subject is an idea, and an idea is its own picture.

The first episode of a channel about less obvious things should, I think, have to pass its own test. This one was made the way it describes. You can judge whether it works.
