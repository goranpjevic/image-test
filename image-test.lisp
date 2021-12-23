;;;; image-test.lisp

(in-package #:image-test)

; create a 100×100px image file named 'test.png'
; the rgb values of all pixels are 200
; note: all values can only be between 128 and 255, since they must be of type
; '(unsigned-byte 8)
(let ((img (april:april "100 100 3⍴200")))
  (opticl:write-png-file "test.png" img))
