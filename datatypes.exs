#integers:

integer1 = 34
integer2 = -255489715348957349858952347985
integer3 = 5834754389482390573489512390587851389085971593


sum  = integer1 + integer2
product = integer2 * integer3

IO.puts("Integer1 : #{integer1}")
IO.puts("Integer2 : #{integer2}")
IO.puts("Integers3 : #{integer3}")
IO.puts("Sum : #{sum}")
IO.puts("product : #{product}")


#float numbers

float1 =43.4
float2 = -34.5
float3 = 1.0e-10

sub= float1 - float2
divide = float1 / float3

IO.puts("float1 : #{float1}")
IO.puts("float2 : #{float2}")
IO.puts("float2 : #{float3}")
IO.puts("substract : #{sub}")
IO.puts("divide : #{divide}")


# Atom 
# Constants whose value is their own name, used for symbolic identifiers. Stored in a global atom table.

status1 = :ok
status2 = :error
module_name = :user


result = {:ok, "Operation succeeded"}


case result do
  {:ok, message} -> IO.puts("success  #{message}")
  {:error, reason} -> IO.puts("Failed #{reason}")
end

IO.puts("Status1 #{status1}")
IO.puts("Status2 #{status2}")
IO.puts("Module Name #{module_name}")

#Boolean

# Booleans: true and false
is_active = true
is_disabled = false

# Boolean operations
and_result = is_active and is_disabled
or_result = is_active or is_disabled

# Check if booleans are atoms
is_true_atom = is_atom(true)
is_false_atom = is_atom(false)

# Inspect results
IO.puts("Is Active: #{is_active}")
IO.puts("Is Disabled: #{is_disabled}")
IO.puts("AND Result: #{and_result}")
IO.puts("OR Result: #{or_result}")
IO.puts("Is true an atom? #{is_true_atom}")
IO.puts("Is false an atom? #{is_false_atom}")




