;;;; image-test.asd

(asdf:defsystem #:image-test
  :serial t
  :depends-on (#:april #:opticl)
  :components ((:file "package")
               (:file "image-test")))
