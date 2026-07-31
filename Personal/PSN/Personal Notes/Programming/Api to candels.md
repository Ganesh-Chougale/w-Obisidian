## 🟢 From API → Candles (OHLC)

* Call Indian Stock Market API → get historical data

* Ensure response contains:

  * `open`
  * `high`
  * `low`
  * `close`
  * `volume`
  * `timestamp`

* Convert API response → array format

```js
[
  { time, open, high, low, close, volume }
]
```

* Sort data by time (old → new)

* Pass this directly to chart library
  👉 this becomes your **candlestick chart**

---

## 🟡 From API → Indicator Lines (MACD, ADX etc.)

* Extract required arrays from candles:

  * `close[]` → for MACD
  * `high[], low[], close[]` → for ADX

* Send these arrays to indicator function
  (file: `src/indicators/macd.js`, below your import)

```js
const closes = candles.map(c => c.close);
```

* Calculate indicator:

  * MACD → returns `{ MACD, signal, histogram }`
  * ADX → returns `{ adx, pdi, mdi }`

* Map result to chart format:

```js
[
  { time, value }
]
```

* Overlay on chart
  👉 this becomes your **indicator lines**

---

## 🔵 Real-time update loop (important)

* Every few seconds:

  * Fetch latest candle
  * Append to existing array
  * Recalculate indicators (don’t reset old data)

* Update:

  * Candles
  * Indicator lines

---

## 🔴 Minimum requirements (don’t miss)

* Candles:

  * At least 50–100 candles loaded initially

* Indicators:

  * MACD → needs 26+ candles
  * ADX → needs 14+ candles

---

## ⚡ Flow summary (full pipeline)

```text
API → fetch candles → format → store →
→ calculate indicators → map to lines →
→ send to chart
```

---