import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure TuringPatternPackage where
  activator : Type u
  inhibitor : Type v
  reactionDiffusionSystem : Prop
  patternFormation : Prop
  wavelengthSelection : Prop

structure TuringPatternEvidence (T : TuringPatternPackage) where
  reactionDiffusionSystemClosed : T.reactionDiffusionSystem
  patternFormationClosed : T.patternFormation
  wavelengthSelectionClosed : T.wavelengthSelection

def TuringPatternClosed (T : TuringPatternPackage) : Prop :=
  T.reactionDiffusionSystem ∧ T.patternFormation ∧ T.wavelengthSelection

theorem turing_pattern_closed_from_evidence (T : TuringPatternPackage) (E : TuringPatternEvidence T) :
    TuringPatternClosed T := by
  exact And.intro E.reactionDiffusionSystemClosed
    (And.intro E.patternFormationClosed E.wavelengthSelectionClosed)

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse