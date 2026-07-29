import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogenConcentration : Type u
  sourceLocation : Type v
  gradientShape : Prop
  diffusionCoefficient : Prop
  decayRate : Prop
  gradientShapeClosed : gradientShape
  diffusionCoefficientClosed : diffusionCoefficient
  decayRateClosed : decayRate

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  gradientShapeClosed : M.gradientShape
  diffusionCoefficientClosed : M.diffusionCoefficient
  decayRateClosed : M.decayRate

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.gradientShape ∧ M.diffusionCoefficient ∧ M.decayRate

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.gradientShapeClosed (And.intro E.diffusionCoefficientClosed E.decayRateClosed)

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse