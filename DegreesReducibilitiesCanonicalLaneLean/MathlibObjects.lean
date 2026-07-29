import DegreesReducibilitiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ReducibilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ReducibilityAdmittedObject where
  space : ReducibilitySpace
  turingDegree : Prop
  manyOneReducibility : Prop
  turingReducibilityEquivalent : Prop
  conclusion : turingReducibilityEquivalent

structure ReducibilityEndgameState where
  object : ReducibilityAdmittedObject

def ReducibilityWitnessClosed (O : ReducibilityAdmittedObject) : Prop :=
  O.turingReducibilityEquivalent

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse