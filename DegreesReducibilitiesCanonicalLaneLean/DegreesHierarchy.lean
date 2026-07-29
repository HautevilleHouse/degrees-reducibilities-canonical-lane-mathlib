import DegreesReducibilitiesCanonicalLaneLean.ManyOneReducibilityPackage

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure DegreesHierarchyPackage {T : TuringReducibilityPackage}
    {M : ManyOneReducibilityPackage T} where
  turingDegreeLattice : Prop
  jumpOperator : Prop
  jumpIteration : Nat → Prop
  lowHighDegrees : Prop
  minimalDegrees : Prop

structure DegreesHierarchyEvidence {T : TuringReducibilityPackage}
    {M : ManyOneReducibilityPackage T}
    (H : DegreesHierarchyPackage T M) where
  turingDegreeLatticeClosed : H.turingDegreeLattice
  jumpOperatorClosed : H.jumpOperator
  jumpIterationClosed : H.jumpIteration 0
  lowHighDegreesClosed : H.lowHighDegrees
  minimalDegreesClosed : H.minimalDegrees

def DegreesHierarchyClosed {T : TuringReducibilityPackage}
    {M : ManyOneReducibilityPackage T}
    (H : DegreesHierarchyPackage T M) : Prop :=
  H.turingDegreeLattice ∧ H.jumpOperator ∧ H.jumpIteration 0 ∧
  H.lowHighDegrees ∧ H.minimalDegrees

theorem degrees_hierarchy_closed_from_evidence
    {T : TuringReducibilityPackage} {M : ManyOneReducibilityPackage T}
    (H : DegreesHierarchyPackage T M) (E : DegreesHierarchyEvidence H) :
    DegreesHierarchyClosed H := by
  exact And.intro E.turingDegreeLatticeClosed
    (And.intro E.jumpOperatorClosed
      (And.intro E.jumpIterationClosed
        (And.intro E.lowHighDegreesClosed E.minimalDegreesClosed)))

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse