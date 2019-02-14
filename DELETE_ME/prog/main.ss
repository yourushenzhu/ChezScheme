(import (lib1 combined) (lib2 combined) (prog helper) (scheme))

(printf "main.ss: ~s\n" (help))
(printf "main.ss: ~s\n" one:var)
(printf "main.ss: ~s\n" (three:macro 'lunch))
(four:score (+ 4 (* 10 (four:score))))
(printf "main.ss: ~s\n" (four:score))
