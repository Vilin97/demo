import Mathlib.Data.Set.Lattice

example : 1+1=2 := by
  rfl

example (A : Set ℕ) : A ∩ B ⊆ A := by
  -- intro x hypothesis
  -- #check hypothesis.left
  -- exact hypothesis.left
  sorry

-- Your turn!
example : ∀ x y z n : ℕ, n > 2 ∧ x * y * z ≠ 0 → x ^ n + y ^ n ≠ z ^ n :=
  sorry
