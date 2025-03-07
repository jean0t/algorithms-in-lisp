(defun jump-search (array target)
  "Performs the jump search"
  (let* ((size-of-array (1- (length array)))
         (jump-size (isqrt size-of-array))
         (previous 0)
         (current jump-size))
    (loop while (and (< current size-of-array)
		     (< (aref array current) target))
	  do (progn (setf previous current)
		   (setf current (+ current jump-size))))
    (loop for i from previous to (min current size-of-array)
	  when (= (aref array i) target)
	  return i
	  finally (return nil))))
