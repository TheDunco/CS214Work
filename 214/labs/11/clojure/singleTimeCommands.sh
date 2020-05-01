echo "Running Clojure time commands with a single threaded approach"

echo "========= 5numbers.txt =========="
clojure -m arraySum /home/cs/214/labs/11/numbers/5numbers.txt
clojure -m arraySum /home/cs/214/labs/11/numbers/5numbers.txt
clojure -m arraySum /home/cs/214/labs/11/numbers/5numbers.txt

echo "========= 1000numbers.txt =========="
clojure -m arraySum /home/cs/214/labs/11/numbers/1000numbers.txt
clojure -m arraySum /home/cs/214/labs/11/numbers/1000numbers.txt
clojure -m arraySum /home/cs/214/labs/11/numbers/1000numbers.txt

echo "========= 10000numbers.txt =========="
clojure -m arraySum /home/cs/214/labs/11/numbers/10000numbers.txt
clojure -m arraySum /home/cs/214/labs/11/numbers/10000numbers.txt
clojure -m arraySum /home/cs/214/labs/11/numbers/10000numbers.txt

echo "========= 100000numbers.txt =========="
echo "Only running once to actually be able to finish this lab..."
clojure -m arraySum /home/cs/214/labs/11/numbers/100000numbers.txt

echo "========= 100000numbers.txt =========="
clojure -m arraySum /home/cs/214/labs/11/numbers/1000000numbers.txt

echo "========= 1000000numbers.txt =========="
clojure -m arraySum /home/cs/214/labs/11/numbers/10000000numbers.txt

echo "And, I don't want to wait for upwards of half an hour, so just no"
# echo "========= 10000000numbers.txt =========="
# clojure -m arraySum /home/cs/214/labs/11/numbers/100000000numbers.txt










