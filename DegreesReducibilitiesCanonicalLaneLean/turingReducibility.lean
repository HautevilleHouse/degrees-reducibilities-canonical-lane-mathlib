import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

structure TuringReducibilityPackage where
  oracle : Type u
  functional : (ℕ → ℕ) → (ℕ → ℕ)
  computationFinite : ℕ → Prop
  useOfOracleBounded : Prop
  oracleComputesFunction : Prop
  computationFiniteTerm : computationFinite 0
  useOfOracleBoundedTerm : useOfOracleBounded
  oracleComputesFunctionTerm : oracleComputesFunction

structure TuringReducibilityEvidence (T : TuringReducibilityPackage) where
  computationFiniteClosed : T.computationFinite 0
  useOfOracleBoundedClosed : T.useOfOracleBounded
  oracleComputesFunctionClosed : T.oracleComputesFunction

def TuringReducibilityClosed (T : TuringReducibilityPackage) : Prop :=
  T.computationFinite 0 ∧ T.useOfOracleBounded ∧ T.oracleComputesFunction

theorem turing_reducibility_closed_from_evidence
    (T : TuringReducibilityPackage) (E : TuringReducibilityEvidence T) :
    TuringReducibilityClosed T := by
  exact And.intro E.computationFiniteClosed
    (And.intro E.useOfOracleBoundedClosed E.oracleComputesFunctionClosed)

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse