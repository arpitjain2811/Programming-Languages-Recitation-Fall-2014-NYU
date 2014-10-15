#| simple-let |#

(let ((x 5)) x)



(let ((x 4)) (let ((y (+ x 2))) (* x y))) ;A

(let ((x 4) (y (+ x 2))) (* x y))  ;B


(let ((x 4)) (let ((x 6) (y (+ x 2))) (* x y))) ;C



(let ((x 5))
    (let* ((x (+ x 2))
          (y x))
      (list y x)))


(let ((x 4)) (let* ((x 6) (y (+ x 2))) (* x y))) ;


(let* ((x 4) (y (+ x 2))) (* x y))  ;bs


#| ! |#

(define incr '(4))
(let ((incr 10)) (list incr))
incr

(let () (set! incr 10))
incr