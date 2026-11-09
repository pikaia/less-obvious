#!/usr/bin/env bash
# make_waveform.sh — Less Obvious video leg.
# Turns one narration audio file into a 1280x720 waveform video:
# a still title with the live audio waveform ("wave signal") under it.
# Usage: scripts/make_waveform.sh <audio-file> <title> <output.mp4>
# Requires: ffmpeg (title text uses DejaVu Sans Bold if present).
set -euo pipefail

AUDIO="${1:?usage: make_waveform.sh <audio-file> <title> <output.mp4>}"
TITLE="${2:?usage: make_waveform.sh <audio-file> <title> <output.mp4>}"
OUT="${3:?usage: make_waveform.sh <audio-file> <title> <output.mp4>}"

# Escape the title for drawtext (backslash, colon, apostrophe)
ESC_TITLE=$(printf '%s' "$TITLE" | sed -e 's/\\/\\\\/g' -e 's/:/\\:/g' -e "s/'/\\\\'/g")
FONT="/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf"
FONTARG=""
if [ -f "$FONT" ]; then FONTARG="fontfile=${FONT}:"; fi

FILTER="[0:a]showwaves=s=1280x500:mode=cline:colors=0x9fd8a8[v1];color=c=0x14181d:s=1280x720[bg];[bg][v1]overlay=0:180[v2];[v2]drawtext=${FONTARG}text='${ESC_TITLE}':fontcolor=0xe8e8e8:fontsize=40:x=(w-text_w)/2:y=70,format=yuv420p[v]"

ffmpeg -y -i "$AUDIO" -filter_complex "$FILTER" \
  -map "[v]" -map 0:a -c:v libx264 -pix_fmt yuv420p -r 25 -c:a aac -b:a 160k -shortest "$OUT"
echo "Wrote $OUT"
