# Robi, az ügynök vezérlése

### @explicitHints 1

### @activities true

## Első feladat

### Chat parancsok

A(z) ``||player:chat parancsra||`` **ciklus blokk** akkor futtatja le a kódját, amikor egy adott üzenetet küldesz a Minecraft chaten keresztül. Próbáld meg elérni, hogy ``||agent:Robi menjen előre||`` egy blokkot úgy, hogy elküldöd a **mozog** üzenetet a chatben.
Nyomd meg a zöld Lejátszás gombot a kód futtatásához. Ezután nyomd meg a **T** billentyűt (vagy érintsd meg a Csevegés ikont) a Minecraft chat megnyitásához, és írd be a **mozog** szót a chatbe.

#### ~ tutorialhint

```blocks
player.onChat("mozog", function () {
    agent.move(FORWARD, 1)
})
```

```template
player.onChat("mozog", function () {
    agent.move(FORWARD, 1)
})
```
