import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean

structure Synapse where
  weight : Float
  preSynapticActivity : Float
  postSynapticActivity : Float

def hebbianUpdate (s : Synapse) (learningRate : Float) : Synapse :=
  { s with weight := s.weight + learningRate * s.preSynapticActivity * s.postSynapticActivity }

structure PlasticityRule where
  ruleType : String
  timeConstant : Float
  apply : Synapse → Synapse

structure PlasticityAdmittedObject where
  synapse : Synapse
  rule : PlasticityRule
  updatedSynapse : Synapse
  consistency : Prop

def plasticityClosed (obj : PlasticityAdmittedObject) : Prop :=
  obj.consistency ∧ obj.updatedSynapse.weight ≠ obj.synapse.weight

theorem synaptic_admission_bridge (obj : PlasticityAdmittedObject) : plasticityClosed obj :=
  obj.consistency

end NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse