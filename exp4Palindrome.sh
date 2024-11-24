num=123215
original_num=$num
reverse_num=0

# Reverse the number
while [ $num -gt 0 ]; do
  remainder=$(($num % 10))  # Get the last digit
  reverse_num=$(($reverse_num * 10 + $remainder))  # Build the reversed number
  num=$(($num / 10))  # Remove the last digit
done

if [ $original_num -eq $reverse_num ]; then
  echo "$original_num is a palindrome."
else
  echo "$original_num is not a palindrome."
fi
