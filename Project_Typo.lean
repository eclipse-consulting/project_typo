import Mathlib.Tactic.Explode

-- Project Typo:
-- The goal of this project is to replace all of the symbols of 𝔖 ("Set") theory with emojis,
-- and to replace all of the names of theorems with the names of famous video game characters.
-- This file contains the basic definitions of 𝔖 theory with emojis.
-- Frege would be proud.
-- Practical applications of this project include:
-- 1. Code obfuscation of Lean code.
-- 2. Making Lean code more fun to read.
--


-- 𝔖 is the mathematical letter for 'S', denoting the higher categorical concept of a 'Set' in Mathematical Logic.
def 𝔖 (α : Type u) := α → Prop

namespace 𝔖

def mem (σ : α) (a : 𝔖 α) := a σ

-- ⩹ now denotes "element of 𝔖"
infix:50 (priority := high) "⩹" => mem

theorem ext {s₁ s₂ : 𝔖 α} (h : ∀ s, s ⩹ s₁ ↔ s ⩹ s₂) : s₁ = s₂ :=
  funext (fun 𝔛 => propext (h 𝔛))
def empty : 𝔖 α := fun 𝔛 => False

-- let ⦰ denote "empty 𝔖"
notation (priority := high) "⦰" => empty

-- let ⧉ denote "intersection"
def inter (s₁ s₂ : 𝔖 α) : 𝔖 α :=
  fun 𝔛 => 𝔛 ⩹ s₁ ∧ 𝔛 ⩹ s₂

infix:70 " ⧉ " => inter

-- let ⛜ denote "union"
def union (s₁ s₂ : 𝔖 α) : 𝔖 α :=
  fun 𝔛 => 𝔛 ⩹ s₁ ∨ 𝔛 ⩹ s₂

infix:65 " ⛜ " => union

-- let ⚮ denote "𝔖 difference"
def diff (s₁ s₂ : 𝔖 α) : 𝔖 α :=
  fun 𝔛 => 𝔛 ⩹ s₁ ∧ ¬ 𝔛 ⩹ s₂

infix:60 " ⚮ " => 𝔖.diff

-- let ˟ denote "complement"
def complement (s : 𝔖 α) : 𝔖 α :=
  fun 𝔛 => ¬ 𝔛 ⩹ s

postfix:100 "˟ " => 𝔖.complement


-- Link's 𝔖 Difference Self Theorem [The Legend of Zelda]
theorem link.diff.self (s : 𝔖 s) : s ⚮ s = ⦰ :=
  𝔖.ext fun 𝔛 => Iff.intro
    (fun ⟨s₁, s₂⟩ => s₂ s₁)
    (fun s => False.elim s)

-- Sonic's Intersection Self Theorem [Sonic the Hedgehog]
theorem sonic.inter.self (s : 𝔖 α) : s ⧉ s = s :=
  𝔖.ext fun 𝔛 => Iff.intro
    (fun ⟨s, _⟩ => s)
    (fun s => ⟨s, s⟩)

-- Mario's Null Set Intersection Theorem [Super Mario Bros.]
theorem mario.inter.empty (s : 𝔖 α) : s ⧉ ⦰ = ⦰ :=
  𝔖.ext fun 𝔛 => Iff.intro
    (fun ⟨_, s⟩ => s)
    (fun s => False.elim s)

-- Zelda’s Associativity of Intersection Theorem [The Legend of Zelda]
theorem zelda.empty.inter (s : 𝔖 α) : ⦰ ⧉ s = ⦰ :=
  𝔖.ext fun 𝔛 => Iff.intro
    (fun ⟨s, _⟩ => s)
    (fun s => False.elim s)

-- Roger Wilco's Intersection Commutativity Theorem [Space Quest]
theorem roger.inter.comm (s₁ s₂ : 𝔖 α) : s₁ ⧉ s₂ = s₂ ⧉ s₁ :=
  𝔖.ext fun 𝔛 => Iff.intro
    (fun ⟨s₁, s₂⟩ => ⟨s₂, s₁⟩)
    (fun ⟨s₁, s₂⟩ => ⟨s₂, s₁⟩)

-- Pikachu’s Intersection with Complement Theorem [Pokémon]
theorem pikachu.inter.complement (s : 𝔖 α) : s ⧉ s˟ = ⦰ :=
  𝔖.ext fun 𝔛 => Iff.intro
    (fun ⟨s₁, s₂⟩ => s₂ s₁)
    (fun s => False.elim s)


-- Lara Croft's Associativity of Intersection Theorem [Tomb Raider]
theorem lara.croft.inter.assoc (s₁ s₂ s₃ : 𝔖 α) : s₁ ⧉ (s₂ ⧉ s₃) = (s₁ ⧉ s₂) ⧉ s₃ :=
  𝔖.ext fun 𝔛 => Iff.intro
    (fun ⟨s₁, ⟨s₂, s₃⟩⟩ => ⟨⟨s₁, s₂⟩, s₃⟩)
    (fun ⟨⟨s₁, s₂⟩, s₃⟩ => ⟨s₁, ⟨s₂, s₃⟩⟩)


-- Ryu's Intersection Distributivity Theorem [Street Fighter]
theorem ryu.union.self (s : 𝔖 α) : s ⛜ s = s :=
  𝔖.ext fun 𝔛 => Iff.intro
    (fun s => s.elim id id)
    (fun s => Or.inl s)

-- Chun-Li's Intersection with Empty 𝔖 Theorem [Street Fighter]
theorem chun.li.union.empty (s : 𝔖 α) : s ⛜ ⦰ = s :=
  𝔖.ext fun 𝔛 => Iff.intro
    (fun s => s.elim id False.elim)
    (fun s => Or.inl s)


-- Princess Peach's Union Commutativity Theorem [Mario Kart 64]
theorem princess.union.comm (s₁ s₂ : 𝔖 α) : s₁ ⛜ s₂ = s₂ ⛜ s₁ :=
  𝔖.ext fun 𝔛 => Iff.intro
    (fun s => s.elim Or.inr Or.inl)
    (fun s => s.elim Or.inr Or.inl)


-- define 𝔖 S, S₁, S₂, S₃
variable (S : 𝔖 α)
variable (S₁ : 𝔖 α)
variable (S₂ : 𝔖 α)
variable (S₃ : 𝔖 α)

-- GLaDOS ring of 𝔖 [Portal 1-2]
def GLaDOS.ring : 𝔖 α → 𝔖 α → 𝔖 α → Prop :=
  fun S₁ S₂ S₃ =>
    S₁ ⧉ S₂ = S₂ ⧉ S₁ ∧
    S₁ ⧉ (S₂ ⧉ S₃) = (S₁ ⧉ S₂) ⧉ S₃ ∧
    S₁ ⧉ (S₂ ⛜ S₃) = (S₁ ⧉ S₂) ⛜ (S₁ ⧉ S₃) ∧
    S₁ ⛜ (S₂ ⧉ S₃) = (S₁ ⛜ S₂) ⧉ (S₁ ⛜ S₃)

theorem GLaDOS.ring.theorem1 : GLaDOS.ring S₁ S₂ S₃ → S₁ ⧉ S₂ = S₂ ⧉ S₁ :=
  fun s => s.1


#check ⦰ ⧉ ⦰ = ⦰
#check S ⧉ S = S
#check S ⧉ ⦰ = ⦰
#check ⦰ ⧉ S = ⦰
#check S₁ ⧉ S₂ = S₂ ⧉ S₁
#check S₁ ⧉ (S₂ ⧉ S₁) = (S₁ ⧉ S₂) ⧉ S₁
#check S ⛜ S = S
#check S ⛜ ⦰ = S
#check S₁ ⛜ S₂ = S₂ ⛜ S₁
#check S ⚮ S = ⦰
#check S ⚮ ⦰ = S
#check S₁ ⚮ S₂ = S₁ ⧉ (⦰ ⧉ S₂)
#check S ˟ = ⦰ ⧉ S
#check S ˟ ˟ = S
#check S ˟ ˟ ˟ = ⦰ ⧉ S
#check S ˟ ˟ ˟ ˟ = S

#explode link.diff.self
#explode sonic.inter.self
#explode mario.inter.empty
#explode zelda.empty.inter
#explode roger.inter.comm
#explode pikachu.inter.complement
#explode lara.croft.inter.assoc
#explode ryu.union.self
#explode chun.li.union.empty
#explode princess.union.comm
#explode GLaDOS.ring.theorem1


end 𝔖
