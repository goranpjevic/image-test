new←{
  [h;w;v]
  3⎕dt h w 3⍴v
}

set_px←{
  [i;x;y;v]
  dim←⍴i
  px_pos←(3⊃dim)×¯1+x+(¯1+y)×2⊃dim
  ind←px_pos+⍳3⊃dim
  3⎕dt dim⍴(v@ind),i
}
