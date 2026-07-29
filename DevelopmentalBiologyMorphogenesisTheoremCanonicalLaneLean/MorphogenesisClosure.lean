import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean

structure MorphogenesisAdmittedObject where
  organism : Type u
  developmentStage : Prop
  morphogeneticField : Prop
  finalBodyPlan : Prop
  conclusion : finalBodyPlan

def MorphogenesisWitnessClosed (O : MorphogenesisAdmittedObject) : Prop :=
  O.finalBodyPlan

end DevelopmentalBiologyMorphogenesisTheoremCanonicalLaneLean
end HautevilleHouse
