; version-1 withdraw
(define balance 100)
(define (withdraw amount) 
  (if (>= balance amount)
    (begin (set! balance (- balance amount))
      balance) 
    "Insufficient funds"))

; version-2 withdraw
(define new-withdraw 
  (let ((balance 100))
    (lambda (amount) 
      (if (>= balance amount)
          (begin (set! balance (- balance amount)) balance)
          "Insufficient funds"))))

; version-3 withdraw
(define (make-withdraw balance)
  (lambda (amount) 
    (if (>= balance amount)
      (begin (set! balance (- balance amount)) balance)
      "Insufficient funds")))
(define W1 (make-withdraw 100))
(W1 50)

(define (make-account balance)
  (define (withdraw amount) 
    (if (>= balance amount)
      (begin (set! balance (- balance amount)) balance)
      "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount)) balance)
  (define (dispatch m)
    (cond ((eq? m 'withdraw) withdraw)
          ((eq? m 'deposit) deposit)
          (else (error "Unknown request --MAKE-ACCOUNT" m))))
  dispatch)

(define acc (make-account 100))

((acc 'withdraw) 50)
((acc 'deposit) 40)