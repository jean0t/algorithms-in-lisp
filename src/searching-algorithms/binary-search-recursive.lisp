(defun binary-search (array target &optional (low 0) (high (1- (length array))))
  "Performs a binary search in an ordered array"
  (if (> low high)
      nil
      (let* ((mid-index (floor (/ (+ low high) 2)))
	     (mid-element (aref array mid-index)))
	(cond
	  ((= target mid-element) mid-index)
	  ((< target mid-element) (binary-search array target low (1- mid-index)))
	  (t (binary-search array target (1+ mid-index) high))))))
    
