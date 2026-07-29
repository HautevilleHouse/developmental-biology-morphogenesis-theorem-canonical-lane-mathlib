import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure MorphogenGradientPackage where
  sourceCell : Type u
  targetCell : Type v
  morphogenConcentration : sourceCell → targetCell → ℝ
  gradientSlope : Prop
  diffusionCoefficient : ℝ
  decayRate : ℝ
  gradientDirection : Prop
  gradientSlopePositive : gradientSlope
  diffusionFinite : diffusionCoefficient > 0
  decayFinite : decayRate > 0

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  gradientSlopeClosed : M.gradientSlope
  gradientDirectionClosed : M.gradientDirection

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.gradientSlope ∧ M.gradientDirection

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage)
    (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.gradientSlopeClosed E.gradientDirectionClosed

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse