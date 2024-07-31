# Repeat

### @explicitHints 1

### @activities true

## First Activity

### Patterns

Some problems involve performing a certain set of actions over and over.  A **repeat loop** can simplify the solution by eliminating the need to rewrite the same code multiple times.
A ``||loops:repeat||`` block is a **compound statement block**.  A compound statement block can fit anywhere a statement block fits, but also has an inner section where more statement blocks can be added.

#### ~ tutorialhint

A ``||loops:repeat||`` block fits inside an event block but needs statement blocks inside it.

```blocks
player.onChat("clean", function () {
    for (let index = 0; index < 4; index++) {
    	
    }
})
```

### Repeating a sequence

Drag a ``||loops:repeat||`` block from the ``||loops:LOOPS||`` category into the ``||player:chat command||`` and place the existing ``||agent:agent destroy||`` and ``||agent:agent move||`` code blocks inside it.

A ``||loops:repeat||`` block is a type of **loop** because it loops through the same section of code multiple times.

#### ~ tutorialhint

```blocks
player.onChat("clean", function () {
    for (let index = 0; index < 4; index++) {
        agent.destroy(FORWARD)
        agent.move(FORWARD, 1)
    }
})
```

### Loop Counting

We need to specify how many times we want the ``||loops:repeat||`` block to run. By default it is set to 4 times, but the agent has 12 spaces to clean. We can change the **4** value to a **12** inside the ``||loops:repeat||`` block.

#### ~ tutorialhint

```blocks
player.onChat("clean", function () {
    for (let index = 0; index < 12; index++) {
        agent.destroy(FORWARD)
        agent.move(FORWARD, 1)
    }
})
```

### Review

Repeat loops run a sequence of statements a certain number of times. Loops can greatly reduce the amount of code to write to solve a problem.

Don't forget to press Play and then type **clean** in the chat to run the code.

#### ~ tutorialhint

```blocks
player.onChat("clean", function () {
    for (let index = 0; index < 12; index++) {
        agent.destroy(FORWARD)
        agent.move(FORWARD, 1)
    }
})
```

```template
player.onChat("clean", function () {
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
