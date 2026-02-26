import SoftwareFoundations2.Syntax

#check ⟨{ 2 + 3 }⟩

/--
    A `machine state` (or just `state`) represents the current values
      of all variables at some point in the execution of a program.

    For simplicity, we make the following assumptions:
    - all variables are global;
    - variables only hold numbers;
    - the state is defined for _all_ variables, even though any given
      program is only able to mention a finite number of them.

    Because each variable stores a natural number, we can represent the state
      as a function from `Strings` (variable names) to `Nat`, and will use `0` as
      default value in the store.
-/
def State : Type := String → Nat

instance : Inhabited State where
  default := λ _ => 0

/--
  Evaluating an arithmetic expression in a given state `σ` produces a number.
-/
def AExp.eval (σ : State) : AExp → Nat
  | ANum n       => n
  | AId x        => σ x
  | APlus a1 a2  => a1.eval σ + a2.eval σ
  | AMinus a1 a2 => a1.eval σ - a2.eval σ
  | AMult a1 a2  => a1.eval σ * a2.eval σ

/--
  Evaluating a boolean expression in a given state `σ` produces a boolean.
-/
def BExp.eval (σ : State) : BExp → Bool
  | BTrue      => true
  | BFalse     => false
  | BEq a1 a2  => a1.eval σ == a2.eval σ
  | BNeq a1 a2 => a1.eval σ != a2.eval σ
  | BLe a1 a2  => a1.eval σ <= a2.eval σ
  | BGt a1 a2  => a1.eval σ > a2.eval σ
  | BNot b     => !b.eval σ
  | BAnd b1 b2 => b1.eval σ && b2.eval σ
