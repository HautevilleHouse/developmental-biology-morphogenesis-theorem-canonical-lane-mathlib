import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure GenomicSequencePackage where
  genome : Type u
  chromosomes : Type v
  genes : Type w
  geneExpressionLevels : Type x
  sequenceVariation : Prop
  regulatoryElements : Prop

def GenomicSequenceClosed (G : GenomicSequencePackage) : Prop :=
  G.sequenceVariation ∧ G.regulatoryElements

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse
