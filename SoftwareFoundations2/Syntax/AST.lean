/-
  Abstract syntax of arithmetic expressions
-/
inductive AExp where
  | ANum   (n : Nat)
  | AId    (x : String)
  | APlus  (a1 a2 : AExp)
  | AMinus (a1 a2 : AExp)
  | AMult  (a1 a2 : AExp)

/-
  Abstract syntax of boolean expressions
-/
inductive BExp where
  | BTrue
  | BFalse
  | BEq    (a1 a2 : AExp)
  | BNeq   (a1 a2 : AExp)
  | BLe    (a1 a2 : AExp)
  | BGt    (a1 a2 : AExp)
  | BNot   (b : BExp)
  | BAnd   (b1 b2 : BExp)

/-
  Abstract syntax of commands
-/
inductive Com where
  | CSkip
  | CAsgn  (x : String) (a : AExp)
  | CSeq   (c1 c2 : Com)
  | CIf    (b : BExp) (c1 c2 : Com)
  | CWhile (b : BExp) (c : Com)
