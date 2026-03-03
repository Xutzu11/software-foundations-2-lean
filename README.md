# Software Foundations V2 in Lean

Welcome! This repository focuses on porting [Software Foundations Vol. 2: Programming Language Foundations](https://softwarefoundations.cis.upenn.edu/plf-current/index.html), to [Lean 4](https://lean-lang.org/).

We do this as lab work for the **Program Verification** master's course at the [Faculty of Mathematics & Computer Science, Univ. of Bucharest](https://fmi.unibuc.ro/).

### Building
Before you start, make sure you have [Lean installed](https://lean-lang.org/install/) in your environment.

1. Clone this repository.
2. From your cloned directory, run `lake exe cache get`. This will fetch a compressed version of the `Mathlib` library, which would normally be huge.
3. Run `lake build`.

### Submitting solutions
If you want to contribute solutions to the statements marked with `sorry`:
1. Create a branch with your code, by:
``` git checkout -b <branch> ```.
2. Fill out the sorried proofs! Note that some proofs are optional; you may skip those.
3. When you are done, commit your changes; then push your branch by ``` git push -u origin <branch> ```.
4. On GitHub, create a PR with your changes. If you provided correct proofs to all statements, your PR will receive a green checkmark and will be able to be merged!