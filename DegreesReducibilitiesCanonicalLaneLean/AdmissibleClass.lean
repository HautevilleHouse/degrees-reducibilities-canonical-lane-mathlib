import DegreesReducibilitiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure AdmissibleClass where
  object : ReducibilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ReducibilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse