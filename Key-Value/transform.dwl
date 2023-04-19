%dw 2.0
output application/json
---
payload map ($.name): $.options map (($.label): $.value) reduce ((item, accumulator={}) -> accumulator ++ item)