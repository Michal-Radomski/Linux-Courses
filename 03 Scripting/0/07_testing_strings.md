Here are some examples of testing strings in bash:

1. Testing if two strings are equal:

```bash
string1="apples"
string2="oranges"
if [ "$string1" = "$string2" ]; then
  echo "The two strings are equal."
else
  echo "The two strings are not equal."
fi
```

2. Testing if two strings are not equal:

```bash
string1="apples"
string2="oranges"
if [ "$string1" != "$string2" ]; then
  echo "Strings are different."
else
  echo "Strings are not different."
fi
```

3. Testing if a string is empty using `-z`:

```bash
string=""
if [[ -z $string ]]; then
  echo "The string is empty."
else
  echo "The string is not empty."
fi
```

4. Testing if a string is non-empty using `-n`:

```bash
string="hello"
if [[ -n $string ]]; then
  echo "The string is not empty."
else
  echo "The string is empty."
fi
```

5. Checking if a string contains a substring (partial matching):

```bash
str="hello world"
if [[ "$str" == *"world"* ]]; then
  echo "str contains 'world'"
fi
```

6. Using single line tests with logical AND and OR:

```bash
[ "$string1" = "$string2" ] && echo "Strings are equal." || echo "Strings are not equal."
```

The common operators for string testing in bash include:

- `=` for equality,
- `!=` for inequality,
- `-z` to check if string length is zero (empty),
- `-n` to check if string length is non-zero (non-empty),
- `[[ ... ]]` for advanced pattern matching with wildcards like `*` and `?`.

These examples cover basic string comparison, emptiness checks, and substring matching in bash scripts.[1][2][3][4]

[1](https://linuxconfig.org/compare-string-in-bash) [2](https://kodekloud.com/blog/bash-compare-strings/)
[3](https://www.namehero.com/blog/bash-string-comparison-the-comprehensive-guide/)
[4](https://blog.devops.dev/bash-crash-course-test-command-part-b-string-comparisons-78f5fdd0171d)
[5](https://stackoverflow.com/questions/2237080/how-to-compare-strings-in-bash)
[6](https://docs.rockylinux.org/10/books/learning_bash/05-tests/) [7](https://www.copahost.com/blog/compare-strings-bash/)
[8](https://linuxize.com/post/how-to-compare-strings-in-bash/)
