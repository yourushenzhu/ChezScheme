(library (prog helper)
  (export help)
  (import
   (lib1 combined)
   (lib2 combined)
   (scheme))
  (define (help)
    (three:macro four:var
      [string? "huh?"]
      [list? four:var])))
