(library (lib2 four)
  (export four:score four:var)
  (import
   (lib1 combined)
   (lib2 five)
   (scheme))
  (define four:score (one:make-param 123))
  (define four:var (two:proc (list "four:var" one:var (five:get-next))))
  )
