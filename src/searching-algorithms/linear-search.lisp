(defun linear-search (array target)
  "Searchs an array for an element and returns NIL if not found. Complexity O(n)"
  (loop with index = 0
	for n across array
	when (= n target)
	return index
	do (incf index)
	finally (return nil)))
