;;;; package.lisp

(defpackage #:image-test
  (:export #:create-image)
  (:use #:cl))

(april:april-load (pathname "lib/image-test.apl"))
