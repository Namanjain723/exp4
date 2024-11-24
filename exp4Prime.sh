
num=4
is_prime=1  # Assume the number is prime

# Check if the number is less than 2 (not prime)
if [ $num -lt 2 ]; then
  is_prime=0
else
  # Loop from 2 to the square root of the number
  for ((i=2; i*i<=num; i++)); do
    if [ $(($num % i)) -eq 0 ]; then
      is_prime=0
      break
    fi
  done
fi

# Output the result
if [ $is_prime -eq 1 ]; then
  echo "$num is a prime number."
else
  echo "$num is not a prime number."
fi

