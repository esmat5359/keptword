#!/usr/bin/env bash
# Runs once when the Codespace is created. The Python tests need no packages at all.
set -euo pipefail
npm install
cat <<'MSG'

KeptWord is ready.

  npm test             offline contract tests (pure Python, no network, no wallet)
  npm run mutation     mutation check: proves the tests catch planted bugs
  npm run live:quick   deploy + live run + printed report (about 8 minutes)
  npm run live         full live run incl. checkpoint verification (about 25 minutes)
  npm run deploy       deploy contracts/kept_word.py to Studionet, prints the address
  KW_ADDRESS=0x... npm run smoke          live smoke test (about 5 minutes)
  KW_ADDRESS=0x... npm run smoke:verify   also verifies a checkpoint live (about 25 minutes)
MSG
