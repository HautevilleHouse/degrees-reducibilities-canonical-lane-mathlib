import DegreesReducibilitiesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DegreesReducibilitiesCanonicalLaneLean

def ConstrainedReducibilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_reducibility_endgame (A : AdmissibleClass) :
    ConstrainedReducibilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DegreesReducibilitiesCanonicalLaneLean
end HautevilleHouse