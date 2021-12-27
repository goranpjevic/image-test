;;;; image-test.lisp

(in-package #:image-test)

; create a 100×100px image file named 'test.png'
; the rgb values of all pixels are 200
; 3⎕dt coerces the array to be of type '(unsigned-byte 8)
(let ((img (april:april "3⎕dt 100 100 3⍴200")))
  (opticl:write-png-file "images/test.png" img))

(let ((img (opticl:read-png-file "images/test.png")))
  ; print all unique rgb values in the 'test.png' file
  (print (april:april-c "{∪,⍵}" img))
  ; print the average of all rgb valuse in the 'test.png' file
  (print (april:april-c "{(+/÷≢),⍵}" img)))

; set position (x y) in img to vals
(defun set-position (img x y vals)
  (april:april-c "{[i;x;y;v] dim←⍴i⋄3⎕dt dim⍴(v@((⍳3⊃dim)+((3⊃dim)×¯1+x+(¯1+y)×2⊃dim))),i}" img x y vals))

(let ((img (april:april "3⎕dt 30 30 3⍴200")))
    (opticl:write-png-file "images/test2.png" (set-position img 10 10 #(100 100 100))))
