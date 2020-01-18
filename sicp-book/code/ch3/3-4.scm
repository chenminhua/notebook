(define (make-account balance secret)
  (define incrorrect-calls-count 0)
  (define (withdraw amount) 
    (if (>= balance amount) 
      (begin (set! balance (- balance amount)) balance)
      "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount)) balance)
  (define (dispatch password m)
    (if (eqv? password secret)
      (cond ((eq? m 'withdraw) withdraw)
            ((eq? m 'deposit) deposit)
            (else (error "Unknown request: MAKE-ACCOUNT" m)))
      (begin 
        (set! incrorrect-calls-count (+ incrorrect-calls-count 1))
        (if (> incrorrect-calls-count 7) (call-the-cops))
        (error "Incorrect password"))
      ))
  dispatch
  )

(define (call-the-cops)
  (display "call the cops"))

(define acc (make-account 100 'secret-pass))
((acc 'sec 'withdraw) 40)
((acc 'secret-pass 'withdraw) 10)
((acc 'sec 'withdraw) 40)
((acc 'sec 'withdraw) 40)
((acc 'sec 'withdraw) 40)
((acc 'sec 'withdraw) 40)
((acc 'sec 'withdraw) 40)
((acc 'sec 'withdraw) 40)
((acc 'sec 'withdraw) 40)