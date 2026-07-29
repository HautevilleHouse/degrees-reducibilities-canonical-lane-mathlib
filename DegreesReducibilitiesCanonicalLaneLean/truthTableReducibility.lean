import HautevilleHouse.DegreesReducibilitiesCanonicalLaneLean.admissibleClass
import HautevilleHouse.DegreesReducibilitiesCanonicalLaneLean.manyOneReducibility

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure TruthTableReducibilityPackage {A : AdmissibleClass} (M : ManyOneReducibilityPackage A) where
  truthTableProcedure : A.object.domain → A.object.codomain
  computableConditionals : Prop
  finiteListCondition : Prop
  truthTableProcedureClosed : truthTableProcedure = M.totalComputableFunction
  computableConditionalsClosed : computableConditionals
  finiteListConditionClosed : finiteListCondition

def TruthTableReducibilityClosed {A : AdmissibleClass} {M : ManyOneReducibilityPackage A} (T : TruthTableReducibilityPackage M) : Prop :=
  T.computableConditionals ∧ T.finiteListCondition

theorem truth_table_reducibility_closed
    {A : AdmissibleClass} {M : ManyOneReducibilityPackage A} (T : TruthTableReducibilityPackage M) :
    TruthTableReducibilityClosed T := by
  exact And.intro T.computableConditionalsClosed T.finiteListConditionClosed

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse