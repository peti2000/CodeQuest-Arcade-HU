# Ciklusok (Amíg)

### @explicitHints 1

### @activities true

## First Activity

### Feltételes ciklus

Egyes ciklusokkal kapcsolatos problémák esetén az ``||loops:ismétlés||`` blokk nem a legjobb megoldás. Lehetséges, hogy le kell futtatnunk a kódot, amíg egy bizonyos feltétel nem teljesül.

Az ``||loops:amíg||`` blokk egy másik típusú ciklus, amely feltételt használ annak meghatározására, hogy kell-e ismételten végigfutnia a kódon.

#### ~ tutorialhint

Az ``||loops:amíg||`` blokk addig futtatja a kódját, amíg a feltétel igaz. A belső kód futtatása után az ``||loops:amíg||`` blokk még egyszer ellenőrzi a feltételt, hogy eldöntse, újra le kell-e futtatni a kódot. Az ``||loops:amíg||`` ciklus véget ér, ha a feltétel hamis.

### Vizsgálódás

Az ``||agent:ügynök megvizsgálja||`` blokk egy értékblokk. Az **értékblokkok** határozottan lekerekített formájúak, és információt szolgáltatnak, amelyet **értéknek** nevezünk. Az ``||agent:ügynök megvizsgálja||`` blokk által visszaadott információ az ügynök melletti Minecraft kocka típusa. Az értékblokkok elférnek más kódblokkok lekerekített buborékaiban, ahol értéket várnak. Figyeld meg, hogy az ``||agent:ügynük megvizsgálja||`` az ``||agent:agent lehelyezi a blokkot||`` kerekített buborékában található.

#### ~ tutorialhint

Az ``||agent:ügynök megvizsgálja||`` blokk elhelyezése az ``||agent:agent lehelyezi a blokkot||``-ban Robi leltárában a tőle jobbra található blokkot helyezi el.

### Értékek összehasonlítása

A ``||logic:FELTÉTELEK||`` kategória rendelkezik egy feltételblokkkal, amely lehetővé teszi két érték ``||logic:összehasonlítását||``. Ha az **egyenlőségjelet (=)** kiválasztod, az ``||logic:összehasonlítás||`` blokk igaz értéket ad vissza, ha a két érték megegyezik.
Használj ``||logic:összehasonlítás||`` blokkot az ``||loops:amíg||`` blokk feltételéhez. Robinak folytatnia kell feladatát ``||loops:amíg||`` ``||agent:ügynök megvizsgál||`` **lent** egyenlő **macskakő**-vel.

#### ~ tutorialhint

```blocks
player.onChat("masol", function () {
    while (agent.inspect(AgentInspection.Block, DOWN) == COBBLESTONE) {
        agent.setItem(agent.inspect(AgentInspection.Block, RIGHT), 1, 1)
        agent.place(LEFT)
        agent.move(FORWARD, 1)
    }
})
```

### Összegzés

Az ``||loops:amíg||`` blokk egy feltételt használ annak meghatározására, hogy folytatnia kell-e a ciklust a kódjában. Az ``||loops:amíg||`` ciklusok akkor hasznosak, ha az ismétlések száma nem világos, de az ismétlés feltétele nyilvánvaló. Az ``||logic:összehasonlítás||`` blokkok összehasonlíthatnak két értéket egy feltétel létrehozásához.
Ne felejtsd el lefuttatni a kódot, és beírni a **masol** szót a chatbe.

#### ~ tutorialhint

```blocks
player.onChat("masol", function () {
    while (agent.inspect(AgentInspection.Block, DOWN) == COBBLESTONE) {
        agent.setItem(agent.inspect(AgentInspection.Block, RIGHT), 1, 1)
        agent.place(LEFT)
        agent.move(FORWARD, 1)
    }
})
```

```template
player.onChat("masol", function () {
    while (false) {
        agent.setItem(agent.inspect(AgentInspection.Block, RIGHT), 1, 1)
        agent.place(LEFT)
        agent.move(FORWARD, 1)
    }
})
```

```ghost

player.onChat("masol", function () {
    while (agent.inspect(AgentInspection.Block, FORWARD) == COBBLESTONE) {
        agent.setItem(agent.inspect(AgentInspection.Block, FORWARD), 1, 1)
        agent.place(FORWARD)
        agent.move(FORWARD, 1)
    }
})
```
