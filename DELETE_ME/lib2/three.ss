(library (lib2 three)
  (export three:macro)
  (import
   (lib1 one)
   (scheme))
  (define-syntax three:macro
    (syntax-rules ()
      [(_ x y ...) (one:macro (box x) y ...)]))
  )
