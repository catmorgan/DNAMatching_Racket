;; CMPU101 Spring 2011
;; HW 9 - Printing matching DNA strands
;; Due Dec 9th

(require 2htdp/universe)
(require 2htdp/image)
(load "helper.rkt")
;; NOTE: ALL THE FUNCTIONS FROM "lab12sol.rkt" CAN BE LOADED INTO THIS FILE:
;(load "lab12sol.rkt")

;; CREATE A FOLDER CALLED HW9 AND SUBMIT THE FOLDER WHEN YOU ARE DONE.


; 
;  In lab 12, you wrote the following functions:
;     lower->upper
;     invalid-bases?
;     convert-to-complement
;     find-first-matching-position
;     
;  You will use these functions in this homework assignment to create an inter- 
;  active DNA sequence matcher.
;  
;  The main function in this program will be called start-sequence and it should
;  do the following:
;  
;     1. Prompt for and read a "long" DNA sequence, checking if the sequence
;        entered contains all valid characters and converting it to all
;        upper-case.  If an invalid sequence is entered, you should tell the
;        user that the sequence is invalid and prompt them for another.
;        
;        Prompt for and read a "short" DNA sequence, checking if the sequence
;        entered contains all valid characters and converting it to all
;        upper-case.  If an invalid sequence is entered, you should tell the
;        user that the sequence is invalid and prompt them for another.
;        
;        (Note: There are enough similarities in the two paragraphs above to
;         make you think of writing a helper function for step 1.)
;        
;     2. Once both valid sequences have been entered and stored in local
;        variables, convert the short sequence to its complement and 
;        use the find-first-matching-position function to return the position
;        in the long sequence that matches the complement of the short 
;        sequence.
;        
;     3. If a match is found, you should print the two sequences as if they
;        were each attached like rungs of a ladder. 
;        
;        A few sample runs of the desired program are shown below:
;               
;        
; ; > (start-sequence)
; ; 
; ; Please enter a long DNA sequence
; ; caggttatt
; ; 
; ; Please enter a short DNA sequence
; ; aata
; ; 
; ; Long is CAGGTTATT, short is AATA
; ; 
; ; AATA matches CAGGTTAT at position 4
; ; 
; ;             ------------
; ;              |  |  |  |
; ;              A  A  T  A
; ;  C  A  G  G  T  T  A  T 
; ;  |  |  |  |  |  |  |  | 
; ; ------------------------
; 
;  
; ; > (startSequence)
; ; 
; ; Please enter a long DNA sequence
; ; rrattks
; ; 
; ; The sequence RRATTKS has some invalid base notation.
; ; 
; ; 
; ; Please enter a long DNA sequence
; ; gggggggaaattc
; ; 
; ; Please enter a short DNA sequence
; ; lkdrsgat
; ; 
; ; The sequence LKDRSGAT has some invalid base notation.
; ; 
; ; 
; ; Please enter a short DNA sequence
; ; tttt
; ; 
; ; Long is GGGGGGGAAATTC, short is TTTT
; ; 
; ; No match found.
; ;  
; 
; 
; ; > (startSequence)
; ; 
; ; Please enter a long DNA sequence
; ; GATTCTG
; ; 
; ; Please enter a short DNA sequence
; ; CTA
; ; 
; ; Long is GATTCTG, short is CTA
; ; 
; ; CTA matches GATTCTG at position 0
; ; 
; ; ---------
; ;  |  |  | 
; ;  C  T  A 
; ;  G  A  T  T  C  T  G 
; ;  |  |  |  |  |  |  | 
; ; ---------------------
; 
; 


; 
;  The most challenging part of this assignment is to print the matching dna sequences 
;  in the format shown.
;  
;  Formatting the print statements may require more than one function. For example,
;  to print the following:
;  
;           ------------
;            |  |  |  |
;            C  G  A  T
;   A  T  G  G  C  T  A  T
;   |  |  |  |  |  |  |  |
;  ------------------------
;  
;  you must use the information about the position on the longer sequence at which the
;  sequences match.  In the example above, the position is 3.  Since the short 
;  sequence should always be printed above the longer one, this requires building a 
;  string consisting of three sets of three blank spaces, followed by 4 sets of 
;  "---", followed by an end of line.  The strings that make up the second and third 
;  lines should similarly start with three sets of three blank spaces.
;  
;   



(test)

