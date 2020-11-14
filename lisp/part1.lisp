;;number 1
;;The sub list is zero indexed 
(defun sub-list (lst1 from to )
    (cond
        ((or (null lst1)) nil)
        (t
         (let ((ind 0) (lst ()))
              (loop
               (if (= ind to) (return lst))
               (if (<= (- from 1) ind)
                    (setf lst (append lst (list(car lst1))))
                    nil)
               (setf lst1 (cdr lst1))
               ;;(print lst)
               (setf ind (+ ind 1))
               )
              )
         )
        )
        )


(print (sub-list '(1 6 12) 4 2))


;;; number 2





(defun sub-list (lst1 &optional (from 1) (to (list-length lst1)))
    (cond
        ((and (null from) (null to)) (setf from 1)(setf to (list-length lst1)))
        ((and (null from) (numberp to)) (setf from 1))
        ((and (null to) (numberp from)) (setf to (list-length lst1)))
        )
    (cond
        ((or (null lst1)) nil)
        (t
         (let ((ind 0) (lst ()))
              (loop
               (if (= ind to) (return lst))
               (if (> from to) (return (reverse lst1)))
               (if (<= (- from 1) ind)
                    (setf lst (append lst (list(car lst1))))
                    nil)
               (setf lst1 (cdr lst1))
               (setf ind (+ ind 1))
               )
              )
         )
        )
        )

(print (sub-list '(1 6 12)2 NIL))


;;;number 3

(defun flatten-numbers (elts)
    (if (null elts)
        nil
        (if (listp (car elts))
            (append (flatten-numbers (car elts)) (flatten-numbers (cdr elts)))
            (if (numberp (car elts))
                (remove-dupes (cons (car elts) (flatten-numbers (cdr elts))))
                 (flatten-numbers (cdr elts))))))

(defun remove-dupes (elems)
    (if (null elems)
        nil
        (if (member (car elems) (cdr elems))
            (remove-dupes (cdr elems))
            (cons (car elems) (remove-dupes (cdr elems))))))

(print (remove-dupes (flatten-numbers '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2))))))




;;number 4


(defun bst (lst) 
    (cond ((or (null lst) (null (car (car (cdr lst))))) nil)
        ((> (car (car (cdr lst))) (car lst)) (print "Not  a Bst"))
        ((< (car (car (cdr (cdr lst)))) (car lst)) (print "Not a bst"))
        ((<= (car (car (cdr lst))) (car lst)) (bst (car (cdr lst))))
        ((< (car (car (cdr (cdr lst)))) (car lst)) (bst (car (cdr (cdr lst)))))
        ((> (car (car (cdr (cdr lst)))) (car lst)) t)
        ((> (car (car (cdr lst))) (car lst)) t)
        )
    )

(bst '(8 (3 (1 () () ) (6 (4 () ())(7 () () ))) (10 () (14 (13 () () )()))))


;;Number 5.
(defun get-sub-first (lst n)
        (if (or (null lst) (>= 0 n))
            nil
            (cons (car lst) (get-sub-first (cdr lst) (- n 1))))
        )


(defun get-sub-last (lst n)
        (if (null lst)
            nil
            (if (>= 0 n)
               (cons (car lst) (get-sub-last (cdr lst) (- n 1)))
               (get-sub-last (cdr lst) (- n 1)))
           )
        )
(defun all-sub (lst)
        (list (get-sub-first lst (/ (list-length lst ) 2)) (get-sub-last lst (/ (list-length lst ) 2))))


(print (all-sub '(1 2 3 4)))
(print (all-sub '(1 2 3 4 5)))
(print (all-sub '(1 (2 3) 4 5 6)))



;;Number 6


(defun util-fun (num lst)
        (cond
            ((and (<= num (car lst)) (null (car (cdr lst)))) (setf (car (cdr lst)) (list num '() '())))
            ((and (> num (car lst)) (null (car (cdr (cdr lst))))) (setf (car (cdr (cdr lst))) (list num '() '())))
            ((and (<= num (car lst)) (listp (car (cdr lst)))) (setf (car (cdr lst)) (util-fun num (car (cdr lst)))))
            ((and (> num (car lst)) (listp (car (cdr (cdr lst)))))
             (setf (car (cdr (cdr lst))) (util-fun num (car (cdr (cdr lst))))))
            (t nil)
            )
        (print lst)
        )


;(util-fun '1 '(8 (3 () ()) (10 () ())))
(print (util-fun '3 '(8 (4 () ())())))


(defun make-cbtree (lst)
        (let ((root) (placeholders '()))
             (if (null lst) null)
             (setf root (list (car lst) '() '() ))
             (setf lst (cdr lst))
             (setf placeholders (append root placeholders))
             (loop
               
              ;;exit statement
              (if (null lst)
                  (return root)
                  nil)
              
              (setf n (list (car lst) '() '() ))
              (setf lst (cdr lst))
              (setf ph (list (car placeholders) () ()))
              (cond
                  ((null (car (cdr placeholders))) (setf (car (cdr placeholders)) n))
                  ((null (car (cdr (cdr placeholders)))) (setf (car (cdr (cdr placeholders))) n))
                  ((and (listp (car (cdr placeholders)))
                        (numberp (car (car (cdr placeholders))))
                        (>= (car placeholders) (car n))
                        )
                   (setf (car (cdr placeholders)) (util-fun (car n) (car (cdr placeholders))))
                   )
                  (t (util-fun (car n) (car (cdr (cdr placeholders)))))
                  )
              (print placeholders)
             )
        ))


(make-cbtree '(8 3 10 1 6))




;;Number 7


(defun add-stars (num lst)
        (if (or (null lst) (<= num 0))
            nil
            (cons '* (add-stars (- num 1) lst)))
            )
(defun remove-stars (num target lst)
        (if (= target num)
            nil
            (cons '* (remove-stars (incf num) target lst)))
            )


(defun triangle-minus (num)
        (setf lst '(*))
        (setf temp (* num -1))
        (dotimes (n temp)
            (dotimes (inner n)
              (setf lst (append lst (list '*)))
                )
            (print lst)
            )
        )


(defun triangle (num)
        (cond
            ((not (numberp num)) (print "Invalid Number; please enter a positive or negative integer"))
            ((not (integerp num))(print "Invalid Number; please enter a positive or negative integer"))
            ((= num 0) (print "Invalid Number; please enter a positive or negative integer"))
            ((> 0 num) (triangle-minus num) )
            (t         
             (loop
               (print (add-stars num '(*)))
               (decf num)
               (if (<= num 0)
              (return))
            ))
            )


        )


(triangle '7)


;;Number 7


(defun lucas-sequence (num)
        (cond
            ((= num 0) 2)
            ((= num 1) 1)
            ((> num 1) (+(lucas-sequence(- num 1)) (lucas-sequence(- num 2))))
            )
        )


(print (lucas-sequence 7))