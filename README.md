# VU Lean Formalization

This is a small Lean 4 / Mathlib project prepared as part of my application to the VU Amsterdam PhD position in Number Theory and Formalization.

## Aim

The aim is to create a modest, compiling Lean project that records concrete first contact with Lean 4 and Mathlib.

The project is not intended to present a substantial formalization result. It is a beginner-level artifact showing that I can set up a Mathlib project, define a small mathematical object, prove a few simple lemmas, and explain the current scope honestly.

## Mathematical motivation

The toy model is motivated by valuation data appearing in Newton-polygon arguments from my earlier work on $p$-adic methods and Schur's theorem.

Informally, one often records data of the form $(i, v_i)$, where $i$ is a coefficient index and $v_i$ is a valuation-like integer. In this repository, this is represented only as finite list data; the project does not yet use Mathlib's genuine $p$-adic valuation infrastructure.

## What currently works

The file `VULeanFormalization/ValuationPoints.lean` currently contains:

- a structure `ValuationPoint` with fields `index : Nat` and `value : Int`;
- a function `indices` extracting coefficient indices from a list of valuation points;
- a lemma `length_indices` proving that extracting indices preserves list length;
- a predicate `NonnegativeValuations`;
- a lemma `nonnegative_empty` proving that the empty list satisfies this predicate.

The project builds with:

```bash
lake build
```

## What is not formalized here

This repository does not formalize:

- genuine $p$-adic valuations;
- Newton polygons as lower convex hulls;
- Newton polygon slopes;
- Schur's theorem;
- root valuation arguments.

These are deliberately outside the current scope.

## What I learned

Working on this small project gave me concrete practice with:

- creating and building a Lean 4 / Mathlib project using Lake;
- writing a small mathematical structure in Lean;
- using list operations and simple tactic-mode proofs;
- seeing the gap between an informal mathematical idea and a usable formal definition;
- keeping formalization claims precise and modest.

## Status

This is a work in progress. The current goal is a small, honest, compiling artifact rather than a mature mathematical formalization.