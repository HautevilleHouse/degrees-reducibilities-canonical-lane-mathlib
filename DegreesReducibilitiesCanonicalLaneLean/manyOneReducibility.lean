import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure ManyOneReducibilityPackage where
  sourceSet : Set ℕ
  targetSet : Set ℕ
  reductionFunction : ℕ → ℕ
  functionComputable : Prop
  membershipPreserved : Prop
  functionComputableTerm : functionComputable
  membershipPreservedTerm : membershipPreserved

structure ManyOneReducibilityEvidence (M : ManyOneReducibilityPackage) where
  functionComputableClosed : M.functionComputable
  membershipPreservedClosed : M.membershipPreserved

def ManyOneReducibilityClosed (M : ManyOneReducibilityPackage) : Prop :=
  M.functionComputable ∧ M.membershipPreserved

theorem many_one_reducibility_closed_from_evidence
    (M : ManyOneReducibilityPackage) (E : ManyOneReducibilityEvidence M) :
    ManyOneReducibilityClosed M := by
  exact And.intro E.functionComputableClosed E.membershipPreservedClosed

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse