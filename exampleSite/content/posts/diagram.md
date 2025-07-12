+++
title = 'Diagram Testing'
date = 2023-02-15T09:00:00-07:00
draft = false
+++


# Hey

## Goat Diagrams

```goat
+--------+
| Hey 1  |--+
| Test 2 |  |   +------+   +------+   +------+
+--------+  +-->| Test |-->| Test |-->| Test |
            |   +------+   +------+   +------+
+--------+  |
| Hey 2  |--+
+--------+
```

## Mermaid Diagrams

```mermaid
graph LR
    %% Define Nodes with better shapes
    A([Start])
    B{Is it working?}
    C[Great!]
    D[Fix it]
    E([End])

    %% Define Connections
    A --> B
    B -- Yes --> C
    B -- No --> D
    D --> B
    C --> E
```
