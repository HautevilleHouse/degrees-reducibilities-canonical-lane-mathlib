import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure JumpOperator (D : TuringDegree) where
  jump : D.carrier → D.carrier
  jumpInversion : Prop
  relativization : Prop

structure JumpInversionPackage (D : TuringDegree) where
  jumpOperator : JumpOperator D
  lowDegree : Prop
  highDegree : Prop
  jumpInversionTheorem : Prop

structure JumpInversionEvidence (D : TuringDegree) (J : JumpInversionPackage D) where
  lowDegreeClosed : J.lowDegree
  highDegreeClosed : J.highDegree
  jumpInversionTheoremClosed : J.jumpInversionTheorem

def JumpInversionClosed (D : TuringDegree) (J : JumpInversionPackage D) : Prop :=
  J.lowDegree ∧ J.highDegree ∧ J.jumpInversionTheorem

theorem jump_inversion_closed_from_evidence (D : TuringDegree) (J : JumpInversionPackage D) (E : JumpInversionEvidence D J) :
    JumpInversionClosed D J := by
  exact And.intro E.lowDegreeClosed (And.intro E.highDegreeClosed E.jumpInversionTheoremClosed)

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse