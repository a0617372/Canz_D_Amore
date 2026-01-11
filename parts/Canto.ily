% Canto.ily
\version "2.24.4"

CantoNotes = \relative c'' {
  \clef treble
  r4 a8 g f4 
  e8 e a4 gis  
  a8 b c4 c8 d  
  e d4 cis16 [ b ] cis4  \break
  d4 r r a  
  g a g2~  
  g4 f e2~  
  e2 e  
  \tuplet 3/2 { f4 f g } \tuplet 3/2 { a2 g4 } 
  \tuplet 3/2 { a4 c b } \tuplet 3/2 { c2 b4 } 
  \tuplet 3/2 { c4 c d } \tuplet 3/2 { e2 d4 } 
  \tuplet 3/2 { b2 e4 } \tuplet 3/2 { d2 c4 }  
  \tuplet 3/2 { d4 b2 } a2  
  cis1
}
