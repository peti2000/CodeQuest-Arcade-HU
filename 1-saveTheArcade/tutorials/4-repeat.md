# Ismétlés

### @explicitHints 1

### @activities true

## First Activity

### Minták

Egyes problémák bizonyos műveletek újra és újra elvégzésével járnak. Egy **ismétlés** blokk leegyszerűsítheti a megoldást azáltal, hogy nincs szükség ugyanazon kód többszöri átírására.
Az ``||loops:ismétlés||`` blokk egy **összetett utasításblokk**. Egy összetett utasításblokk bárhova elfér, ahol egy utasításblokk elfér, de van egy belső szakasza is, ahol további utasításblokkok adhatók hozzá.

#### ~ tutorialhint

Egy ``||loops:ismétlés||`` blokk belefér egy eseményblokkba, de utasításblokkokra van szüksége benne.

```blocks
player.onChat("tiszta", function () {
    for (let index = 0; index < 4; index++) {
    	
    }
})
```

### Szekvencia ismétlése

Húzz egy ``||loops:ismétlés||`` blokkot a ``||loops:CIKLUSOK||`` kategóriából a ``||player:chat parancsra||`` kategóriájába, és helyezd el a meglévő ``||agent:ügynök rombol||`` és ``||agent:ügynök mozog||`` blokkokat benne.

Az ``||loops:ismétlés||`` blokk **ciklus**, mert ugyanazon a kódszakaszon többször is végigfut.

#### ~ tutorialhint

```blocks
player.onChat("tiszta", function () {
    for (let index = 0; index < 4; index++) {
        agent.destroy(FORWARD)
        agent.move(FORWARD, 1)
    }
})
```

### Ismétlések számolása

Meg kell adnunk, hogy hányszor fusson le az ``||loops:ismétlés||`` blokk. Alapértelmezés szerint 4 van beállítva, de Robinak 12 helye van a tisztításra. A **4** értéket **12**-re változtathatjuk az ``||loops:ismétlés||`` blokkon belül.

#### ~ tutorialhint

```blocks
player.onChat("tiszta", function () {
    for (let index = 0; index < 12; index++) {
        agent.destroy(FORWARD)
        agent.move(FORWARD, 1)
    }
})
```

### Összegzés

Az ismétlődő ciklusok utasítások sorozatát bizonyos számú alkalommal futtatják, nagymértékben csökkenthetik a probléma megoldásához írandó kód mennyiségét.

Ne felejtsd el megnyomni a Lejátszás gombot, majd a kód futtatásához írd be a **tiszta** szót a chatbe.

#### ~ tutorialhint

```blocks
player.onChat("tiszta", function () {
    for (let index = 0; index < 12; index++) {
        agent.destroy(FORWARD)
        agent.move(FORWARD, 1)
    }
})
```

```template
player.onChat("tiszta", function () {
    agent.destroy(FORWARD)
    agent.move(FORWARD, 1)
})
```

```ghost
player.onChat("run", function () {
    for (let index = 0; index < 4; index++) {
        agent.destroy(FORWARD)
        agent.move(FORWARD, 1)
    }
})
```
