%main.ly
\version "2.24.4"

\include "global.ily"
\include "parts/Canto.ily"
\include "parts/Tenore.ily"
\include "parts/Basso.ily"
\include "lyrics/CantoVerse.ily"
\include "lyrics/TenoreVerse.ily"
\include "lyrics/BassoVerse.ily"
%\include "midi.ily"

\paper {
%   #(set-paper-size "a3")
   print-all-headers = ##t

  scoreTitleMarkup = \bookTitleMarkup
  
  % 1. 不要开启 ragged-bottom，或者设为 ##f（默认就是 ##f）
  ragged-bottom = ##f
  
  % 2. 增加顶部和底部的“弹性”
  % 让标题上方和最后一根谱表下方的空间可以自由伸缩
  top-title-spacing.stretchability = #200
  last-bottom-spacing.stretchability = #50
  
  % 3. 减小谱表内部的拉伸欲望，让它们尽量靠在一起
  system-system-spacing.stretchability = #30

  % 强制每一页底部都显示内容
  oddFooterMarkup = \markup {
    \column {
      \fill-line { \fontsize #-1 "Copyright © 2026. All rights reserved." }
      \fill-line { \fontsize #-2 \italic "Typeset by Watery with LilyPond." }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
  first-page-number = #0
  print-first-page-number = ##f
  print-page-number = ##t
  
}


\score {
  
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
%  copyright = "All rights reserved."
%  tagline = "Typeset by Watery."
%  tagline = ##f
}

  \new ChoirStaff <<
    \new Staff \with { 
%      midiInstrument = "violin"
      instrumentName = "Canto"
      shortInstrumentName = "C."
      \consists "Ambitus_engraver" 
    } <<
      \global 
%      \CantoNotes
%      \addlyrics \CantoVerse
      \new Voice = "cantoN" { \CantoNotes }
	 >>
	  \new Lyrics \lyricsto "cantoN" \CantoVerseOne
	  \new Lyrics \lyricsto "cantoN" \CantoVerseTwo
	  \new Lyrics \lyricsto "cantoN" \CantoVerseThree
	  
    \new Staff \with { 
%      midiInstrument = "piano"
      instrumentName = "Tenore"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } <<
      \global
%      \TenoreNotes
%      \addlyrics \TenoreVerse
      \new Voice ="tenorN" {\TenoreNotes}
    >>
	  \new Lyrics \lyricsto "tenorN" \TenoreVerseOne
	  \new Lyrics \lyricsto "tenorN" \TenoreVerseTwo
	  \new Lyrics \lyricsto "tenorN" \TenoreVerseThree
    
    \new Staff \with { 
%      midiInstrument = "choir aahs"
      instrumentName = "Basso"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"      
    } <<
      \global
%      \BassoNotes
%      \addlyrics \BassoVerse
      \new Voice ="bassoN" {\BassoNotes}
    >>
	  \new Lyrics \lyricsto "bassoN" \BassoVerseOne
	  \new Lyrics \lyricsto "bassoN" \BassoVerseTwo
	  \new Lyrics \lyricsto "bassoN" \BassoVerseThree      
  >>
  \layout { 
    indent = 15\mm 
    \autoBeamOff 
    \override TupletBracket.direction = #UP
    \override TupletNumber.direction = #UP
    \context { \ChoirStaff \consists "Span_bar_engraver" }
  }
  
}

\pageBreak

  
\score {
  
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
%  copyright = "All rights reserved."
%  tagline = "Typeset by Watery."
%  tagline = ##f
}

  \new ChoirStaff <<
    \new Staff \with { 
%      midiInstrument = "violin"
      instrumentName = "Canto"
      shortInstrumentName = "C."
      \consists "Ambitus_engraver" 
    } <<
      \global 
%      \CantoNotes
%      \addlyrics \CantoVerse
      \new Voice = "cantoN" { \CantoNotes }
	 >>
	  \new Lyrics \lyricsto "cantoN" \CantoVerseOne
%	  \new Lyrics \lyricsto "cantoN" \CantoVerseTwo
%	  \new Lyrics \lyricsto "cantoN" \CantoVerseThree
	  
    \new Staff \with { 
      midiInstrument = "piano"
      instrumentName = "Tenore"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } <<
      \global
%      \TenoreNotes
%      \addlyrics \TenoreVerse
      \new Voice ="tenorN" {\TenoreNotes}
    >>
	  \new Lyrics \lyricsto "tenorN" \TenoreVerseOne
%	  \new Lyrics \lyricsto "tenorN" \TenoreVerseTwo
%	  \new Lyrics \lyricsto "tenorN" \TenoreVerseThree
    
    \new Staff \with { 
      midiInstrument = "choir aahs"
      instrumentName = "Basso"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"      
    } <<
      \global
%      \BassoNotes
%      \addlyrics \BassoVerse
      \new Voice ="bassoN" {\BassoNotes}
    >>
	  \new Lyrics \lyricsto "bassoN" \BassoVerseOne
%	  \new Lyrics \lyricsto "bassoN" \BassoVerseTwo
%	  \new Lyrics \lyricsto "bassoN" \BassoVerseThree      
  >>
  \layout { 
    indent = 15\mm 
    \autoBeamOff 
    \override TupletBracket.direction = #UP
    \override TupletNumber.direction = #UP
    \context { \ChoirStaff \consists "Span_bar_engraver" }
  }
  
}

\pageBreak

  
\score {
  
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
%  copyright = "All rights reserved."
%  tagline = "Typeset by Watery."
%  tagline = ##f
}

  \new ChoirStaff <<
    \new Staff \with { 
%      midiInstrument = "violin"
      instrumentName = "Canto"
      shortInstrumentName = "C."
      \consists "Ambitus_engraver" 
    } <<
      \global 
%      \CantoNotes
%      \addlyrics \CantoVerse
      \new Voice = "cantoN" { \CantoNotes }
	 >>
%	  \new Lyrics \lyricsto "cantoN" \CantoVerseOne
	  \new Lyrics \lyricsto "cantoN" \CantoVerseTwo
%	  \new Lyrics \lyricsto "cantoN" \CantoVerseThree
	  
    \new Staff \with { 
      midiInstrument = "piano"
      instrumentName = "Tenore"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } <<
      \global
%      \TenoreNotes
%      \addlyrics \TenoreVerse
      \new Voice ="tenorN" {\TenoreNotes}
    >>
%	  \new Lyrics \lyricsto "tenorN" \TenoreVerseOne
	  \new Lyrics \lyricsto "tenorN" \TenoreVerseTwo
%	  \new Lyrics \lyricsto "tenorN" \TenoreVerseThree
    
    \new Staff \with { 
      midiInstrument = "choir aahs"
      instrumentName = "Basso"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"      
    } <<
      \global
%      \BassoNotes
%      \addlyrics \BassoVerse
      \new Voice ="bassoN" {\BassoNotes}
    >>
%	  \new Lyrics \lyricsto "bassoN" \BassoVerseOne
	  \new Lyrics \lyricsto "bassoN" \BassoVerseTwo
%	  \new Lyrics \lyricsto "bassoN" \BassoVerseThree      
  >>
  \layout { 
    indent = 15\mm 
    \autoBeamOff 
    \override TupletBracket.direction = #UP
    \override TupletNumber.direction = #UP
    \context { \ChoirStaff \consists "Span_bar_engraver" }
  }
  
}

\pageBreak

  
\score {
  
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
%  tagline = ##f
}

  \new ChoirStaff <<
    \new Staff \with { 
%      midiInstrument = "violin"
      instrumentName = "Canto"
      shortInstrumentName = "C."
      \consists "Ambitus_engraver" 
    } <<
      \global 
%      \CantoNotes
%      \addlyrics \CantoVerse
      \new Voice = "cantoN" { \CantoNotes }
	 >>
%	  \new Lyrics \lyricsto "cantoN" \CantoVerseOne
%	  \new Lyrics \lyricsto "cantoN" \CantoVerseTwo
	  \new Lyrics \lyricsto "cantoN" \CantoVerseThree
	  
    \new Staff \with { 
      midiInstrument = "piano"
      instrumentName = "Tenore"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } <<
      \global
%      \TenoreNotes
%      \addlyrics \TenoreVerse
      \new Voice ="tenorN" {\TenoreNotes}
    >>
%	  \new Lyrics \lyricsto "tenorN" \TenoreVerseOne
%	  \new Lyrics \lyricsto "tenorN" \TenoreVerseTwo
	  \new Lyrics \lyricsto "tenorN" \TenoreVerseThree
    
    \new Staff \with { 
      midiInstrument = "choir aahs"
      instrumentName = "Basso"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"      
    } <<
      \global
%      \BassoNotes
%      \addlyrics \BassoVerse
      \new Voice ="bassoN" {\BassoNotes}
    >>
%	  \new Lyrics \lyricsto "bassoN" \BassoVerseOne
%	  \new Lyrics \lyricsto "bassoN" \BassoVerseTwo
	  \new Lyrics \lyricsto "bassoN" \BassoVerseThree      
  >>
  \layout { 
    indent = 15\mm 
    \autoBeamOff 
    \override TupletBracket.direction = #UP
    \override TupletNumber.direction = #UP
    \context { \ChoirStaff \consists "Span_bar_engraver" }
  }
  
}

%  \book {
%  \bookOutputSuffix "Canto"
%  \score {
%   \rehearsalMidi "Canto" "soprano sax" \CantoVerseOne
%   \midi { }
%  }
%  }

%  \book {
%  \bookOutputSuffix "Tenore"
%  \score {
%    \rehearsalMidi "Tenore" "alto sax" \TenoreVerseOne
%    \midi { }
%    }
%  }
  
%  \book {
%  \bookOutputSuffix "Basso"
%  \score {
%    \rehearsalMidi "Basso" "tenor sax" \BassoVerseOne
%    \midi { }
%    }
%  }
