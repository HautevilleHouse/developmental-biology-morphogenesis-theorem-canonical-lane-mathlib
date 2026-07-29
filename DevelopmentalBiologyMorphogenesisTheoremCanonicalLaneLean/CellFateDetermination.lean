import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure CellFateDeterminationPackage {M : MorphogenGradientPackage} (G : MorphogenGradientEvidence M) where
  fateSpecification : Prop
  transcriptionalNetwork : Prop
  signalIntegration : Prop
  developmentalTiming : Prop

structure CellFateDeterminationEvidence {M : MorphogenGradientPackage} {G : MorphogenGradientEvidence M} (F : CellFateDeterminationPackage G) where
  fateSpecificationClosed : F.fateSpecification
  transcriptionalNetworkClosed : F.transcriptionalNetwork
  signalIntegrationClosed : F.signalIntegration
  developmentalTimingClosed : F.developmentalTiming

def CellFateDeterminationClosed {M : MorphogenGradientPackage} {G : MorphogenGradientEvidence M} (F : CellFateDeterminationPackage G) : Prop :=
  F.fateSpecification ∧ F.transcriptionalNetwork ∧ F.signalIntegration ∧ F.developmentalTiming

theorem cell_fate_determination_closed_from_evidence {M : MorphogenGradientPackage} {G : MorphogenGradientEvidence M} (F : CellFateDeterminationPackage G) (E : CellFateDeterminationEvidence F) :
    CellFateDeterminationClosed F := by
  exact And.intro E.fateSpecificationClosed
    (And.intro E.transcriptionalNetworkClosed
      (And.intro E.signalIntegrationClosed E.developmentalTimingClosed))

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse