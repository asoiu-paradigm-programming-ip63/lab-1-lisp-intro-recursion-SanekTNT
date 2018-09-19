(write-line "Mishchenko Alexandr, IP-63, LB1")

(write-line "Task 1")
(print 
((lambda (list1 list2 list3) (LIST (CAR list1) (CAR list2) (CAAR list3))) 
'(3 (3 4 5 Y U)(T Y)) '(G H (6 7 8) 8 9 0 7 6) '((5 T 7 Y H) U))
)

(write-line "Task 2")
(DEFUN task2 (list1 list2 list3) 
    (LIST (SECOND list1) (THIRD list2) (SECOND list3)) 
)

(print 
    (task2 
        '(3 (3 4 5 Y U)(T Y)) 
        '(G H (6 7 8) 8 9 0 7 6) 
        '((5 T 7 Y H) U)
    )
)

(write-line "Task 3")
(DEFUN task3 (inputList inputObj)
    (IF (AND (ATOM inputList) (ATOM inputObj))
        (LIST inputObj (CDR inputList))
        (APPEND (BUTLAST inputList) (list inputObj))
    )
)

(print
    (task3
        '(A B C D)
        '(E F)
    )
)

(print
    (task3
        '(A)
        '(B)
    )
)
