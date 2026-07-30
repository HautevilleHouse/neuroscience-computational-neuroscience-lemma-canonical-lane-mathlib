import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean.BrainSignalModel
import HautevilleHouse.NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean.SynapticPlasticity
import HautevilleHouse.NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean.NeuralOscillations

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  admissibleSignal A.lane

def gateClosed (A : AdmissibleClass) : Prop :=
  plasticityClosed A.lane ∧ oscillationGateClosed A.lane

def ConstrainedNeuroscienceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_endgame (A : AdmissibleClass) : ConstrainedNeuroscienceClosure A :=
  And.intro (by
    -- bridge from admissible class
    exact A.bridgeWitness
  ) (by
    -- gate from admissible class
    exact And.intro (A.plasticityWitness) (A.oscillationWitness)
  )

end NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse