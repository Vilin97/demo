import Mathlib.Data.Real.Basic
import Mathlib.Tactic

#eval "Hello World"

-- Tactic cheatsheet: https://github.com/madvorak/lean4-cheatsheet/blob/main/lean-tactics.pdf
-- MiL textbook: https://github.com/leanprover-community/mathematics_in_lean

-- tactics:
-- `intro pq`
-- `constructor`
-- `exact pq.left`
theorem and_commutative (p q : Prop) : p ∧ q → q ∧ p := by
  sorry

-- tactics:
-- `rcases pq with hp | hq`
-- `right`, `left`
theorem or_commutative (p q : Prop) : p ∨ q → q ∨ p := by
  sorry

-- tactics:
-- `induction' n with n hn`
theorem add_commutative (n : ℕ) : n + m = m + n := by
  sorry

-- tactics: `simp [h]`
example (x : ℝ) (h : 0 ≤ x) : |x| = x := by
  sorry

-- state and prove your own theorem that if a number is divisible by 4, then it is even
-- useful:
--   `n | m` means `n` divides `m`
--   `∃ k, ...` means there exists a `k` such that ...
