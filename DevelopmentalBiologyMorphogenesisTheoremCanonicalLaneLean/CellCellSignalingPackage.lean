import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure CellCellSignalingPackage where
  signalingMolecules : Type u
  receptorActivation : Type v
  signalTransduction : Prop
  juxtacrineSignaling : Prop
  paracrineSignaling : Prop
  signalTransductionClosed : signalTransduction
  juxtacrineSignalingClosed : juxtacrineSignaling
  paracrineSignalingClosed : paracrineSignaling

structure CellCellSignalingEvidence (S : CellCellSignalingPackage) where
  signalTransductionClosed : S.signalTransduction
  juxtacrineSignalingClosed : S.juxtacrineSignaling
  paracrineSignalingClosed : S.paracrineSignaling

def CellCellSignalingClosed (S : CellCellSignalingPackage) : Prop :=
  S.signalTransduction ∧ S.juxtacrineSignaling ∧ S.paracrineSignaling

theorem cell_cell_signaling_closed_from_evidence (S : CellCellSignalingPackage) (E : CellCellSignalingEvidence S) : CellCellSignalingClosed S := by
  exact And.intro E.signalTransductionClosed (And.intro E.juxtacrineSignalingClosed E.paracrineSignalingClosed)

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse