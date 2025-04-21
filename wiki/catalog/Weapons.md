```mermaid
flowchart
	subgraph Close Combat
		sword(Sword)
		lance(Lance)
		axe(Axe)
		knive(Knive)
		gauntlet(Gauntlet)
		chain(Chain)
		battle-staff(Battle Staff)
		
		sword--beats--->axe
		sword--beats--->knive
		axe--beats--->lance
		axe--beats--->gauntlet
		lance--beats--->sword
		lance--beats--->chain
		gauntlet--beats--->knive
		knive--beats--->battle-staff
		battle-staff--beats--->chain
		chain--beats--->gauntlet
	end
```

## Sword

| Name | Might | Hit  | Critical | Range | Weight | Uses | Cost | Description |
| ---- | ----- | ---- | -------- | ----- | ------ | ---- | ---- | ----------- |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |

## Lance

| Name | Might | Hit  | Critical | Range | Weight | Uses | Cost | Description |
| ---- | ----- | ---- | -------- | ----- | ------ | ---- | ---- | ----------- |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |

## Axe

| Name | Might | Hit  | Critical | Range | Weight | Uses | Cost | Description |
| ---- | ----- | ---- | -------- | ----- | ------ | ---- | ---- | ----------- |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |

## Knive

| Name | Might | Hit  | Critical | Range | Weight | Uses | Cost | Description |
| ---- | ----- | ---- | -------- | ----- | ------ | ---- | ---- | ----------- |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |

## Gauntlet

| Name | Might | Hit  | Critical | Range | Weight | Uses | Cost | Description |
| ---- | ----- | ---- | -------- | ----- | ------ | ---- | ---- | ----------- |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |

## Battle Staff

| Name | Might | Hit  | Critical | Range | Weight | Uses | Cost | Description |
| ---- | ----- | ---- | -------- | ----- | ------ | ---- | ---- | ----------- |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |

## Chain

| Name | Might | Hit  | Critical | Range | Weight | Uses | Cost | Description |
| ---- | ----- | ---- | -------- | ----- | ------ | ---- | ---- | ----------- |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |

```mermaid
flowchart
	subgraph Combat Triangle
		close-combat(Close Combat)
		bow(Bow)
		artillery(Artillery)
		
		close-combat--beats--->bow
		bow--beats--->artillery
		artillery--beats--->close-combat
	end
```

## Bow

| Name | Might | Hit  | Critical | Range | Weight | Uses | Cost | Description |
| ---- | ----- | ---- | -------- | ----- | ------ | ---- | ---- | ----------- |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |

## Artillery

| Name | Might | Hit  | Critical | Range | Weight | Uses | Cost | Description |
| ---- | ----- | ---- | -------- | ----- | ------ | ---- | ---- | ----------- |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |
|      |       |      |          |       |        |      |      |             |