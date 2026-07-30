import HautevilleHouse.NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean

structure NeuralCircuit where
  name : String
  inputNeurons : Nat
  outputNeurons : Nat
  connectivityMatrix : List (List Bool)
  activationFunction : String

def circuitComputes (C : NeuralCircuit) (A : AdmissibleClass) : Prop :=
  forall (spike : SpikeTrain), 
    (A.lane.solver.decodes spike) = 
    (evaluateCircuit C spike)

primitive partial def evaluateCircuit (C : NeuralCircuit) (input : SpikeTrain) : Bool :=
  -- place holder for circuit evaluation
  true

def circuitBridgeClosed (A : AdmissibleClass) (C : NeuralCircuit) : Prop :=
  circuitComputes C A
theorem circuit_bridge_from_admissible_class (A : AdmissibleClass) (C : NeuralCircuit) :
    circuitBridgeClosed A C := by
  intro spike
  exact A.solverDecidesProjectedLanguage spike

end NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
