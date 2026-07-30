import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean

structure NeuralSignal where
  membranePotential : Float
  firingRate : Float
  spikeTiming : List Float

def signalDecoding (signal : NeuralSignal) : Float :=
  signal.firingRate * (1.0 - signal.membranePotential)

def signalBandwidth (signal : NeuralSignal) : Float :=
  match signal.spikeTiming with
  | [] => 0.0
  | times => (times.max? times 0.0).getD 0.0 - (times.min? times 0.0).getD 0.0

structure NeuralAdmittedObject where
  signal : NeuralSignal
  decoding : Float
  bandwidth : Float
  encodingComplete : Bool

def admissibleSignal (obj : NeuralAdmittedObject) : Prop :=
  obj.encodingComplete ∧ obj.decoding > 0.0 ∧ obj.bandwidth ≥ 0.0

end NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse