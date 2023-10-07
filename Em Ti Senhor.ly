\version "2.23.2"
\language "portugues" 

\header {
  title = "Em Ti, Senhor, eu confio"
  subtitle = "In Te Domine"
  composer = "George Friderich Händel (1685-1759)"
  poet = "Salmo 31:1-2"
  piece = "Trad. J. W. Faustini, 1969" 
  tagline = "Coro Adoração IPBsb"
}

soprano = \relative do''{
  \key fa \major
  \time 4/4
  \tempo "Andante" 4=82

  r2 \f re2 dos1 r2 mi2 fa2 mi2 re2 re4 re4 dos2 dos 
  r2 \p re4 re sib2 sib4 sib4 sol'2 fa4 fa fa2(mi) fa1 r2 mib2 re2. re4
  re2 re2 do2. do4 si2 mi2 re1 do2. do4 si2. si4 la1 

  \break
  \key re \major
  \tempo "Adagio" 4=78

  fas2. \pp (sol8 fas) fas2 r4 fas4 sol4. la8 fas4. mi8 mi2. la4 la4. sol8 fas4 re'4 
  re4. dos8 si4. la8 sol4. fas8 fas2 r4 si4 la4 sol8. (fas16) fas4 r4 r2 r4 si4 la4 sol8. (fas16)  
  fas4 r4 \f re'2 fas2 r4 re4 dos2 dos4 re4 re2 (dos2) mi1 r1 r1 
}

alto = \relative do''{
  \key fa \major
  \time 4/4
  \tempo "Andante" 4=82
  r2 la2 la1 r2 la2 la2 la2 la2 sol4 sol4 la2 la2
  r2 la4 la sol2 sol4 sib4 sib2 la4 la sol1 la1 
  r2 la2 fa4 (sib2) la4 sols2 sols mi2. la4 sols2 la2
  fa1 fas2. la4 mi2. mi4 mi1
}

tenor = \relative do {
  \key fa \major
  \clef "bass" % Clave de Fá para o Tenor
  \time 4/4
  \tempo "Andante" 4=82
  r2 fa'2 mi1 r2 dos2 re fa2 fa mi4 re4 mi2 mi 
  r2 re4 re re2 re4 re4 do2 do4 do do1 do r2 do2 re2. re4
  si2 si do2. mi4 mi2 la, sib1 la2. la4 la2 (las4.) re8 dos1 
} 

baixo = \relative do {
  \key fa \major
  \clef "bass" % Clave de Fá para o Baixo
  \time 4/4
  \tempo "Andante" 4=82
  r2 re2 la'1 r2 la2 re2 do2 si si4 si la2 la
  r2 fas4 fas sol2 sol4 sol mi2 fa4 fa do'1 fa, 
  r2 fa2 si2. si4 mi,2 mi2 la2. la4 mi2 do re1
  res2. re4 mi2. mi4 la,1   
} 

\score {
  <<
    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 4)
    \override Score.BarNumber.break-visibility = ##(#t #t #t)
    \new Staff 
	  <<\soprano \\ \alto >>
    \addlyrics {
      Em Ti, em Ti, Se -- nhor eu con -- fi -- o. Não me  dei- xes, Se- nhor, con- fun -- di- _ do.
      In -- cli - na pa -- ra mim os teus ou -- vi -- dos, e sal -- va -- me.
      Em Ti con -- fi -- o,em Ti, Se- nhor, em Ti Se- nhor, 
      em Ti con- fi -- o,em Ti, Se -- nhor, Em Ti, Se -- nhor. Em Ti, Se -- nhor,
      em Ti, Se- nhor, eu con -- fi -- o.} 
    \new Staff 
	  <<\tenor \\ \baixo >>
>>
  \layout {indent= 0}
  \midi { }
}