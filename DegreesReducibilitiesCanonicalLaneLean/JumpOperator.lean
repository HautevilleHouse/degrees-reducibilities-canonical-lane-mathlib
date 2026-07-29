import DegreesReducibilitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure JumpOperatorPackage where
  baseSet : Set ℕ
  jumpSet : Set ℕ
  jumpDefined : Prop
  jumpProperties : Prop

structure JumpOperatorEvidence (J : JumpOperatorPackage) where
  jumpDefinedClosed : J.jumpDefined
  jumpPropertiesClosed : J.jumpProperties

def JumpOperatorClosed (J : JumpOperatorPackage) : Prop :=
  J.jumpDefined ∧ J.jumpProperties

theorem jump_operator_closed_from_evidence (J : JumpOperatorPackage) (E : JumpOperatorEvidence J) :
    JumpOperatorClosed J := by
  exact And.intro E.jumpDefinedClosed E.jumpPropertiesClosed

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse