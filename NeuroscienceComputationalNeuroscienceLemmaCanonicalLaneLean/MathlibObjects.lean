import HautevilleHouse.NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev SpikeTrain := List Bool
abbrev NeuralState := Set SpikeTrain

structure NeuronModel where
  threshold : Nat
  refractoryPeriod : Nat
  membranePotential : Float

structure NeuralDecoder where
  decodes : SpikeTrain → Bool

structure SynapticPlasticityModel where
  learningRate : Float
  weightMatrix : List (List Float)

structure NeuroAdmittedObject where
  neuralState : NeuralState
  projectedLanguage : NeuralState
  solver : NeuralDecoder
  plasticityModel : SynapticPlasticityModel

structure NeuroEndgameState where
  admittedObject : NeuroAdmittedObject

def Decides (M : NeuralDecoder) (L : NeuralState) : Prop :=
  forall x : SpikeTrain, M.decodes x = true ↔ x ∈ L

end NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
