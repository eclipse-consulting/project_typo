# Project Typo

The goal of this project is to replace all of the symbols of 𝔖 ("Set") theory with emojis, and to replace all of the names of theorems with the names of famous video game characters.

The LEAN file contains the basic definitions of 𝔖 theory with emojis.

## Link's 𝔖 Difference Self Theorem [The Legend of Zelda]

```
link.diff.self : ∀ {s : Type u_1} (s_1 : 𝔖 s), s_1 ⚮ s_1 = ⦰

0 │      │ s✝                       ├ Type u_1
1 │      │ s                        ├ 𝔖 s✝
2 │      │ 𝔛                        │ ┌ s✝
3 │      │ x✝                       │ │ ┌ 𝔛⩹s ⚮ s
4 │      │ s₁                       │ │ │ ┌ 𝔛⩹s
5 │      │ s₂                       │ │ │ ├ ¬𝔛⩹s
6 │5,4   │ ∀E                       │ │ │ │ False
7 │4,5,6 │ ∀I                       │ │ │ 𝔛⩹s → ¬𝔛⩹s → False
8 │3,7   │ link.diff.self.match_1 │ │ │ 𝔛⩹⦰
9 │3,8   │ ∀I                       │ │ 𝔛⩹s ⚮ s → 𝔛⩹⦰
10│      │ s                        │ │ ┌ 𝔛⩹⦰
11│10    │ False.elim               │ │ │ 𝔛⩹s✝ ⚮ s✝
12│10,11 │ ∀I                       │ │ 𝔛⩹⦰ → 𝔛⩹s✝ ⚮ s✝
13│9,12  │ Iff.intro                │ │ 𝔛⩹s ⚮ s ↔ 𝔛⩹⦰
14│2,13  │ ∀I                       │ ∀ (𝔛 : s✝), 𝔛⩹s ⚮ s ↔ 𝔛⩹⦰
15│14    │ ext                    │ s ⚮ s = ⦰
16│0,1,15│ ∀I                       │ ∀ {s : Type u_1} (s_1 : 𝔖 s), s_1 ⚮ s_1 = ⦰
```

## Sonic's Intersection Self Theorem [Sonic the Hedgehog]
```
sonic.inter.self : ∀ {α : Type u_1} (s : 𝔖 α), s ⧉ s = s

0 │      │ α                          ├ Type u_1
1 │      │ s                          ├ 𝔖 α
2 │      │ 𝔛                          │ ┌ α
3 │      │ x✝                         │ │ ┌ 𝔛⩹s ⧉ s
4 │      │ s                          │ │ │ ┌ 𝔛⩹s✝
5 │      │ right✝                     │ │ │ ├ 𝔛⩹s✝
6 │4,5,4 │ ∀I                         │ │ │ 𝔛⩹s✝ → 𝔛⩹s✝ → 𝔛⩹s✝
7 │3,6   │ sonic.inter.self.match_1 │ │ │ 𝔛⩹s
8 │3,7   │ ∀I                         │ │ 𝔛⩹s ⧉ s → 𝔛⩹s
9 │      │ s                          │ │ ┌ 𝔛⩹s✝
10│9,9   │ And.intro                  │ │ │ 𝔛⩹s✝ ∧ 𝔛⩹s✝
11│9,10  │ ∀I                         │ │ 𝔛⩹s✝ → 𝔛⩹s✝ ∧ 𝔛⩹s✝
12│8,11  │ Iff.intro                  │ │ 𝔛⩹s ⧉ s ↔ 𝔛⩹s
13│2,12  │ ∀I                         │ ∀ (𝔛 : α), 𝔛⩹s ⧉ s ↔ 𝔛⩹s
14│13    │ ext                      │ s ⧉ s = s
15│0,1,14│ ∀I                         │ ∀ {α : Type u_1} (s : 𝔖 α), s ⧉ s = s
```

## Mario's Null Set Intersection Theorem [Super Mario Bros.]

```
mario.inter.empty : ∀ {α : Type u_1} (s : 𝔖 α), s ⧉ ⦰ = ⦰

0 │      │ α                           ├ Type u_1
1 │      │ s                           ├ 𝔖 α
2 │      │ 𝔛                           │ ┌ α
3 │      │ x✝                          │ │ ┌ 𝔛⩹s ⧉ ⦰
4 │      │ left✝                       │ │ │ ┌ 𝔛⩹s✝
5 │      │ s                           │ │ │ ├ 𝔛⩹⦰
6 │4,5,5 │ ∀I                          │ │ │ 𝔛⩹s✝ → 𝔛⩹⦰ → 𝔛⩹⦰
7 │3,6   │ mario.inter.empty.match_1 │ │ │ 𝔛⩹⦰
8 │3,7   │ ∀I                          │ │ 𝔛⩹s ⧉ ⦰ → 𝔛⩹⦰
9 │      │ s                           │ │ ┌ 𝔛⩹⦰
10│9     │ False.elim                  │ │ │ 𝔛⩹s✝ ⧉ ⦰
11│9,10  │ ∀I                          │ │ 𝔛⩹⦰ → 𝔛⩹s✝ ⧉ ⦰
12│8,11  │ Iff.intro                   │ │ 𝔛⩹s ⧉ ⦰ ↔ 𝔛⩹⦰
13│2,12  │ ∀I                          │ ∀ (𝔛 : α), 𝔛⩹s ⧉ ⦰ ↔ 𝔛⩹⦰
14│13    │ ext                       │ s ⧉ ⦰ = ⦰
15│0,1,14│ ∀I                          │ ∀ {α : Type u_1} (s : 𝔖 α), s ⧉ ⦰ = ⦰
```

## Zelda’s Associativity of Intersection Theorem [The Legend of Zelda]

```
zelda.empty.inter : ∀ {α : Type u_1} (s : 𝔖 α), ⦰ ⧉ s = ⦰

0 │      │ α                           ├ Type u_1
1 │      │ s                           ├ 𝔖 α
2 │      │ 𝔛                           │ ┌ α
3 │      │ x✝                          │ │ ┌ 𝔛⩹⦰ ⧉ s
4 │      │ s                           │ │ │ ┌ 𝔛⩹⦰
5 │      │ right✝                      │ │ │ ├ 𝔛⩹s✝
6 │4,5,4 │ ∀I                          │ │ │ 𝔛⩹⦰ → 𝔛⩹s✝ → 𝔛⩹⦰
7 │3,6   │ zelda.empty.inter.match_1 │ │ │ 𝔛⩹⦰
8 │3,7   │ ∀I                          │ │ 𝔛⩹⦰ ⧉ s → 𝔛⩹⦰
9 │      │ s                           │ │ ┌ 𝔛⩹⦰
10│9     │ False.elim                  │ │ │ 𝔛⩹⦰ ⧉ s✝
11│9,10  │ ∀I                          │ │ 𝔛⩹⦰ → 𝔛⩹⦰ ⧉ s✝
12│8,11  │ Iff.intro                   │ │ 𝔛⩹⦰ ⧉ s ↔ 𝔛⩹⦰
13│2,12  │ ∀I                          │ ∀ (𝔛 : α), 𝔛⩹⦰ ⧉ s ↔ 𝔛⩹⦰
14│13    │ ext                       │ ⦰ ⧉ s = ⦰
15│0,1,14│ ∀I                          │ ∀ {α : Type u_1} (s : 𝔖 α), ⦰ ⧉ s = ⦰
```

## Roger Wilco's Intersection Commutativity Theorem [Space Quest]

```
roger.inter.comm : ∀ {α : Type u_1} (s₁ s₂ : 𝔖 α), s₁ ⧉ s₂ = s₂ ⧉ s₁

0 │        │ α                          ├ Type u_1
1 │        │ s₁                         ├ 𝔖 α
2 │        │ s₂                         ├ 𝔖 α
3 │        │ 𝔛                          │ ┌ α
4 │        │ x✝                         │ │ ┌ 𝔛⩹s₁ ⧉ s₂
5 │        │ s₁                         │ │ │ ┌ 𝔛⩹s₁✝
6 │        │ s₂                         │ │ │ ├ 𝔛⩹s₂✝
7 │6,5     │ And.intro                  │ │ │ │ 𝔛⩹s₂✝ ∧ 𝔛⩹s₁✝
8 │5,6,7   │ ∀I                         │ │ │ 𝔛⩹s₁✝ → 𝔛⩹s₂✝ → 𝔛⩹s₂✝ ∧ 𝔛⩹s₁✝
9 │4,8     │ roger.inter.comm.match_1 │ │ │ 𝔛⩹s₂ ⧉ s₁
10│4,9     │ ∀I                         │ │ 𝔛⩹s₁ ⧉ s₂ → 𝔛⩹s₂ ⧉ s₁
11│        │ x✝                         │ │ ┌ 𝔛⩹s₂ ⧉ s₁
12│        │ s₁                         │ │ │ ┌ 𝔛⩹s₂✝
13│        │ s₂                         │ │ │ ├ 𝔛⩹s₁✝
14│13,12   │ And.intro                  │ │ │ │ 𝔛⩹s₁✝ ∧ 𝔛⩹s₂✝
15│12,13,14│ ∀I                         │ │ │ 𝔛⩹s₂✝ → 𝔛⩹s₁✝ → 𝔛⩹s₁✝ ∧ 𝔛⩹s₂✝
16│11,15   │ roger.inter.comm.match_2 │ │ │ 𝔛⩹s₁ ⧉ s₂
17│11,16   │ ∀I                         │ │ 𝔛⩹s₂ ⧉ s₁ → 𝔛⩹s₁ ⧉ s₂
18│10,17   │ Iff.intro                  │ │ 𝔛⩹s₁ ⧉ s₂ ↔ 𝔛⩹s₂ ⧉ s₁
19│3,18    │ ∀I                         │ ∀ (𝔛 : α), 𝔛⩹s₁ ⧉ s₂ ↔ 𝔛⩹s₂ ⧉ s₁
20│19      │ ext                      │ s₁ ⧉ s₂ = s₂ ⧉ s₁
21│0,1,2,20│ ∀I                         │ ∀ {α : Type u_1} (s₁ s₂ : 𝔖 α), s₁ ⧉ s₂ = s₂ ⧉ s₁
```

## Pikachu’s Intersection with Complement Theorem [Pokémon]

```
pikachu.inter.complement : ∀ {α : Type u_1} (s : 𝔖 α), s ⧉ s˟ = ⦰

0 │      │ α                                  ├ Type u_1
1 │      │ s                                  ├ 𝔖 α
2 │      │ 𝔛                                  │ ┌ α
3 │      │ x✝                                 │ │ ┌ 𝔛⩹s ⧉ s˟
4 │      │ s₁                                 │ │ │ ┌ 𝔛⩹s
5 │      │ s₂                                 │ │ │ ├ 𝔛⩹s˟
6 │5,4   │ ∀E                                 │ │ │ │ False
7 │4,5,6 │ ∀I                                 │ │ │ 𝔛⩹s → 𝔛⩹s˟ → False
8 │3,7   │ pikachu.inter.complement.match_1 │ │ │ 𝔛⩹⦰
9 │3,8   │ ∀I                                 │ │ 𝔛⩹s ⧉ s˟ → 𝔛⩹⦰
10│      │ s                                  │ │ ┌ 𝔛⩹⦰
11│10    │ False.elim                         │ │ │ 𝔛⩹s✝ ⧉ s✝˟
12│10,11 │ ∀I                                 │ │ 𝔛⩹⦰ → 𝔛⩹s✝ ⧉ s✝˟
13│9,12  │ Iff.intro                          │ │ 𝔛⩹s ⧉ s˟ ↔ 𝔛⩹⦰
14│2,13  │ ∀I                                 │ ∀ (𝔛 : α), 𝔛⩹s ⧉ s˟ ↔ 𝔛⩹⦰
15│14    │ ext                              │ s ⧉ s˟ = ⦰
16│0,1,15│ ∀I                                 │ ∀ {α : Type u_1} (s : 𝔖 α), s ⧉ s˟ = ⦰
```

## Lara Croft's Associativity of Intersection Theorem [Tomb Raider]

```
lara.croft.inter.assoc : ∀ {α : Type u_1} (s₁ s₂ s₃ : 𝔖 α), s₁ ⧉ (s₂ ⧉ s₃) = (s₁ ⧉ s₂) ⧉ s₃

0 │           │ α                                ├ Type u_1
1 │           │ s₁                               ├ 𝔖 α
2 │           │ s₂                               ├ 𝔖 α
3 │           │ s₃                               ├ 𝔖 α
4 │           │ 𝔛                                │ ┌ α
5 │           │ x✝                               │ │ ┌ 𝔛⩹s₁ ⧉ (s₂ ⧉ s₃)
6 │           │ s₁                               │ │ │ ┌ 𝔛⩹s₁✝
7 │           │ s₂                               │ │ │ ├ 𝔛⩹s₂✝
8 │           │ s₃                               │ │ │ ├ 𝔛⩹s₃✝
9 │6,7        │ And.intro                        │ │ │ │ 𝔛⩹s₁✝ ∧ 𝔛⩹s₂✝
10│9,8        │ And.intro                        │ │ │ │ 𝔛⩹s₁✝ ⧉ s₂✝ ∧ 𝔛⩹s₃✝
11│6,7,8,10   │ ∀I                               │ │ │ 𝔛⩹s₁✝ → 𝔛⩹s₂✝ → 𝔛⩹s₃✝ → 𝔛⩹s₁✝ ⧉ s₂✝ ∧ 𝔛⩹s₃✝
12│5,11       │ lara.croft.inter.assoc.match_1 │ │ │ 𝔛⩹(s₁ ⧉ s₂) ⧉ s₃
13│5,12       │ ∀I                               │ │ 𝔛⩹s₁ ⧉ (s₂ ⧉ s₃) → 𝔛⩹(s₁ ⧉ s₂) ⧉ s₃
14│           │ x✝                               │ │ ┌ 𝔛⩹(s₁ ⧉ s₂) ⧉ s₃
15│           │ s₁                               │ │ │ ┌ 𝔛⩹s₁✝
16│           │ s₂                               │ │ │ ├ 𝔛⩹s₂✝
17│           │ s₃                               │ │ │ ├ 𝔛⩹s₃✝
18│16,17      │ And.intro                        │ │ │ │ 𝔛⩹s₂✝ ∧ 𝔛⩹s₃✝
19│15,18      │ And.intro                        │ │ │ │ 𝔛⩹s₁✝ ∧ 𝔛⩹s₂✝ ⧉ s₃✝
20│15,16,17,19│ ∀I                               │ │ │ 𝔛⩹s₁✝ → 𝔛⩹s₂✝ → 𝔛⩹s₃✝ → 𝔛⩹s₁✝ ∧ 𝔛⩹s₂✝ ⧉ s₃✝
21│14,20      │ lara.croft.inter.assoc.match_2 │ │ │ 𝔛⩹s₁ ⧉ (s₂ ⧉ s₃)
22│14,21      │ ∀I                               │ │ 𝔛⩹(s₁ ⧉ s₂) ⧉ s₃ → 𝔛⩹s₁ ⧉ (s₂ ⧉ s₃)
23│13,22      │ Iff.intro                        │ │ 𝔛⩹s₁ ⧉ (s₂ ⧉ s₃) ↔ 𝔛⩹(s₁ ⧉ s₂) ⧉ s₃
24│4,23       │ ∀I                               │ ∀ (𝔛 : α), 𝔛⩹s₁ ⧉ (s₂ ⧉ s₃) ↔ 𝔛⩹(s₁ ⧉ s₂) ⧉ s₃
25│24         │ ext                            │ s₁ ⧉ (s₂ ⧉ s₃) = (s₁ ⧉ s₂) ⧉ s₃
26│0,1,2,3,25 │ ∀I                               │ ∀ {α : Type u_1} (s₁ s₂ s₃ : 𝔖 α), s₁ ⧉ (s₂ ⧉ s₃) = (s₁ ⧉ s₂) ⧉ s₃
```

## Ryu's Intersection Distributivity Theorem [Street Fighter]

```
ryu.union.self : ∀ {α : Type u_1} (s : 𝔖 α), s ⛜ s = s

0 │      │ α         ├ Type u_1
1 │      │ s         ├ 𝔖 α
2 │      │ 𝔛         │ ┌ α
3 │      │ s         │ │ ┌ 𝔛⩹s✝ ⛜ s✝
4 │      │ id        │ │ │ 𝔛⩹s✝ → 𝔛⩹s✝
5 │3,4,4 │ Or.elim   │ │ │ 𝔛⩹s✝
6 │3,5   │ ∀I        │ │ 𝔛⩹s✝ ⛜ s✝ → 𝔛⩹s✝
7 │      │ s         │ │ ┌ 𝔛⩹s✝
8 │7     │ Or.inl    │ │ │ 𝔛⩹s✝ ∨ 𝔛⩹s✝
9 │7,8   │ ∀I        │ │ 𝔛⩹s✝ → 𝔛⩹s✝ ∨ 𝔛⩹s✝
10│6,9   │ Iff.intro │ │ 𝔛⩹s ⛜ s ↔ 𝔛⩹s
11│2,10  │ ∀I        │ ∀ (𝔛 : α), 𝔛⩹s ⛜ s ↔ 𝔛⩹s
12│11    │ ext     │ s ⛜ s = s
13│0,1,12│ ∀I        │ ∀ {α : Type u_1} (s : 𝔖 α), s ⛜ s = s
```

## Chun-Li's Intersection with Empty 𝔖 Theorem [Street Fighter]

```
chun.li.union.empty : ∀ {α : Type u_1} (s : 𝔖 α), s ⛜ ⦰ = s

0 │      │ α          ├ Type u_1
1 │      │ s          ├ 𝔖 α
2 │      │ 𝔛          │ ┌ α
3 │      │ s          │ │ ┌ 𝔛⩹s✝ ⛜ ⦰
4 │      │ id         │ │ │ 𝔛⩹s✝ → 𝔛⩹s✝
5 │      │ False.elim │ │ │ False → 𝔛⩹s✝
6 │3,4,5 │ Or.elim    │ │ │ 𝔛⩹s✝
7 │3,6   │ ∀I         │ │ 𝔛⩹s✝ ⛜ ⦰ → 𝔛⩹s✝
8 │      │ s          │ │ ┌ 𝔛⩹s✝
9 │8     │ Or.inl     │ │ │ 𝔛⩹s✝ ∨ 𝔛⩹⦰
10│8,9   │ ∀I         │ │ 𝔛⩹s✝ → 𝔛⩹s✝ ∨ 𝔛⩹⦰
11│7,10  │ Iff.intro  │ │ 𝔛⩹s ⛜ ⦰ ↔ 𝔛⩹s
12│2,11  │ ∀I         │ ∀ (𝔛 : α), 𝔛⩹s ⛜ ⦰ ↔ 𝔛⩹s
13│12    │ ext      │ s ⛜ ⦰ = s
14│0,1,13│ ∀I         │ ∀ {α : Type u_1} (s : 𝔖 α), s ⛜ ⦰ = s
```

## Princess Peach's Union Commutativity Theorem [Mario Kart 64]

```
princess.union.comm : ∀ {α : Type u_1} (s₁ s₂ : 𝔖 α), s₁ ⛜ s₂ = s₂ ⛜ s₁

0 │        │ α         ├ Type u_1
1 │        │ s₁        ├ 𝔖 α
2 │        │ s₂        ├ 𝔖 α
3 │        │ 𝔛         │ ┌ α
4 │        │ s         │ │ ┌ 𝔛⩹s₁ ⛜ s₂
5 │        │ Or.inr    │ │ │ 𝔛⩹s₁ → 𝔛⩹s₂ ∨ 𝔛⩹s₁
6 │        │ Or.inl    │ │ │ 𝔛⩹s₂ → 𝔛⩹s₂ ∨ 𝔛⩹s₁
7 │4,5,6   │ Or.elim   │ │ │ 𝔛⩹s₂ ⛜ s₁
8 │4,7     │ ∀I        │ │ 𝔛⩹s₁ ⛜ s₂ → 𝔛⩹s₂ ⛜ s₁
9 │        │ s         │ │ ┌ 𝔛⩹s₂ ⛜ s₁
10│        │ Or.inr    │ │ │ 𝔛⩹s₂ → 𝔛⩹s₁ ∨ 𝔛⩹s₂
11│        │ Or.inl    │ │ │ 𝔛⩹s₁ → 𝔛⩹s₁ ∨ 𝔛⩹s₂
12│9,10,11 │ Or.elim   │ │ │ 𝔛⩹s₁ ⛜ s₂
13│9,12    │ ∀I        │ │ 𝔛⩹s₂ ⛜ s₁ → 𝔛⩹s₁ ⛜ s₂
14│8,13    │ Iff.intro │ │ 𝔛⩹s₁ ⛜ s₂ ↔ 𝔛⩹s₂ ⛜ s₁
15│3,14    │ ∀I        │ ∀ (𝔛 : α), 𝔛⩹s₁ ⛜ s₂ ↔ 𝔛⩹s₂ ⛜ s₁
16│15      │ ext     │ s₁ ⛜ s₂ = s₂ ⛜ s₁
17│0,1,2,16│ ∀I        │ ∀ {α : Type u_1} (s₁ s₂ : 𝔖 α), s₁ ⛜ s₂ = s₂ ⛜ s₁
```

## GLaDOS ring of 𝔖 [Portal 1-2]

```
GLaDOS.ring.theorem1 : ∀ {α : Type u_1} (S₁ S₂ S₃ : 𝔖 α), GLaDOS.ring S₁ S₂ S₃ → S₁ ⧉ S₂ = S₂ ⧉ S₁

0│           │ α        ├ Type u_1
1│           │ S₁       ├ 𝔖 α
2│           │ S₂       ├ 𝔖 α
3│           │ S₃       ├ 𝔖 α
4│           │ s        ├ GLaDOS.ring S₁ S₂ S₃
5│4          │ And.left │ S₁ ⧉ S₂ = S₂ ⧉ S₁
6│0,1,2,3,4,5│ ∀I       │ ∀ {α : Type u_1} (S₁ S₂ S₃ : 𝔖 α), GLaDOS.ring S₁ S₂ S₃ → S₁ ⧉ S₂ = S₂ ⧉ S₁
```

