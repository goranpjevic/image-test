⍝ create a 3d array representing an rgb image with identical rgb values
⍝ 3⎕dt coerces the array to be of type '(unsigned-byte 8)
new←{
  [h;w;v]
  3⎕dt h w 3⍴v
}

⍝ set the values of a pixel in position (x y) to a specified value
set_px←{
  [i;x;y;v]
  dim←⍴i
  px_pos←(3⊃dim)×¯1+x+(¯1+y)×2⊃dim
  ind←px_pos+⍳3⊃dim
  3⎕dt dim⍴(v@ind),i
}
