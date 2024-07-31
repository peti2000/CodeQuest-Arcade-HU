# Elágazások (ha)

### @explicitHints 1

### @activities true

## First Activity

### Döntéshozatal

Egyes problémák a műveletek újra és újra elvégzésével járnak, de más műveletek nem feltétlenül ismétlődnek meg következetesen. Egy ``||logic:ha||`` blokk leegyszerűsítheti a kódot azáltal, hogy meghatározza, mikor érdemes végrehajtani egy bizonyos műveletet.
A ``||logic:ha||`` blokk egy másik típusú **összetett utasításblokk**. Egy **feltételt** használ annak meghatározására, hogy futtassa-e a kódját. Ha a feltétel igaz, akkor a ``||logic:ha||`` blokkon belüli kód lefut.

#### ~ tutorialhint

Egy **feltétel** lehet igaz vagy hamis. A **feltételblokkok** külön hegyes alakkal rendelkeznek, jelezve, hogy ott illeszkednek, ahol a feltétel elvárt.

### Ügynöki érzék

Próbálj meg egy ``||logic:ha||`` blokkot és egy ``||agent:ügynök felismeri||`` blokkot használni, hogy az ``||agent:ügynök rombol||`` csak tömör blokkokat vegyen figyelembe.
A ``||logic:FELTÉTELEK||`` kategóriából húzz egy ``||logic:ha||`` blokkot az ``||loops:ismétlés||`` blokkon belülre.
Az ``||agent:ÜGYNÖK||`` kategóriából húzz egy ``||agent:ügynök felismeri||`` blokkot, és helyezd el a ``||logic:ha||`` blokkon belül a megfelelő helyre.

#### ~ tutorialhint

```blocks
player.onChat("javit", function () {
    for (let index = 0; index < 12; index++) {
        if (agent.detect(AgentDetection.Block, FORWARD)) {
        }
    }
})
```
### A feltétel meghatározása

Attól függően, hogy Robi milyen irányba néz, az ``||agent:ügynök felismeri||`` blokkot úgy kell beállítani, hogy a legördülő menüből Robitól jobbra ellenőrizze. Az ``||agent:ügynök felismeri||`` blokk meg tudja határozni, hogy van-e szilárd kocka Robi mellett.
Ügyelj arra, hogy a megfelelő irányt add meg az ``||agent:ügynök felismeri||`` blokkban, ezenkívül az ``||loops:ismétlés||`` blokk már be van állítva a megfelelő számú futásra.

#### ~ tutorialhint

```blocks
player.onChat("javit", function () {
    for (let index = 0; index < 12; index++) {
        if (agent.detect(AgentDetection.Block, RIGHT)) {
           
        }
        
    }
})
```

### Ha igaz...

Ha Robi ``||agent:ügynök felismeri||`` blokk segítségével egy kockát detektál a jobb oldalán, akkor azt akarjuk, hogy ``||agent:Robi rombolja le||`` a blokkot. A ``||logic:ha||`` blokkon belül add hozzá a következőt: ``||agent:ügynök rombolása||`` **jobba**.
Függetlenül attól, hogy Robi **észleli** a megsemmisítendő kockát vagy sem, ha az elkészült, szükségünk van rá, hogy továbblépjen. Adjunk hozzá egy ``||agent:ügynök mozog||`` **előre** blokkot a ``||logic:ha||`` blokk után.

#### ~ tutorialhint

```blocks
player.onChat("javit", function () {
    for (let index = 0; index < 12; index++) {
        if (agent.detect(AgentDetection.Block, RIGHT)) {
            agent.destroy(RIGHT)
        }
        agent.move(FORWARD, 1)
    }
})
```

### Futtasd a kódod

Nyomd meg a zöld **Lejátszás** gombot a kód futtatásához. Ezután írjd be a **javit** szót a chatbe, hogy Robi elvégezze a feladatot.

A feltétellel rendelkező kód meghatározhatja, hogy egy adott kódrészlet lefusson-e, ami szükségtelenné teszi minden egyes lépés manuális kódolását.

#### ~ tutorialhint

```blocks
player.onChat("javit", function () {
    for (let index = 0; index < 12; index++) {
        if (agent.detect(AgentDetection.Block, RIGHT)) {
            agent.destroy(RIGHT)
        }
        agent.move(FORWARD, 1)
    }
})
```

```template
player.onChat("javit", function () {
    for (let index = 0; index < 12; index++) {
    }
})
```

```ghost
player.onChat("run", function () {
    for (let index = 0; index < 12; index++) {
        if (agent.detect(AgentDetection.Block, FORWARD)) {
            agent.destroy(FORWARD)
            agent.move(FORWARD, 1)
        }
    }
})
```
