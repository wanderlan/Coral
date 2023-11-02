\language "portugues" 
\header {
  title = "Salmo 91"
  subtitle = ""
  composer = "Júlio de Oliveira"
  poet = ""
  piece = "" 
  tagline = "Coro Adoração IPBsb 10/2023"
}
soprano = \relative do''{
  \key mib \major
  \time 6/8
  \tempo "Andante" 4=82
r2 r8 sol16 sol16  sol8 sol16 sol sol sol sol8. sol16 sol sol sib4 sib8 sol4 sol8
fa8 fa16 fa sol lab sol8 sol16 fa16 mib16 re16 re4. (mib4) sol16 sol16 sol8 sol16 sol sol sol sol8. sol16 sol sol
sib4 sib8 sib4 sib8 re16 do sib16 lab sol fa mib8 mib16 fa sol16. fa32 mib4. (mib4) sib'8 
sib4 fa16 sol lab8 sib do sib4 mib8 sib4 sib8 sib4 fa16 sol lab8 sib8 do sib4 (mib8) sib8 r8 sib8

re8 do sib lab sol fa sib8. (sol16) sib8 mib4\fermata mib8  mib8. sib8 sol mib8 (fa16) re8 mib2.
sol2. lab4. sol4. lab2. lab2.
sol2. sib2. lab2.
sol4. (sol4) mib8 fa4. (fa4) mib16 fa16 sol4. (sol8) r8 sib8 fa4. (fa8) sol8 lab8

sol4. (sol4) r8 sol4 sol16 sol sol8 sol lab sib4. (sib4) r8 do4 do8 do16 do16 sib8 do8
re4. (re4) r8 mib4 mib8 mib16 mib16 re8 do8 sib4. sib4 sib8 do8. do16 do do re16 re16 do8 re8
mib4.\fermata r4 sol,16 sol sol8 sol16 sol sol sol sol8. sol16 sol sol sib4 sib8 sol4 sol8
fa8 fa16 fa16 sol16 lab16 sol8 sol16 fa16 mib16 re16 re4. (mib4) sol16 sol sol8 sol16 sol sol sol

sol8. sol16 sol16 sol sib4 sib8 si4 si8 re16 do16 sib16 lab16 sol fa mib8 mib16 fa16 sol16. fa32
mib4. (mib4) sib'8 sib4 fa16 sol16 lab8 sib do sib4 mib8 sib4 sib8 sib4 fa16 sol lab8 sib8 do
sib4 (mib8) sib8 r8 si8 re8 do sib lab sol fa sib8. (sol16) sib8 mib4\fermata mib8 mib8. sib16 sol8 sib (do) re
mib4. (mib4) r8 mib4.\fermata (mib4.)\fermata mib4.\fermata (mib4) r8

}

alto = \relative do''{
  \override NoteHead.color = brown
  \override Stem.color = brown
  \override Beam.color = brown
  \override Rest.color = brown
  \override Slur.color = brown
  \override Accidental.color = brown
  \override Script.color = brown

  \key mib \major
  \time 6/8
  \tempo "Andante" 4=82
r1
}

tenor = \relative do {
  \override NoteHead.color = green
  \override Stem.color = green
  \override Beam.color = green
  \override Rest.color = green
  \override Slur.color = green
  \override Accidental.color = green
\key mib \major
  \clef "bass" % Clave de Fá para o Tenor
  \time 6/8
  \tempo "Andante" 4=82
 r1 
} 

baixo = \relative do {
  \override NoteHead.color = blue
  \override Stem.color = blue
  \override Beam.color = blue
  \override Rest.color = blue
  \override Slur.color = blue
  \override Tie.color = blue
  \override Accidental.color = blue
  \key mib \major
  \clef "bass" % Clave de Fá para o Baixo
  \time 6/8
  \tempo "Andante" 4=82
r1
} 

\score {
  <<
    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 4)
    \override Score.BarNumber.self-alignment-X = #LEFT
    \override Score.BarNumber.break-visibility = ##(#t #t #t)
    \new Staff {%\set Staff.midiInstrument = "synth voice"

	  << \soprano>>%\\ \alto >>
     \addlyrics {
     Quem ha- bi- ta no~es- con- de- ri- jo do Al- tís- si- mo, à
     som- bra do~O- ni- po- ten- te des- can- sa- rá __ Quem ha- bi- ta no~es- con- de- ri- jo do Al-
     tís- si- mo à som- bra do O- ni- po- ten- te des- can- sa- rá __ Di- 
     rei do Se- nhor que Ele é~o meu Deus, di- rei que Ele é~o meu re- fú __ gio Di-

     rei que Ele é~a mi- nha for __ ta- le- za e~nE- le con- fi __ a- rei 
     "_" "_" "_" "_" "_"
     "_" "_" "_" 
     "_" "_" "_" "_" "_" "_" "_" "_" "_" "_"
     
     "_" Pois a quem tan- to me~a mou __ tam- bém Eu o li- vra- 
     rei __ Dar- lhe- ei 'bem lon- ga vi- da e mi- nha sal- va- ção lhe mos- tra
     rei. Quem ha- bi- ta no~es- con- de- ri- jo do Al- tís- si- mo à 
     som- bra do~O- ni- po- ten- te des- can- sa- rá __ Quem ha- bi ta no~es- con- de-

     ri- jo do Al- tís- si- mo, à som- bra do O- ni- po- ten- te des- can- sa- 
     rá __ Di- rei do Se- nhor que Ele é~o meu Deus, Di- rei que Ele é~o meu re-
     fú __ gio Di- rei que Ele é~a mi- nha for __ ta- le- za e~nE- le con- fi __ a-
     rei. __ A __ mém __
     
      } 
   }
    \new Staff 
	  <<\tenor \\ \baixo >>
  >>
  \layout {indent= 0}
  \midi { }
}