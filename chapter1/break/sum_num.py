total_sum = 0
num = 1

while True:
  total_sum += num
  if total_sum > 50:
    print(f"Sum 50 Stopped at number {num} with a total sum of"
          f" {total_sum}." )
    break
  num += 1