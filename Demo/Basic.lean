-- import LatexInLean
import Mathlib.Data.Set.Lattice
-- show_panel_widgets [latex]

example : 1+1=2 := by
  rfl

/-! $A,B \subset \mathbb{N} \implies A \cap B \subset A$ -/
example (A : Set ℕ) : A ∩ B ⊆ A := by
  -- intro x hypothesis
  -- #check hypothesis.left
  -- exact hypothesis.left
  sorry

/-! $\forall x y z n \in \mathbb{N}, n > 2 \and xyz \neq 0 \implies x^n + y^n \neq z^n $ -/
example : ∀ x y z n : ℕ, n > 2 ∧ x * y * z ≠ 0 → x ^ n + y ^ n ≠ z ^ n :=
  sorry
