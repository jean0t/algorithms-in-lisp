(defun bubble-sort (array)
  "Sort using the worst algorithm: bubble sort O(n²) isn't efficient" 
  (let ((n (length array))
	(swapped t))
    (loop while swapped
	  do (setf swapped nil)
	  (loop for i from 0 below (1- n) do
		(when (> (aref array i) (aref array (1+ i)))
		  (progn (rotatef (aref array i) (aref array (1+ i)))
		  (setf swapped t)))))
    array))
