#(set-default-paper-size "letter")
#(set-global-staff-size 23)
\include "lilyjazz.ily"

\version "2.19.26"

\pointAndClickOff

\header{  

title = \markup { 
	\smallCaps "Akira Kurosawa" 
	}
meter = "Rock"
composer = "Jonathan Killearn"
copyright = "This 2016 work is licensed under a Creative Commons Attribution-NonCommercial 4.0 International License."
dedication = ""
subtitle = ""
tagline = ""
}

melody = \relative c' { 
\time 4/4 
\tempo 4 = 160
\clef "treble"
\key f \minor 

%beam quarter notes
%\set Timing.beamExceptions = #'()
%\set Timing.baseMoment = #(ly:make-moment 1/4)
%\set Timing.beatStructure = #'(1 1 1 1)

%show cut time but keep 4/4 beaming
%\set Score.timeSignatureFraction = #'(2 . 2)

r4 bes'8 c c4 c | bes bes8 c bes aes f ees | \break r4 bes'8 c c4 c | bes8 aes bes ees~ ees c4. |
r4 bes8 c c4 c | bes bes8 c bes aes f ees | r4 bes'8 c bes aes f ees | aes4 f r4 f |

bes1 | aes4 r f8 ees4 aes8~ | aes f r4 r2 | \break r2 r4 f |
bes1 | aes4 r f8 ees4 aes8~ | aes f r4 r2 | r1 |

\break r4 bes8 c c4 c | bes bes8 c bes aes f ees | r4 bes'8 c c4 c | bes8 aes bes ees~ ees c4. |
r4 bes8 c c4 c | bes bes8 c bes aes f ees | r4 bes'8 c bes aes f ees | aes4 f r4 f |

bes1 | aes4 r f8 ees4 aes8~ | aes f r4 r2 | r2 r4 f |
bes1 | aes4 r f8 ees4 aes8~ | aes f r4 r4 f | bes aes f8 ees4 aes8~ |  aes f r4 r4 f | bes aes f8 ees4 aes8~ | 
 aes f r4 r4 f | bes aes f8 ees4 aes8~ | aes f r4 r2 \bar "|." 

}

text = \lyricmode {

Sam -- u -- ri sword drawn burn -- ing liq -- uid met -- al
Mol -- ten blade e -- merg -- ing from dark -- ness
Sea -- side light house beam rain -- ing hi -- ra -- ga -- na
Ris -- ing sun Ja -- pan un -- cov -- ered

A -- ki -- ra Ku -- ro -- sa -- wa
A -- ki -- ra Ku -- ro -- sa -- wa

Fold -- ing chair set back from the ac -- tors wait -- ing
Mo -- ments in be -- tween an -- i -- ma -- tion
El -- e -- ments un -- leashed war -- ri -- or a -- wait -- ing 
Cel -- lu -- loid i -- mag -- i -- na -- tion

A -- ki -- ra Ku -- ro -- sa -- wa
A -- ki -- ra Ku -- ro -- sa -- wa
A -- ki -- ra Ku -- ro -- sa -- wa
A -- ki -- ra Ku -- ro -- sa -- wa
A -- ki -- ra Ku -- ro -- sa -- wa!

}

harmonies = \chordmode {

f4 r r2 | r1 | f4 r4 r2 | r1 | f4 r4 r2 | r1 | r | f |

bes | aes | f | f | bes | aes | f | f |

f4 r r2 | r1 | f4 r4 r2 | r1 | f4 r4 r2 | r1 | r1 | f1 |

bes | aes | f | f | bes | aes | f | bes |  f2. f4 | 

bes1 | f2. f4 | bes2.. f8~ |  f f2.. ||




} 


\score {
<<
\new ChordNames {
\set chordChanges = ##t
\harmonies
}
\new Voice = "one" { \melody }
\new Lyrics \lyricsto "one" \text
>>

\layout { }
\midi { }
}
