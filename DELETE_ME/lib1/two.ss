(library (lib1 two)
  (export two:proc)
  (import (scheme))
  (define (two:proc a) (list "two:proc" a)))
