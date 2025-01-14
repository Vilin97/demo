import Mathlib.Data.Real.Basic
import Mathlib.Tactic

#eval "Hello World"
#eval 1+1

-- Tactic cheatsheet: https://github.com/madvorak/lean4-cheatsheet/blob/main/lean-tactics.pdf
-- MiL textbook: https://github.com/leanprover-community/mathematics_in_lean
-- talks about Lean + AI: https://researchseminars.org/talk/LeanTogether2025/35/, https://researchseminars.org/talk/LeanTogether2025/2/

-- tactics:
-- `intro h`
-- `constructor`
-- `exact h.left`
theorem and_commutative (p q : Prop) : p ∧ q → q ∧ p := by
  -- we assume that `h : p ∧ q`
  -- first focus on the `left` side of the goal, and then on the right
  intro h
  constructor
  exact h.right
  exact h.left

-- tactics:
-- `rcases pq with hp | hq`
-- `right`, `left`
theorem or_commutative (p q : Prop) : p ∨ q → q ∨ p := by
  -- assume that `h : p ∨ q`.
  -- We reason by `cases` on `h`. In case `p`, we need to prove the
  -- `right` side of the goal. And vice versa
  intro h
  rcases h with hp | hq
  right
  exact hp
  left
  exact hq

open Nat

-- tactics:
-- `induction' n with n hn`
theorem add_commutative (n : ℕ) : n + m = m + n := by
  induction' n with n hn
  -- base case
  simp only [zero_add, add_zero]
  -- inductive step
  simp only [Nat.add_one]
  -- exact congr_arg Nat.succ hn
  sorry

-- tactics: `simp [h]`
example (x : ℝ) (h : 0 ≤ x) : |x| = x := by
  sorry

-- state and prove your own theorem that if a number is divisible by 4, then it is even
-- useful:
--   `n | m` means `n` divides `m`
--   `∃ k, ...` means there exists a `k` such that ...
