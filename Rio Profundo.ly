\language "portugues" 
\header {
  title = "Rio Profundo"
  subtitle = ""
  composer = "Negro Spiritual"
  poet = "anônimo"
  piece = "Arr. Antônio A. Coutinho" 
  tagline = "Coro Adoração IPBsb 11/2023"
}
soprano = \relative do''{
  \key fa \major
  \time 4/4
  \tempo "Lento com reverência"
\bar ".|:" la2 (la8) sol8 fa4 sol4 re2 mi4 fa4 fa4 fa'4. re8
do4 la2 r4 la2 (la8) sol8 fa4 sol4 re4 fa8 fa4 \fermata fa8
fa8. fa16  fa4 fa8. re16 do8 re8 fa4 fa2 r4 ^\markup \italic fine \bar ":|." re'8 re4 mi8 re8 do8 la4
do4 (la2) la8 la8 re4 fa4 mi4 re4 do4 la2 la4
re4 (fa4) mi (re) do la2 la8 la8 re4 (fa) mi (re) do2.
do4 la8. la16 la8 la8 la4 sol8 fa la (sol4) fa8 la8 (sol4) fa8
la2 la8 sol8 fa8 sol la2 do ^\markup \italic "         D. C. al fine" do2. \fermata r4 

}

alto = \relative do''{
  \override NoteHead.color = brown
  \override Stem.color = brown
  \override Beam.color = brown
  \override Rest.color = brown
  \override Slur.color = brown
  \override Accidental.color = brown
  \override Script.color = brown

  \key fa \major
  \time 4/4
  \tempo "Lento com reverência"
fa,4 (mi mib8) mib8 mib4 re4 sib2 do4 do do fa4. fa8 
fa4 fa2 r4 fa (mi mib) mib re sib re8 re4 re8
do8. do16 do4 re8. re16 do8 do8 do4 do2 r4 fa8 fa4 fa8 fa4 fa4
mi2. mi8 mi fa4 fa4 fa4 fa mi mi2 mi4
fa2 fa mi4 mi2 mi8 mi fa2 sol4 (fa) mi2.
mi4 fa8. fa16 fa8 fa8 fa4 do8 do fa8 (do4) do8 fa8 (do4) do8
fa2 fa4 fa8 fa fa2 fa mi2. r4
}

tenor = \relative do {
  \override NoteHead.color = green
  \override Stem.color = green
  \override Beam.color = green
  \override Rest.color = green
  \override Slur.color = green
  \override Accidental.color = green
  \key fa \major
  \clef "bass" % Clave de Fá para o Tenor
  \time 4/4
  \tempo "Lento com reverência"
 do'2 (do8) sib8 la4 sib4 fa2 sib4 la la sib4. sib8
 la4 do2 r4 do2 (do8) sib8 la4 sib4 fa sol8 sol4 sol8 
 la8. la16 la4 sib8. sib16 sib8 sib8 la4 la2 r4 la8 la4 la8 la4 la4
 la4 (do2) do8 do8 la4 la4 la4 la4 la4 do2 do4
 la2 la2 la4 do2 do8 do8 la2 do4 (si) do2.
 do4 do8. do16 do8 do8 do4 sib8 la8 do8(sib4) la8 do8 (sib4) la8
 do2 do4 si8 si8 do2 do2 sib2. r4
} 

baixo = \relative do {
  \override NoteHead.color = blue
  \override Stem.color = blue
  \override Beam.color = blue
  \override Rest.color = blue
  \override Slur.color = blue
  \override Tie.color = blue
  \override Accidental.color = blue
  \key fa \major
  \clef "bass" % Clave de Fá para o Baixo
  \time 4/4
  \tempo "Lento com reverência"
fa2 (fa8) fa fa4 sib,4 sib2 sib4 do4 do4 re4. sib8
fa'4 fa2 r4 fa2 fa4 fa4 sib,4 sib4 si8 si4 \fermata si8
do8. do16 do4 sib8. sol16 do8 do8 fa4 fa2 r4 re8 re4 re8 re8 mi8 fa8 sol
la2. la8 la8 re,4 re4 re8 mi fa sol la4 la2 la4
re,2 mi4 (fa) la la2 la8 la re,2 sol do,2.
do4 fa8. fa16 fa8 fa fa4 fa8 fa fa4. fa8 fa4. fa8
fa4 (mi) re reb8 reb do2 la'4 (lab) sol2 (do,4) \fermata r4
} 

\score {
  <<
    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 4)
    \override Score.BarNumber.self-alignment-X = #LEFT
    \override Score.BarNumber.break-visibility = ##(#t #t #t)
    \new Staff 

	  << \soprano \\ \alto >>
     \addlyrics {
Ri- o pro- fun- do, meu lar a- lém do 
Jor- dão. Ri- _ o lin- do, Se- nhor, eu 
que- ro ir a- tra- vés dos pra- dos. Oh, tu não que- _ res
ir _ pa- ra~a ter- ra pro- me- ti- da. À- 
que- _ la _ ter- ra on- de tu- _ do~é paz?
Oh, tu não que- res ir pa- ra~a ter- ra pro- me-
ti- da _ on- de tu- do~é paz?    
  } 
   
    \new Staff 
	  <<\tenor \\ \baixo >>
  >>
  \layout {indent= 0}
  \midi { }
}