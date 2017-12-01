

;;; 该题的程序需要的时间是前一题的board-size 倍数

;;; 因为把循序交换了以后，对于(enumerate-interval 1 board-size)
;;; 产生的每一个元素需要进行一次 (queen-cols (- k 1)) 到 (queen-cols 0) 的递归，

;;; 而前一题只需进行一次 (queen-cols (- k 1)) 到 (queen-cols 0) 的递归

