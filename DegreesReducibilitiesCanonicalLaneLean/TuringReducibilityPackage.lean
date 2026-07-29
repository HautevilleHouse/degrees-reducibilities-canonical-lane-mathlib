import DegreesReducibilitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure TuringReducibilityPackage where
  oracle : Type u
  machineComputation : Type v
  oracleComputable : Prop
  reductionFunction : Prop
  relativizedComputation : Prop

structure TuringReducibilityEvidence (P : TuringReducibilityPackage) where
  oracleComputableClosed : P.oracleComputable
  reductionFunctionClosed : P.reductionFunction
  relativizedComputationClosed : P.relativizedComputation

def TuringReducibilityClosed (P : TuringReducibilityPackage) : Prop :=
  P.oracleComputable ∧ P.reductionFunction ∧ P.relativizedComputation

theorem turing_reducibility_closed_from_evidence
    (P : TuringReducibilityPackage) (E : TuringReducibilityEvidence P) :
    TuringReducibilityClosed P := by
  exact And.intro E.oracleComputableClosed
    (And.intro E.reductionFunctionClosed E.relativizedComputationClosed)

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse