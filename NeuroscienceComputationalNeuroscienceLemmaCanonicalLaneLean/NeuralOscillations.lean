import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean

structure Oscillation where
  frequency : Float
  amplitude : Float
  phase : Float

def oscillationCoherence (o1 o2 : Oscillation) : Float :=
  (o1.amplitude * o2.amplitude) * Float.cos (o1.phase - o2.phase)

structure OscillationPattern where
  alpha : Oscillation
  beta : Oscillation
  gamma : Oscillation

def patternSynchronization (pattern : OscillationPattern) : Float :=
  (oscillationCoherence pattern.alpha pattern.beta +
   oscillationCoherence pattern.beta pattern.gamma +
   oscillationCoherence pattern.alpha pattern.gamma) / 3.0

structure OscillationAdmittedObject where
  pattern : OscillationPattern
  synchronization : Float
  threshold : Float
  synchronized : Prop

def oscillationGateClosed (obj : OscillationAdmittedObject) : Prop :=
  obj.synchronization > obj.threshold → obj.synchronized

theorem oscillation_bridge_from_admissible (obj : OscillationAdmittedObject) : oscillationGateClosed obj :=
  fun h : obj.synchronization > obj.threshold => obj.synchronized

end NeuroscienceComputationalNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse