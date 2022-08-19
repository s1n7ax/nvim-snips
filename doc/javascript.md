# JavaScript snippets

## How to use

```lua
local ls = require('luasnip')
local js = require('snips.javascript')

local s = ls.s
local i = ls.insert_node

local snippets = function()
    return {
        s('f', js.function_context(), {
            stored = {
                name = i(1, 'name'),
                param = i(1),
                body = i(1),
            },
        }),
        s('o', js.stdout_choice(), {
            stored = {
                value = i(1, 'value'),
            },
        }),
        s('con', js.constructor()),
        s('c', js.class()),
    }
end

ls.add_snippets('javascript', snippets())
ls.add_snippets('typescript', snippets())
ls.add_snippets('javascriptreact', snippets())
ls.add_snippets('typescriptreact', snippets())
```

## Dynamic Snips

<details>
<summary>function_context</summary>

**output**

*inside module*
```javascript
const |name| = (|) => {
    |
}
```

*inside class*
```javascript
class Test {
    |name|(|) {
        |
    }
}
```

*inside method*

```javascript
class Test {
    print() {
        const |name| = (|) => |
    }
}
```

```javascript
class Test {
    print() {
        const |name| = (|) => {
            |
        }
    }
}
```

*on return*
```javascript
class Test {
    print() {
        return (|) => |
    }
}
```

```javascript
class Test {
    print() {
        return (|) => {
            |
        }
    }
}
```

*on variable declaration*

```javascript
class Test {
    print() {
        const something = (|) => |
    }
}
```

```javascript
class Test {
    print() {
        const something = (|) => {
            |
        }
    }
}
```

**stored**
```lua
stored = {
    name = i(1, 'name')
    param = i(1)
    body = i(1)
}
```
</details>

## Choice Snips

<details>
<summary>stdout_choice</summary>

**output**
```javascript
console.log(|)
```

```javascript
console.error(|)
```

```javascript
console.info(|)
```

```javascript
console.debug(|)
```

**stored**
```lua
stored = {
    value = i(1)
}
```
</details>

<details>
<summary>function_choice</summary>

**output**

[lexical_declarative_arrow_function](#lexical_declarative_arrow_function)

[declarative_function](#declarative_function)

**stored**
```lua
stored = {
    name = i(1, 'name')
    param = i(1)
    body = i(1)
}
```
</details>

<details>
<summary>anonymous_function_choice</summary>

**output**

[inline_anonymous_function](#inline_anonymous_function)

[multiline_anonymous_function](#multiline_anonymous_function)


**stored**
```lua
stored = {
    param = i(1)
    body = i(1)
}
```
</details>

## Primitive Snips

<details>
<summary>class</summary>

**output**
```javascript
class |Name| {
    |
}
```
</details>

<details>
<summary>constructor</summary>

**output**
```javascript
constructor(|) {
    |
}
```
</details>

<details>
<summary>method</summary>

**output**
```javascript
|name|() {
    |
}
```

**stored**
```lua
stored = {
    name = i(1, 'name')
    param = i(1)
    body = i(1)
}
```
</details>

<details>
<summary>declarative_function</summary>

**output**
```javascript
function |name|(|) {
    |
}
```

**stored**
```lua
stored = {
    name = i(1, 'name')
    param = i(1)
    body = i(1)
}
```
</details>

<details>
<summary>lexical_declarative_arrow_function</summary>

**output**
```javascript
const |name| = (|) => {
    |
}
```

**stored**
```lua
stored = {
    name = i(1, 'name')
    param = i(1)
    body = i(1)
}
```
</details>

<details>
<summary>inline_anonymous_function</summary>

**output**
```javascript
(|) => |
```

**stored**
```lua
stored = {
    param = i(1)
    body = i(1)
}
```
</details>

<details>
<summary>multiline_anonymous_function</summary>

**output**
```javascript
(|) => {
    |
}
```

**stored**
```lua
stored = {
    param = i(1)
    body = i(1)
}
```
</details>

