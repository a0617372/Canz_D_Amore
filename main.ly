%main.ly
\version "2.24.4"

\include "global.ily"
\include "parts/Canto.ily"
\include "parts/Tenore.ily"
\include "parts/Basso.ily"
\include "lyrics/CantoVerse.ily"
\include "lyrics/TenoreVerse.ily"
\include "lyrics/BassoVerse.ily"
\include "midi.ily"

\header {
  title = "Canzonette d' Amore"
  subtitle = \markup {
	\fontsize #-2 \normal-text {
		\center-column  {
	     "Canzonette για τρεις φωνές."
	"Βιβλίο Πρώτο. Έργο Αρ. 2, 1584."
	"[Canzonnette a tre voci. Libro Primo. SV 2]"
      }
    }
  }
  composer = "Claudio Monteverdi (1567-1643)"
  copyright = "All rights reserved."
  tagline = "Typeset by Watery."
}

\score {
  \new ChoirStaff <<
    \new Staff \with { 
      midiInstrument = "violin"
      instrumentName = "Canto"
      shortInstrumentName = "C."
      \consists "Ambitus_engraver" 
    } <<
      \global 
      \CantoNotes
      \addlyrics \CantoVerse
    >>
    \new Staff \with { 
      midiInstrument = " piano "
      instrumentName = "Tenore"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } <<
      \global
      \TenoreNotes
      \addlyrics \TenoreVerse
    >>
    \new Staff \with { 
      midiInstrument = "choir aahs"
      instrumentName = "Basso"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"      
    } <<
      \global
      \BassoNotes
      \addlyrics \BassoVerse
    >>
  >>


  \layout { 
    indent = 15\mm 
    \autoBeamOff 
    \override TupletBracket.direction = #UP
    \override TupletNumber.direction = #UP
    \context { \ChoirStaff \consists "Span_bar_engraver" }
  }

  \midi {
  \tempo 4 = 100
  }  
}

  \book {
  \bookOutputSuffix "Canto"
  \score {
   \rehearsalMidi "Canto" "soprano sax" \CantoVerse
    \midi { }
   }
  }

  \book {
  \bookOutputSuffix "Tenore"
  \score {
    \rehearsalMidi "Tenore" "tenor sax" \TenoreVerse
    \midi { }
    }
  }
  
  \book {
  \bookOutputSuffix "Basso"
  \score {
    \rehearsalMidi "Basso" "violin" \BassoVerse
    \midi { }
    }

  }
