import DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean.ReactionDiffusionPDE

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure MechanicalForces where
  tissue : Type u
  stressTensor : tissue → ℝ → ℝ → ℝ
  activeContraction : ℝ
  passiveElasticity : ℝ
  equilibriumCondition : Prop
  deformationGradient : Prop

structure MechanicalForcesEvidence (M : MechanicalForces) where
  equilibriumConditionClosed : M.equilibriumCondition
  deformationGradientClosed : M.deformationGradient

def MechanicalForcesClosed (M : MechanicalForces) : Prop :=
  M.equilibriumCondition ∧ M.deformationGradient

theorem mechanical_forces_closed_from_evidence
    (M : MechanicalForces) (E : MechanicalForcesEvidence M) :
    MechanicalForcesClosed M := by
  exact And.intro E.equilibriumConditionClosed E.deformationGradientClosed

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse