import HautevilleHouse.NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean

structure AdmissibleClass where
  lane : NeuroAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
