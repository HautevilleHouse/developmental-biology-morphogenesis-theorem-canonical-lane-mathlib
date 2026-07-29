import DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean.MorphogenGradient

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure ReactionDiffusionPDE where
  morphogen : Type u
  diffusionCoefficients : morphogen → ℝ
  reactionTerms : morphogen → ℝ → ℝ
  initialCondition : morphogen → ℝ → ℝ
  boundaryCondition : (ℝ → ℝ) → Prop
  solutionExists : Prop
  patternFormation : Prop

structure ReactionDiffusionPDEEvidence (R : ReactionDiffusionPDE) where
  solutionExistsClosed : R.solutionExists
  patternFormationClosed : R.patternFormation

def ReactionDiffusionPDEClosed (R : ReactionDiffusionPDE) : Prop :=
  R.solutionExists ∧ R.patternFormation

theorem reaction_diffusion_pde_closed_from_evidence
    (R : ReactionDiffusionPDE) (E : ReactionDiffusionPDEEvidence R) :
    ReactionDiffusionPDEClosed R := by
  exact And.intro E.solutionExistsClosed E.patternFormationClosed

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse