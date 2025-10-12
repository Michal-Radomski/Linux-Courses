Here are some examples of functions in Bash and their syntax:

### Basic Function Example

```bash
my_function() {
  echo "Hello, World!"
}
```

To call the function:

```bash
my_function
```

This prints "Hello, World!" when the function is invoked.

### Function with Arguments

```bash
greet() {
  local name=$1
  echo "Hello, $name!"
}
greet "Alice"
```

This function takes one argument and greets by name. Calling `greet "Alice"` prints "Hello, Alice!".

### Function Returning a Value

```bash
add() {
  local sum=$(( $1 + $2 ))
  echo $sum
}
result=$(add 5 3)
echo "The sum is $result"
```

The `add` function takes two numbers, adds them, and returns the result through `echo`. The caller captures this output.

### Defining Function Using `function` Keyword

```bash
function farewell {
  echo "Goodbye!"
}
farewell
```

An alternate syntax which works the same way.

---

Functions help to organize and reuse code in Bash scripts, and they can take arguments, use local variables, and return
values.[1][2][4][5]

[1](https://www.w3schools.com/bash/bash_functions.php) [2](https://docs.vultr.com/how-to-use-bash-function)
[3](https://www.baeldung.com/linux/bash-functions) [4](https://linuxize.com/post/bash-functions/)
[5](https://phoenixnap.com/kb/bash-function) [6](https://www.geeksforgeeks.org/linux-unix/bash-scripting-functions/)
[7](https://tldp.org/LDP/abs/html/functions.html) [8](https://rtfm.co.ua/en/bash-using-functions-with-examples/)
[9](https://www.futurelearn.com/info/courses/linux-for-bioinformatics/0/steps/203002)
