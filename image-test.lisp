;;;; image-test.lisp

(in-package #:image-test)

; create a 100×100px image file named 'test.png'
; the rgb values of all pixels are 200
; 3⎕dt coerces the array to be of type '(unsigned-byte 8)
(let ((img (april:april "3⎕dt 100 100 3⍴200")))
  (opticl:write-png-file "test.png" img))
