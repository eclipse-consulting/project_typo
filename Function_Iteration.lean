import Mathlib.Tactic.Ring

-- f iterated n times
-- `f_n` takes three arguments:
-- `n` is a natural number indicating how many times to iterate,
-- `f` is a function from natural numbers to natural numbers,
-- `a` is a natural number to apply `f` on.
def f_n : ℕ → (ℕ → ℕ) → ℕ → ℕ
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

theorem f2_x_plus_1 (a : ℕ) : f_n 2 (fun x => x + 1) a = a + 2 :=
  by
    rfl

-- Example usage:
-- f_n 2 (fun x => x + 2) a = a + 4
-- f_n 3 (fun x => x + 2) a = a + 6

#eval f_n 0 (fun x => x) 1 -- 1
#eval f_n 1 (fun x => x) 1 -- 1
#eval f_n 2 (fun x => x) 1 -- 1
#eval f_n 3 (fun x => x) 1 -- 1

#eval f_n 1 (fun x => x + 1) 1 -- 1
#eval f_n 1 (fun x => x + 1) 1 -- 2
#eval f_n 2 (fun x => x + 1) 1 -- 3
#eval f_n 3 (fun x => x + 1) 1 -- 4
#eval f_n 999 (fun x => x + 1) 1 -- 1000

#eval f_n 0 (fun x => x - 1) 1 -- 1
#eval f_n 1 (fun x => x - 1) 1 -- 0
#eval f_n 2 (fun x => x - 1) 1 -- 0
#eval f_n 3 (fun x => x - 1) 1 -- 0
#eval f_n 999 (fun x => x - 1) 1 -- 0

#eval f_n 0 (fun x => x * 2) 1 -- 1
#eval f_n 1 (fun x => x * 2) 1 -- 2
#eval f_n 2 (fun x => x * 2) 1 -- 4
#eval f_n 3 (fun x => x * 2) 1 -- 8
#eval f_n 64 (fun x => x * 2) 1 -- 2^64
#eval f_n 1024 (fun x => x * 2) 1 -- 2^1024

#eval f_n 0 (fun x => x * x) 1 -- 1
#eval f_n 1 (fun x => x * x) 1 -- 1
#eval f_n 2 (fun x => x * x) 1 -- 1
#eval f_n 3 (fun x => x * x) 1 -- 1

#eval f_n 0 (fun x => x * x) 2 -- 2
#eval f_n 1 (fun x => x * x) 2 -- 4
#eval f_n 2 (fun x => x * x) 2 -- 16
#eval f_n 3 (fun x => x * x) 2 -- 256
#eval f_n 4 (fun x => x * x) 2 -- 65536
#eval f_n 5 (fun x => x * x) 2 -- 4294967296
#eval f_n 6 (fun x => x * x) 2 -- 18446744073709551616
#eval f_n 7 (fun x => x * x) 2 -- 340282366920938463463374607431768211456
