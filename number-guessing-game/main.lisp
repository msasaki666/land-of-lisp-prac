;;数当てゲーム(1~100)
;;正解は心の中で用意する
;;(start-over)でゲーム開始
;;表示される数字より正解の数字が小さければ(smaller)、大きければ(bigger)を実行

(defun start-over
    ()
    (defparameter *small* 1)
    (defparameter *big* 100)
    (guess-my-number)
)

(defun guess-my-number
    ()
    (ash
        (+ *small* *big*) -1)
)

(defun smaller
    ()
    (setf *big*
        (1-
            (guess-my-number)))
    (guess-my-number))

(defun bigger
    ()
    (setf *small*
        (1+
            (guess-my-number)))
    (guess-my-number))
