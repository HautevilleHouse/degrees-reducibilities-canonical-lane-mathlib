import DegreesReducibilitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DegreeReducibilityState where
  object : AdmissibleClass

def degreeReducibilityProjection : Projection DegreeReducibilityState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem degree_reducibility_projection_idempotent (x : DegreeReducibilityState) :
    degreeReducibilityProjection.toFun (degreeReducibilityProjection.toFun x) = degreeReducibilityProjection.toFun x := by
  exact degreeReducibilityProjection.idempotent x

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse