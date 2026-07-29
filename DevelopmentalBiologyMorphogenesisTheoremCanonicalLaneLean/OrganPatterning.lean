import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure OrganPatterningPackage (G : GenomicSequencePackage) (N : GeneRegulatoryNetworkPackage G)
    (M : MorphogenGradientPackage G N) (D : CellDifferentiationPackage G N M)
    (T : TissueMorphogenesisPackage G N M D) where
  organPrimordia : Type u
  axialPatterning : Prop
  boundaryFormation : Prop
  feedbackLoops : Prop

structure OrganPatterningEvidence {G : GenomicSequencePackage} {N : GeneRegulatoryNetworkPackage G}
    {M : MorphogenGradientPackage G N} {D : CellDifferentiationPackage G N M}
    {T : TissueMorphogenesisPackage G N M D} (O : OrganPatterningPackage G N M D T) where
  axialPatterningClosed : O.axialPatterning
  boundaryFormationClosed : O.boundaryFormation
  feedbackLoopsClosed : O.feedbackLoops

def OrganPatterningClosed {G : GenomicSequencePackage} {N : GeneRegulatoryNetworkPackage G}
    {M : MorphogenGradientPackage G N} {D : CellDifferentiationPackage G N M}
    {T : TissueMorphogenesisPackage G N M D} (O : OrganPatterningPackage G N M D T) : Prop :=
  O.axialPatterning ∧ O.boundaryFormation ∧ O.feedbackLoops

theorem organ_patterning_closed_from_evidence
    {G : GenomicSequencePackage} {N : GeneRegulatoryNetworkPackage G}
    {M : MorphogenGradientPackage G N} {D : CellDifferentiationPackage G N M}
    {T : TissueMorphogenesisPackage G N M D} (O : OrganPatterningPackage G N M D T)
    (E : OrganPatterningEvidence O) : OrganPatterningClosed O := by
  exact And.intro E.axialPatterningClosed (And.intro E.boundaryFormationClosed E.feedbackLoopsClosed)

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse
