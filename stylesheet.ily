\version "2.19.0"

#(set-global-staff-size 12)

\header {
    tagline = ##f
}

\layout {
    \accidentalStyle forget
    indent = 0\mm
    ragged-right = ##t
    \context {
        \Voice
        \remove Forbid_line_break_engraver
    }
    \context {
        \Voice
        \name AnnotatedDivisionsVoice
        \type Engraver_group
        \alias Voice
        \override Accidental.stencil = ##f
        \override Beam.stencil = ##f
        \override Dots.stencil = ##f
        \override Flag.stencil = ##f
        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteCollision.merge-differently-headed = ##t
        \override NoteColumn.ignore-collision = ##t
        \override NoteHead.no-ledgers = ##t
        \override NoteHead.transparent = ##t
        \override Stem.stencil = ##f
        \override Tie.stencil = ##f
        \override TupletBracket.direction = #down
        \override TupletBracket.outside-staff-padding = 1
        \override TupletBracket.outside-staff-priority = 999
        \override TupletBracket.thickness = 2
        \override TupletNumber.stencil = ##f
    }
    \context {
        \Voice
        \name AnnotatedPhrasesVoice
        \type Engraver_group
        \alias Voice
        \override Accidental.stencil = ##f
        \override Beam.stencil = ##f
        \override Dots.stencil = ##f
        \override Flag.stencil = ##f
        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteCollision.merge-differently-headed = ##t
        \override NoteColumn.ignore-collision = ##t
        \override NoteHead.no-ledgers = ##t
        \override NoteHead.transparent = ##t
        \override Stem.stencil = ##f
        \override Tie.stencil = ##f
        \override TupletBracket.direction = #down
        \override TupletBracket.outside-staff-padding = 1
        \override TupletBracket.outside-staff-priority = 1000
        \override TupletBracket.thickness = 2
        \override TupletNumber.stencil = ##f
    }
    \context {
        \Staff
        \accepts AnnotatedDivisionsVoice
        \accepts AnnotatedPhrasesVoice
    }
    \context {
        \RhythmicStaff
        \accepts AnnotatedDivisionsVoice
        \accepts AnnotatedPhrasesVoice
    }
    \context {
        \Score
        \remove Bar_number_engraver
        \override Glissando.thickness = 2
        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteCollision.merge-differently-headed = ##t
        \override NoteColumn.ignore-collision = ##t
        \override SpacingSpanner.uniform-stretching = ##t
        \override TextScript.outside-staff-padding = 1
        \override TimeSignature.style = #'numbered
        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.breakable = ##t
        \override TupletBracket.minimum-length = 3
        \override TupletBracket.outside-staff-padding = 1.5
        \override TupletBracket.padding = 1.5
        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
        \override TupletBracket.staff-padding = 2.25
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override VerticalAxisGroup.staff-staff-spacing = #'(
            (basic-distance . 8)
            (minimum-distance . 14)
            (padding . 4)
            (stretchability . 0)
            )
        proportionalNotationDuration = #(ly:make-moment 1 24)
        skipBars = ##t 
        tupletFullLength = ##t
    }
}

\paper {
    evenFooterMarkup = ##f
    evenHeaderMarkup = ##f
    left-margin = 1\in
    max-systems-per-page = 1
    oddFooterMarkup = ##f
    oddHeaderMarkup = ##f
    print-first-page-number = ##f
    print-page-number = ##f
}