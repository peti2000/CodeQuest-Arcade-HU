# Robi, az ügynök vezérlése

### @explicitHints 1

### @activities true

## Első feladat

### Szekvencia

A ``||player:chat parancsra||`` blokkon belül több művelet felhasználható arra, hogy Robi egymás után különböző dolgokat hajtson végre. Robi számos különböző képességgel rendelkezik, amelyek testreszabhatók a legördülő menüből.

Már van egy **interakcio** nevű ``||player:chat parancsra||`` blokk elhelyezve, benne egy ``||agent:ügynök mozog erre||`` blokkal, de a karral is interakcióba kellene lépnie Robinak.
#### ~ tutorialhint

Kattints a **következő** gombra a folytatáshoz

### Interakció

Az ``||agent:agent interakciója a következő irányba||`` blokk az ``||agent:ÜGYNÖK||`` kategóriában utasítja Robit, hogy interakcióba lépjen karokkal, gombokkal, ajtókkal és még sok mással.

Az ``||agent:ÜGYNÖK||`` kategóriából húzz egy ``||agent:agent interakciója a következő irányba||`` blokkot az ``||agent:ügynök mozog erre||`` blokk alá az **interakció** ``||player:chat parancsra||`` blokkon belül.

#### ~ tutorialhint

```blocks
player.onChat("interakcio", function () {
    agent.move(FORWARD, 1)
    agent.interact(FORWARD)
})
```

### Összegzés

Nyomd meg a zöld Lejátszás gombot az új parancs betöltéséhez Robiba. Küldd el az **interakcio** parancsot a Minecraft chatben a kód futtatásához.

#### ~ tutorialhint

```blocks
player.onChat("interakcio", function () {
    agent.move(FORWARD, 1)
    agent.interact(FORWARD)
})
```

```template
player.onChat("interakcio", function () {
    agent.move(FORWARD, 1)
})
```
