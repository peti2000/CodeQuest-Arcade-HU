# Elágazások

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

Based on the direction the agent is facing, the ``||agent:agent detect||`` block should be set to check to the agent’s right from the dropdown. The ``||agent:agent detect||`` block can determine whether there is a solid block next to the agent.
Be sure to specify the correct direction in the ``||agent:agent detect||`` block. Also, the ``||loops:repeat||`` block is already set to run the correct number of times.

#### ~ tutorialhint

```blocks
player.onChat("javit", function () {
    for (let index = 0; index < 12; index++) {
        if (agent.detect(AgentDetection.Block, RIGHT)) {
           
        }
        
    }
})
```

### If true...

If the agent does ``||agent:agent detect||``  a block to the right, we want the agent to ``||agent:agent destroy||``  the block. Inside the ``||logic:if||`` block, add ``||agent:agent destroy||`` **right**.
Whether or not the agent **detects** a block to destroy, when it is complete, we need it to move forward. Let's add an ``||agent:agent move||`` **forward** after the ``||logic:if||`` block.

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

### Run your code

Press the green **Play** button to run the code. Then type **javit** in chat to have your agent complete the task.

Code with a condition can determine whether a specific section of code will run, which eliminates the need for manually coding every single step.

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
