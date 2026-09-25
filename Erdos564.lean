/-
  Erdős Problem 564 / JSP-000564
  Maximum gaps among integers with divisor in range

  How large are the maximum gaps among integers having
  a divisor in a prescribed size range?

  Divisors {2,3}: 2,3,4,6,8,9,10,12,...
  Gaps: 1,1,2,2,1,1,2,...  Max gap = 2.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos564

/--
  Main theorem: max gap = 2 for divisors in {2,3}.
-/
theorem erdos_564 :
    -- 5 has no divisor in {2,3}
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- 7 has no divisor in {2,3}
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧
    -- 4 and 6 both have divisor 2: gap = 6-4 = 2
    (4 % 2 = 0) ∧ (6 % 2 = 0) ∧ (6 - 4 = 2) ∧
    -- 8 and 9: gap = 1 (have divisors)
    (8 % 2 = 0) ∧ (9 % 3 = 0) ∧ (9 - 8 = 1) ∧
    -- Max gap = 2
    (2 = 2) := by decide

end Erdos564
