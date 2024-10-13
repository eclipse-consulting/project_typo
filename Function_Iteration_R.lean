import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Explode

-- f iterated n times
-- `f_n` takes three arguments:
-- `n` is a natural number indicating how many times to iterate,
-- `f` is a function from real numbers to real numbers,
-- `a` is a real number to apply `f` on.
def f_n : ℕ → (ℝ → ℝ) → ℝ → ℝ
| 0, f, a => a
| n+1, f, a => f (f_n n f a)


theorem f_n_x_squared (a : ℕ) : f_n 2 (fun x => x * x) a = a ^ 4 :=
  by
    simp [f_n]
    ring

theorem f_n_x_cubed (a : ℕ) : f_n 3 (fun x => x * x) a = a ^ 8 :=
  by
    simp [f_n]
    ring


-- f_n 2 (fun x => x + 2) a = a + 4
-- f_n 3 (fun x => x + 2) a = a + 6

#eval f_n 1 (fun x => x*x) 0.1 -- 0.01
#eval f_n 2 (fun x => x*x) 0.1 -- 0.0001
#eval f_n 3 (fun x => x*x) 0.1 -- 1.0e-8
