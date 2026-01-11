\version "2.24.4"

rehearsalMidi = #
(define-music-function
 ( name midiInstrument lyrics ) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "Canto" \new Voice = "Canto" { \CantoNotes }
     \new Staff = "Tenore" \new Voice = "Tenore" { \TenoreNotes }
     \new Staff = "Basso" \new Voice = "Basso" { \BassoNotes }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #} )
