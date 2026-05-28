import Mathlib

namespace VULeanFormalization

/-- A point `(i, v)` representing the valuation `v` of the `i`-th coefficient. -/
structure ValuationPoint where
  index : Nat
  value : Int
deriving Repr, DecidableEq

/-- The list of coefficient indices appearing in a finite list of valuation points. -/
def indices (points : List ValuationPoint) : List Nat :=
  points.map ValuationPoint.index

/-- Taking indices does not change the length of the list. -/
lemma length_indices (points : List ValuationPoint) :
    (indices points).length = points.length := by
  simp [indices]

/-- A toy predicate saying that all valuation values are nonnegative. -/
def NonnegativeValuations (points : List ValuationPoint) : Prop :=
  ∀ p ∈ points, 0 ≤ p.value

lemma nonnegative_empty : NonnegativeValuations [] := by
  intro p hp
  cases hp

end VULeanFormalization
