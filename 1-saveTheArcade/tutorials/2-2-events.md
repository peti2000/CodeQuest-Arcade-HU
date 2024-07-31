# Robi, az ügynök vezérlése

### @explicitHints 1

### @activities true

## Első feladat

### Robi, a romboló

Nyisd meg a(z) ``||agent:ÜGYNÖK||`` kategóriát, és húzz egy ``||agent:ügynök rombolása||`` blokkot a ``||player:chat parancsra||`` **rombol** nevű blokkjába.

Próbáld meg rávenni Robit, hogy semmisítsen meg egy blokkot az útjában. Nyomd meg a lejátszás gombot, majd küldd el a **rombol** parancsot a Minecraft chatben a kód futtatásához.

#### ~ tutorialhint


```blocks
player.onChat("rombol", function () {
    agent.destroy(FORWARD)
})
```

```template
player.onChat("rombol", function () {
	
})
```
