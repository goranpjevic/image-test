(ql:quickload :image-test)
(let ((img (image-test:create-image 1792 828 255)))
  (opticl:write-png-file "iphone11-white.png" img))
