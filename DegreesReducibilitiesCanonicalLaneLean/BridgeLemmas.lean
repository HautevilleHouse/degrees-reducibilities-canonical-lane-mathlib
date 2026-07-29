import DegreesReducibilitiesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReducibilityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse