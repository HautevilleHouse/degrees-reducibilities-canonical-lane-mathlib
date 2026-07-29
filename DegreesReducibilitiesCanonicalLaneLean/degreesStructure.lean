import HautevilleHouse.DegreesReducibilitiesCanonicalLaneLean.turingReducibility
import HautevilleHouse.DegreesReducibilitiesCanonicalLaneLean.truthTableReducibility

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure DegreesStructure (A : AdmissibleClass) where
  turingDegree : Type u
  manyOneDegree : Type v
  truthTableDegree : Type w
  ordering : Prop
  leastElement : turingDegree
  jumpOperator : turingDegree → turingDegree
  orderingClosed : ordering
  leastElementClosed : leastElement = turingDegree
  jumpOperatorClosed : Prop

def DegreesStructureClosed {A : AdmissibleClass} (D : DegreesStructure A) : Prop :=
  D.ordering ∧ (D.leastElementClosed) ∧ D.jumpOperatorClosed

theorem degrees_structure_closed
    {A : AdmissibleClass} (D : DegreesStructure A) :
    DegreesStructureClosed D := by
  exact And.intro D.orderingClosed (And.intro D.leastElementClosed D.jumpOperatorClosed)

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse