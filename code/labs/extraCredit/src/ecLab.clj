;; 1a
((fn [x y z] (max (Math/abs x) (Math/abs y) (Math/abs z) )) 1 -20 10)

;; 1b
((fn [x y z] (+ x y z)) 10 20 30)
((fn [x] (nil? x)) 0)
((fn [] 17.2))

;; 2a
(def squareSquare #(Math/pow (Math/pow % 2) 2))

;; 3
(filter (fn [x] (or (neg? x) (odd? x))) [-1 1 -2 2 -3 3 -4 4])

;; 3a
(defn negate [sequence] (map - sequence))

;; 4a
(defn sumSquares [seq] (reduce + (map #(* % %) seq)))