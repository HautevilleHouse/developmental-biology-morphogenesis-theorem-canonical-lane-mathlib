import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure CellDifferentiationPackage (G : GenomicSequencePackage) (N : GeneRegulatoryNetworkPackage G)
    (M : MorphogenGradientPackage G N) where
  cellTypes : Type u
  differentiationPathways : Prop
  symmetryBreaking : Prop
  lineageCommitment : Prop

structure CellDifferentiationEvidence {G : GenomicSequencePackage} {N : GeneRegulatoryNetworkPackage G}
    {M : MorphogenGradientPackage G N} (D : CellDifferentiationPackage G N M) where
  differentiationPathwaysClosed : D.differentiationPathways
  symmetryBreakingClosed : D.symmetryBreaking
  lineageCommitmentClosed : D.lineageCommitment

def CellDifferentiationClosed {G : GenomicSequencePackage} {N : GeneRegulatoryNetworkPackage G}
    {M : MorphogenGradientPackage G N} (D : CellDifferentiationPackage G N M) : Prop :=
  D.differentiationPathways ∧ D.symmetryBreaking ∧ D.lineageCommitment

theorem cell_differentiation_closed_from_evidence
    {G : GenomicSequencePackage} {N : GeneRegulatoryNetworkPackage G}
    {M : MorphogenGradientPackage G N} (D : CellDifferentiationPackage G N M)
    (E : CellDifferentiationEvidence D) : CellDifferentiationClosed D := by
  exact And.intro E.differentiationPathwaysClosed (And.intro E.symmetryBreakingClosed E.lineageCommitmentClosed)

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse
