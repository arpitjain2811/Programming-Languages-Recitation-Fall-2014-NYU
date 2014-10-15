#| SCHEME |#
#| my-reverse |#

(define (my-reverse lis)
  (cond
    ((null? lis) lis)
    ((list? (car lis)) (removebrac (my-reverse (cdr lis)) (cons (my-reverse (car lis)) '())))
        (else (removebrac (my-reverse (cdr lis)) (cons (car lis) '())))
   )
)
(define x '(1 1 4 5 6 7 7 8 8 8))
(define y '(1 3 4 (3 4) 5 6 7 8))


#| my-list-tail |#

(define (my-list-tail lis k)
  (cond
    ((not (list? lis)) '())
    ((= k 0)lis )
    ((null? lis) "error")
    (else (my-list-tail (cdr lis) (- k 1) ))
  )
)


#| my-list-ref |#
(define (my-list-ref lis k)
  (cond
    ((null? lis) "k exceeds possible value")
    ((= k 1) (car lis) )
    ((< k 0) "k should be greater than one" )
    (else (my-list-ref (cdr lis) (- k 1) ))
  )
)

#| list-max |#
(define (list-max lis )
  (my-list-max lis 0)
)

(define (my-list-max lis m)
  (cond
    ((null? lis) m)
    ((< m (car lis))(my-list-max (cdr lis) (car lis)))
    (else (my-list-max (cdr lis) m))
   )
)

#| list-remove-k |#

(define (list-remove-k lis k)
(cond
  ((null? lis) lis)
  ((= k (car lis))(list-remove-k (cdr lis) k))
  (else  ( removebrac (cons (car lis) '() ) (list-remove-k (cdr lis) k)))
  
  
  )
  
)

#| list-highest-k |#

(define (list-remove-k1 lis k)
(cond
  ((= k (car lis))(cdr lis))
   ((null? (cdr lis)) lis)
  (else  ( removebrac (cons (car lis) '() ) (list-remove-k1 (cdr lis) k)))
  
  
  )
  
)
(define (list-highest-k lisa a)
   (cond
 
        ((> a 0 ) (removebrac ( list-highest-k ( list-remove-k1 lisa (list-max lisa)) (- a 1) ) (cons (list-max lisa) '()) ) )
        ((= a 0) '() )
        
    )
)

#| Dynamically Typed |#
(define (dynamic)
  (
   cons (- 1 "text") '()
   )
  )

(define (removebrac lis1 lis2)
        (if (null? lis1) lis2
        (cons (car lis1) (removebrac (cdr lis1) lis2))))
