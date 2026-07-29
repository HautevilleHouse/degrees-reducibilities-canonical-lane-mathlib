import DegreesReducibilitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure PostProblemPackage where
  degree : Type u
  partialOrder : PartialOrder degree
  minimalDegreeExists : Prop
  incomparableDegreesExist : Prop

structure PostProblemEvidence (P : PostProblemPackage) where
  minimalDegreeExistsClosed : P.minimalDegreeExists
  incomparableDegreesExistClosed : P.incomparableDegreesExist

def PostProblemClosed (P : PostProblemPackage) : Prop :=
  P.minimalDegreeExists ∧ P.incomparableDegreesExist

theorem post_problem_closed_from_evidence (P : PostProblemPackage) (E : PostProblemEvidence P) :
    PostProblemClosed P := by
  exact And.intro E.minimalDegreeExistsClosed E.incomparableDegreesExistClosed

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse