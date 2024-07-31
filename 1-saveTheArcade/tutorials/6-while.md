# While

### @explicitHints 1

### @activities true

## First Activity

### Conditional looping

For some problems involving a loop, a ``||loops:repeat block||`` is not the best option. We may need to run the code until a certain condition is met. 

A ``||loops:while||`` block is another type of loop that uses a condition to determine whether it should repeatedly loop through its code.

#### ~ tutorialhint

A ``||loops:while||`` block runs its code while the condition is true.  After running the code inside, the ``||loops:while||`` block checks the condition once more to determine whether to run its code again.  The ``||loops:while||`` loop terminates when the condition is false.

### Agent inspect

The ``||agent:agent inspect||`` block is a value block.  **Value blocks** have a distinct rounded shape and provide a piece of information, which is called a **value**.  The information returned by ``||agent:agent inspect||`` is the type of Minecraft block next to the agent. Value blocks fit in the rounded bubbles of other code blocks where a value is expected.Notice that ``||agent:agent inspect||`` is in the rounded bubble of the ``||agent:agent set block or item||`` block.

#### ~ tutorialhint

The placement of ``||agent:agent inspect||`` in ``||agent:agent set block or item||`` puts whatever block is to the agent's right in the agent's inventory.

### Comparing values

The ``||logic:LOGIC||`` category has a condition block that allows for the ``||logic:comparison||`` of two values.  With the **equal sign (=)** selected, the ``||logic:comparison||`` block returns true if the two values are the same.
Try to use a ``||logic:comparison||`` block to make a condition for the ``||loops:while||`` block.  The agent needs to continue its task ``||loops:while||`` ``||agent:agent inspect||`` **down** is equal to **cobblestone**.

#### ~ tutorialhint

```blocks
player.onChat("copy", function () {
    while (agent.inspect(AgentInspection.Block, DOWN) == COBBLESTONE) {
        agent.setItem(agent.inspect(AgentInspection.Block, RIGHT), 1, 1)
        agent.place(LEFT)
        agent.move(FORWARD, 1)
    }
})
```

### Review

A ``||loops:while||`` block uses a condition to determine whether it should continue to loop through its code. ``||loops:While||`` loops are useful when the number of times to repeat is unclear but a condition for repeating is apparent. ``||logic:Comparison||`` blocks can compare two values to create a condition.
Don't forget to run your code and type **copy** in the chat.

#### ~ tutorialhint

```blocks
player.onChat("copy", function () {
    while (agent.inspect(AgentInspection.Block, DOWN) == COBBLESTONE) {
        agent.setItem(agent.inspect(AgentInspection.Block, RIGHT), 1, 1)
        agent.place(LEFT)
        agent.move(FORWARD, 1)
    }
})
```

```template
player.onChat("copy", function () {
    while (false) {
        agent.setItem(agent.inspect(AgentInspection.Block, RIGHT), 1, 1)
        agent.place(LEFT)
        agent.move(FORWARD, 1)
    }
})
```

```ghost

player.onChat("copy", function () {
    while (agent.inspect(AgentInspection.Block, FORWARD) == COBBLESTONE) {
        agent.setItem(agent.inspect(AgentInspection.Block, FORWARD), 1, 1)
        agent.place(FORWARD)
        agent.move(FORWARD, 1)
    }
})
```
