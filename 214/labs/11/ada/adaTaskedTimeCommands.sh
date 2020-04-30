echo "Building tasked_array_sum using make"
make
echo "Success!"

echo "Running tasked_array_sum on all files in .../numbers/ directory with 1..5 tasks (threads)"

echo " ========== 5numbers.txt ========== "
echo " ---------- 1 Thread ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 1
echo " ---------- 2 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 2
echo " ---------- 3 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 3
echo " ---------- 4 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 4
echo " ---------- 5 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/5numbers.txt 5

echo " ========== 1000numbers.txt ========== "
echo " ---------- 1 Thread ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 1
echo " ---------- 2 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 2
echo " ---------- 3 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 3
echo " ---------- 4 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 4
echo " ---------- 5 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/1000numbers.txt 5

echo " ========== 10000numbers.txt ========== "
echo " ---------- 1 Thread ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 1
echo " ---------- 2 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 2
echo " ---------- 3 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 3
echo " ---------- 4 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 4
echo " ---------- 5 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/10000numbers.txt 5

echo " ========== 100000numbers.txt ========== "
echo " ---------- 1 Thread ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 1
echo " ---------- 2 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 2
echo " ---------- 3 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 3
echo " ---------- 4 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 4
echo " ---------- 5 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/100000numbers.txt 5

echo " ========== 1000000numbers.txt ========== "
echo " ---------- 1 Thread ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 1
echo " ---------- 2 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 2
echo " ---------- 3 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 3
echo " ---------- 4 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 4
echo " ---------- 5 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/1000000numbers.txt 5

echo " ========== 10000000numbers.txt ========== "
echo " ---------- 1 Thread ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 1
echo " ---------- 2 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 2
echo " ---------- 3 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 3
echo " ---------- 4 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 4
echo " ---------- 5 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/10000000numbers.txt 5

echo " ========== 100000000numbers.txt ========== "
echo " ---------- 1 Thread ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 1
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 1
echo " ---------- 2 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 2
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 2
echo " ---------- 3 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 3
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 3
echo " ---------- 4 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 4
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 4
echo " ---------- 5 Threads ---------- "
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 5
./tasked_array_sum /home/cs/214/labs/11/numbers/100000000numbers.txt 5
