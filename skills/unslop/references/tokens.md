# Tokens

Starting values for each pass. When the project already has a good system, keep its values and only fix how they are used.

## Spacing scale

4, 8, 12, 16, 20, 24, 32, 40, 48, 64, 80, 96

- Inside a control: 4 to 12
- Between related items, like rows in a list: 2 to 8
- Between groups, like a label and its list or two cards: 12 to 24
- Between sections: 32 to 64, landing sections 80 to 128
- Row heights: 32 compact, 36 default, 40 to 44 touch

## Dark palette

| Role | Value |
| --- | --- |
| Sidebar or deepest surface | #111111 |
| Page background | #161616 |
| Card | #1a1a1a |
| Raised, like an active row or input | #232323 |
| Hairline | rgba(255,255,255,0.08) or #222222 |
| Primary text | #ededed |
| Secondary text | #a1a1a1 |
| Muted text and icons | #6b6b6b |
| Positive | #4cc38a |
| Negative | #e5484d |

## Light palette

| Role | Value |
| --- | --- |
| Page background | #fafafa |
| Card | #ffffff |
| Raised, like an active row or input | #f4f4f5 |
| Hairline | rgba(0,0,0,0.08) |
| Primary text | #171717 |
| Secondary text | #525252 |
| Muted text and icons | #8a8a8a |
| Positive | #16a34a |
| Negative | #dc2626 |

## Accent

Keep the brand color if there is one. If there is none, pick one warm or one saturated color and use it only for the primary action, the selection and a single highlighted number or line. Example: #ff6b1a.

## Type scale

| Use | Size | Line height | Weight |
| --- | --- | --- | --- |
| Small labels, meta, counts | 12 | 16 | 400, mono welcome |
| Secondary text, captions | 13 to 14 | 20 | 400 |
| Body, nav items | 14 to 15 | 20 to 22 | 400 to 500 |
| Card figures | 28 to 32 | 1 | 500, tabular |
| Page title | 28 to 36 | 1.15 | 400 to 500 |
| Hero headline | 48 to 72 | 1.05 | 500, tracking slightly tight |

Letter spacing is 0 for anything under 16px and may go slightly negative only on large display text.

## Radius

| Element | Radius |
| --- | --- |
| Keycap, tag, small button | 4 to 6 |
| Row, input, button | 8 to 10 |
| Card | 12 to 16 |
| Panel or window | 14 to 20 |

Nested radius: inner = outer − padding, never below 4. A 16px card with 8px padding holds items with an 8px radius.

## Icons

lucide, 16 or 18px, stroke 1.5, color of the muted or secondary text role, 8 to 10px gap to the label.

## Depth

- Dark: surface steps plus a hairline. An active row can carry `inset 0 1px 0 rgba(255,255,255,0.12)` as a top highlight.
- Light: `0 1px 2px rgba(0,0,0,0.05)` for small things, `0 8px 24px rgba(0,0,0,0.06)` for floating ones.
