import DegreesReducibilitiesCanonicalLaneLean.TuringReducibilityPackage

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure ManyOneReducibilityPackage {T : TuringReducibilityPackage} where
  totalComputableFunction : Prop
  reductionMapping : Prop
  preimageMembership : Prop

structure ManyOneReducibilityEvidence {T : TuringReducibilityPackage}
    (M : ManyOneReducibilityPackage T) where
  totalComputableFunctionClosed : M.totalComputableFunction
  reductionMappingClosed : M.reductionMapping
  preimageMembershipClosed : M.preimageMembership

def ManyOneReducibilityClosed {T : TuringReducibilityPackage}
    (M : ManyOneReducibilityPackage T) : Prop :=
  M.totalComputableFunction ∧ M.reductionMapping ∧ M.preimageMembership

theorem many_one_reducibility_closed_from_evidence
    {T : TuringReducibilityPackage} (M : ManyOneReducibilityPackage T)
    (E : ManyOneReducibilityEvidence M) : ManyOneReducibilityClosed M := by
  exact And.intro E.totalComputableFunctionClosed
    (And.intro E.reductionMappingClosed E.preimageMembershipClosed)

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse