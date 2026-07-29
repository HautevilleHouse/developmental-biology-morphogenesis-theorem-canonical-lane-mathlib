import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogen : Type u
  source : Type v
  concentrationGradient : Prop
  diffusionCoefficient : Prop
  decayRate : Prop
  gradientSlope : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  concentrationGradientClosed : M.concentrationGradient
  diffusionCoefficientClosed : M.diffusionCoefficient
  decayRateClosed : M.decayRate
  gradientSlopeClosed : M.gradientSlope

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.concentrationGradient ∧ M.diffusionCoefficient ∧ M.decayRate ∧ M.gradientSlope

theorem morphogen_gradient_closed_from_evidence
    (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.concentrationGradientClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.decayRateClosed E.gradientSlopeClosed))

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse
