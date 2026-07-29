import DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean.MechanicalForces

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure CellPolarity where
  cell : Type u
  polarityAxis : cell → ℝ × ℝ × ℝ
  parComplexLocalization : cell → Prop
  positiveFeedback : Prop
  polarityPattern : Prop

structure CellPolarityEvidence (C : CellPolarity) where
  positiveFeedbackClosed : C.positiveFeedback
  polarityPatternClosed : C.polarityPattern

def CellPolarityClosed (C : CellPolarity) : Prop :=
  C.positiveFeedback ∧ C.polarityPattern

theorem cell_polarity_closed_from_evidence
    (C : CellPolarity) (E : CellPolarityEvidence C) :
    CellPolarityClosed C := by
  exact And.intro E.positiveFeedbackClosed E.polarityPatternClosed

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse