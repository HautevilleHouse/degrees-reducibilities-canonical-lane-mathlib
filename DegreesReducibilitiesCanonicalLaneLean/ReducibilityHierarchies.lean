import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure ManyOneReduction (A B : Type) where
  f : A → B
  computable : Prop

structure TuringReduction (A B : Type) where
  oracleMachine : Prop
  relativeComputability : Prop

structure ReducibilityHierarchyPackage where
  manyOneLevel : Prop
  turingLevel : Prop
  arithmeticalLevel : Prop
  analyticalLevel : Prop

structure ReducibilityHierarchyEvidence (R : ReducibilityHierarchyPackage) where
  manyOneLevelClosed : R.manyOneLevel
  turingLevelClosed : R.turingLevel
  arithmeticalLevelClosed : R.arithmeticalLevel
  analyticalLevelClosed : R.analyticalLevel

def ReducibilityHierarchyClosed (R : ReducibilityHierarchyPackage) : Prop :=
  R.manyOneLevel ∧ R.turingLevel ∧ R.arithmeticalLevel ∧ R.analyticalLevel

theorem reducibility_hierarchy_closed_from_evidence (R : ReducibilityHierarchyPackage) (E : ReducibilityHierarchyEvidence R) :
    ReducibilityHierarchyClosed R := by
  exact And.intro E.manyOneLevelClosed (And.intro E.turingLevelClosed (And.intro E.arithmeticalLevelClosed E.analyticalLevelClosed))

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse