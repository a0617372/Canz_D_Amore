% global.ily
\version "2.14.4"

\paper {
  #(set-paper-size "a3")
  % Add space for instrument names
  indent = 10\mm
} 

global = {
  \key c \major
%  \numericTimeSignature
  \time 3/4

  \repeat volta 2 {
  s2. * 4 \break
   \time 4/4 
   s4 \fermata 
  }
  \repeat volta 2 {
  s4 * 3  
  s1 * 4 \break
  s1 * 4 
  }
  s1 \bar "|."
}
