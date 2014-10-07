;;; ===========================================
;;;  FILE:  helper.rkt
;;;  CMPU-101, Fall 2011
;;; ===========================================
;;;  This file contains the definitions of several
;;;  Racket functions that will make your Interactions
;;;  Window come alive!

;;;  To use the functions defined in this file, begin by copying 
;;;  this file to your "working directory" (i.e., the directory
;;;  you are using to store your Racket program files).  Then, 
;;;  include the following expression near the top of your
;;;  Racket program file:  (load "helper.rkt").  Subsequent
;;;  Racket expressions in your program file can then use the
;;;  functions defined in this file.


;;;  HEADER:  string (name) string (lorhw) -> side effect printing
;;;  PURPOSE: Displays a nice header for your Interactions Window.
(define header
  (lambda (name lorhw)
    (printf "==========================================~%")
    (printf "  CMPU-101-01, Fall 2011~%")
    (printf "  ~A~%" name)
    (printf "  ~A~%" lorhw)
    (printf "==========================================~%~%")))


;;;  PROBLEM: valid racket input (input) -> side-effect printing
;;;  PURPOSE: Displays a nice header for a new problem
(define problem
  (lambda (input)
    (printf "~%------------------------------------------~%")
    (printf " Problem ~A~%" input)
    (printf "------------------------------------------~%")))

;;;  SUBPROBLEM: valid racket input (input) -> side-effect printing
;;;  PURPOSE:    Displays a nice header for a new problem
(define subproblem
  (lambda (num)
    (printf "~%")
    (printf "Subproblem ~A" num)
    (printf "~%~%")))

;;;  TESTER:  expression (expr) -> result of evaluating expression
;;;  PURPOSE: Displays a Racket entity then returns the result of evaluating
;;;  that entity.
;;;  NOTE:  Due to the way the Default Rule for Evaluating Non-Empty 
;;;         Lists works, the desired input expression should
;;;         be QUOTED.  For example, compare (tester (+ 2 3)) and
;;;         (tester '(+ 2 3)).
(define tester
  (lambda (expr)
    (printf "~A ===> " expr)
    (eval expr)))


;;;  TESTER2:  expression (expr) -> result of evaluating expression
;;;  PURPOSE: Displays a Racket entity then returns the result of evaluating
;;;  that entity.
;;;  NOTE:  Due to the way the Default Rule for Evaluating Non-Empty 
;;;         Lists works, the desired input expression should
;;;         be QUOTED.  For example, compare (tester (+ 2 3)) and
;;;         (tester '(+ 2 3)).
(define tester2
  (lambda (expr)
    (printf "~A ===> ~%" expr)
    (eval expr)))


