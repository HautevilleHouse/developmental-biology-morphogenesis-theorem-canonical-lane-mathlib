import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure CellAdhesionPackage where
  cadherins : Type u
  catenins : Type v
  adhesionMolecules : Prop
  signalingPathways : Prop
  tissueMorphogenesis : Prop

structure CellAdhesionEvidence (C : CellAdhesionPackage) where
  adhesionMoleculesClosed : C.adhesionMolecules
  signalingPathwaysClosed : C.signalingPathways
  tissueMorphogenesisClosed : C.tissueMorphogenesis

def CellAdhesionClosed (C : CellAdhesionPackage) : Prop :=
  C.adhesionMolecules ∧ C.signalingPathways ∧ C.tissueMorphogenesis

theorem cell_adhesion_closed_from_evidence (C : CellAdhesionPackage) (E : CellAdhesionEvidence C) :
    CellAdhesionClosed C := by
  exact And.intro E.adhesionMoleculesClosed
    (And.intro E.signalingPathwaysClosed E.tissueMorphogenesisClosed)

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse