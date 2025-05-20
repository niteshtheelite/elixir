# Elixir Data Types Summary

This document summarizes Elixir's basic and additional data types, sorted alphabetically, with their key characteristics and use cases.

## 1. Atoms
- **Description**: Constants whose value is their name (e.g., `:ok`, `:error`). Stored in a global atom table as integer references.
- **Key Features**: Lightweight, immutable, used for symbolic identifiers. Limited table size (1,048,576 atoms).
- **Use Case**: Status codes, map keys, pattern matching, and Erlang interoperability.
- **Example**: `status = :ok; case {:ok, "Done"} do {:ok, msg} -> msg end`

## 2. Binaries
- **Description**: Sequences of bytes (e.g., `<<1, 2, 3>>`). Strings (e.g., `"hello"`) are UTF-8 encoded binaries.
- **Key Features**: Efficient for byte-level data. Strings support UTF-8 for Unicode.
- **Use Case**: String manipulation, network protocols, and low-level data processing.
- **Example**: `binary = <<1, 2, 3>>; string = "José"; byte_size(string) # => 5`

## 3. Booleans
- **Description**: `true` and `false`, internally atoms `:true` and `:false`.
- **Key Features**: Used for conditional logic, interoperable with atoms.
- **Use Case**: Conditionals, guards, and logical operations.
- **Example**: `is_active = true; is_active and false # => false`

## 4. Charlists
- **Description**: Lists of Unicode codepoints (e.g., `'hello'`), written with single quotes.
- **Key Features**: Less common than strings, used in legacy Erlang code.
- **Use Case**: Interfacing with Erlang libraries or specific text processing.
- **Example**: `charlist = 'hello'; List.to_string(charlist) # => "hello"`

## 5. Floats
- **Description**: Numbers with decimal points (e.g., `3.14`, `-0.001`). 64-bit double-precision.
- **Key Features**: Supports scientific notation (e.g., `1.0e-10`). Limited precision.
- **Use Case**: Calculations requiring decimals, such as measurements or scientific data.
- **Example**: `float = 3.14; float / 2 # => 1.57`

## 6. Functions
- **Description**: Anonymous (e.g., `fn x -> x + 1 end`) or named functions in modules.
- **Key Features**: First-class citizens, support capture syntax (`&(&1 * 2)`).
- **Use Case**: Reusable logic, callbacks, and higher-order functions.
- **Example**: `add = fn a, b -> a + b end; add.(2, 3) # => 5`

## 7. Integers
- **Description**: Whole numbers (e.g., `42`, `-10`). Arbitrary precision (no size limit).
- **Key Features**: Supports large numbers without overflow.
- **Use Case**: Counting, indexing, and arithmetic without decimals.
- **Example**: `large = 12345678901234567890; large * 2`

## 8. Lists
- **Description**: Ordered collections of any type (e.g., `[1, :ok, "hello"]`). Implemented as linked lists.
- **Key Features**: Efficient prepending, slower appending. Supports pattern matching.
- **Use Case**: Sequences, recursive algorithms, and ordered data.
- **Example**: `list = [1, 2, 3]; [0 | list] # => [0, 1, 2, 3]`

## 9. Maps
- **Description**: Key-value collections (e.g., `%{name: "Alice", age: 25}`). Keys and values can be any type.
- **Key Features**: Supports dot notation for atom keys, efficient updates.
- **Use Case**: Structured data, configuration, and key-value storage.
- **Example**: `user = %{name: "Alice"}; user.name # => "Alice"`

## 10. Nil
- **Description**: Represents absence of value, equivalent to atom `:nil`.
- **Key Features**: Used in pattern matching and return values.
- **Use Case**: Indicate missing or undefined data.
- **Example**: `value = nil; is_nil(value) # => true`

## 11. PIDs
- **Description**: Process identifiers (e.g., `<0.123.0>`) for concurrent processes.
- **Key Features**: Unique to each process in Elixir’s actor model.
- **Use Case**: Concurrency, message passing, and process management.
- **Example**: `pid = self(); send(pid, {:msg, "Hello"})`

## 12. Strings
- **Description**: UTF-8 encoded binaries (e.g., `"hello"`), written with double quotes.
- **Key Features**: Supports Unicode, rich `String` module for manipulation.
- **Use Case**: Text processing, user input, and display.
- **Example**: `greeting = "Hello"; String.upcase(greeting) # => "HELLO"`

## 13. Tuples
- **Description**: Ordered, fixed-size collections (e.g., `{1, :ok, "hello"}`).
- **Key Features**: Efficient for small, structured data. Common in function returns.
- **Use Case**: Pattern matching, return values, and fixed data structures.
- **Example**: `point = {1, 2, 3}; {x, _, _} = point; x # => 1`

---

This summary provides a quick reference for Elixir’s data types, their properties, and practical applications. For detailed examples, refer to Elixir documentation or experiment in `iex`.
