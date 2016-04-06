\version "2.18.2"

notesHigh = \relative c'' {
  \tuplet 4/3 {ees4 ees ees ees} g8 ees |
  \tuplet 4/3 {c4 c c c} c |
  \tuplet 4/3 {d4 d d d} d |
  \tuplet 4/3 {g4 g f f} f |

  \tuplet 4/3 {ees4 ees ees ees} ees |
  \tuplet 4/3 {c4 c c c} c |
  \tuplet 4/3 {d4 d d d} d |
  \tuplet 4/3 {g4 g f f} f |
}

cminor = { c d ees f g aes bes }
notesLow = \modalTranspose ees c, \cminor \notesHigh

global = {
  \key c \minor
  \time 4/4
  \tempo 4 = 125
}

voiceI = \new Voice <<
  \global
  \notesHigh
  \notesLow
>>

\score {
  \voiceI
  \layout{}
  \midi{}
}
