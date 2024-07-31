# Sequencing

### @explicitHints 1

### @activities true

## First Activity

### Kocka lerakása

Robi képes Minecraft kockákat elhelyezni, de ez egy többlépcsős folyamat. Mielőtt elhelyezhetne egy Minecraft kockát, rendelkeznie kell vele a készletében.

Az első lépés az ``||agent:agent lehelyezi a blokkot a következő nyílásba||`` használatával kockát helyezni Robi leltárába.

#### ~ tutorialhint

Robi alapértelmezetten mindig az első nyílásából helyezi el a kockákat, ezért használd az ``||agent:agent lehelyezi a blokkot a következő nyílásba||`` blokkot, hogy Robi leltárának **1.** helyére kockát helyezz el.

### Keresés név alapján

Az ``||agent:agent lehelyezi a blokkot a következő nyílásba||`` legördülő menüje meglehetősen nagy, így egy adott Minecraft kocka megtalálása kihívást jelenthet.

A legördülő menüben keress rá a **vöröskő** kifejezésre, hogy gyorsan megtaláld és válaszd ki a **Vöröskő blokk** lehetőséget.

#### ~ tutorialhint

```blocks
player.onChat("lerak", function () {
    agent.setItem(REDSTONE_BLOCK, 1, 1)
})
```

### Egymást követő tevékenységek

A második lépés egy kocka elhelyezése után Robi leltárába, hogy lerakja a kockát az ``||agent:ügynök helye||`` blokkal.

Húzz egy ``||agent:ügynök helye||`` blokkot az ``||agent:ÜGYNÖK||`` kategóriából, és csatold az ``||agent:agent lehelyezi a blokkot a következő nyílásba||`` aljához. Ezután futtasd a **lerak** ``||player:chat parancsot||``.


#### ~ tutorialhint

```blocks
player.onChat("lerak", function () {
    agent.setItem(REDSTONE_BLOCK, 1, 1)
    agent.place(FORWARD)
})
```

```template
player.onChat("lerak", function () {
    agent.setItem(GRASS, 1, 1)
})
```

```ghost
player.onChat("run", function () {
    agent.setItem(REDSTONE_BLOCK, 1, 1)
    agent.place(FORWARD)
})
```
