(library (lib1 one)
  (export
   one:macro
   one:make-param
   one:var
   )
  (import
   (lib1 two)
   (scheme))
  (define one:var "one:var")
  (define-syntax one:macro
    (syntax-rules ()
      [(_ x [pred? e0 e1 ...] ...)
       (let ([t x])
         (cond
          [pred? e0 e1 ...] ...
          [else (one:complain-about t)]))]))
  (define (one:complain-about stuff)
    (printf "one.ss unhappy about: ~s\n" stuff))
  (define one:make-param
    (lambda (default)
      (define val default)
      (pretty-print (two:proc val))
      (case-lambda
       [() val]
       [(x) (set! val x)])))
  )
