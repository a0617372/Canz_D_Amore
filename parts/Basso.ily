% Basso.ily
\version "2.24.4"

BassoNotes = \relative c' {
  \clef "bass"
  r4 r a8 b  
  c4 c8 d e4 
  a, a8 g f4  
  c8 d a'2 
  d,4 d'c d~ 
  d c2 bes4  
  a1 
  a1  
  \tuplet 3/2 { d4 d c } \tuplet 3/2 { f,8 [g a b] c4 } 
  \tuplet 3/2 { f,2 r4 } \tuplet 3/2 { f4 f g }
  \tuplet 3/2 { a2 g4 } \tuplet 3/2 { c4 c d } 
  \tuplet 3/2 { e2 c4 } \tuplet 3/2 { d4. e8 f4 } 
  \tuplet 3/2 { d4 e2 } a,2 |
  a1 
}
