import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure DegreeInvariant where
  property : Prop
  invarianceUnderReducibility : Prop
  minimalDegreeCharacterization : Prop

structure DegreeInvariancePackage where
  invariant : DegreeInvariant
  invarianceClosed : Prop
  minimalDegreeClosed : Prop
  structuralClassification : Prop

structure DegreeInvarianceEvidence (P : DegreeInvariancePackage) where
  invarianceClosed : P.invarianceClosed
  minimalDegreeClosed : P.minimalDegreeClosed
  structuralClassificationClosed : P.structuralClassification

def DegreeInvarianceClosed (P : DegreeInvariancePackage) : Prop :=
  P.invarianceClosed ∧ P.minimalDegreeClosed ∧ P.structuralClassification

theorem degree_invariance_closed_from_evidence (P : DegreeInvariancePackage) (E : DegreeInvarianceEvidence P) :
    DegreeInvarianceClosed P := by
  exact And.intro E.invarianceClosed (And.intro E.minimalDegreeClosed E.structuralClassificationClosed)

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse