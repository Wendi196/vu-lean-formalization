# VU Lean Formalization

This is a small Lean 4 / Mathlib project.

## Aim

The aim is to create a compiling Lean project that records my first acquaintance with Lean 4 and Mathlib. The project is not intended to present a substantial formalization result. It is a beginner-level artifact.

## Mathematical motivation

The toy model is motivated by valuation data appearing in Newton-polygon arguments from my earlier work on $p$-adic methods and Schur's theorem.

One often records data of the form $(i, v_i)$, where $i$ is a coefficient index and $v_i$ is a integral valuation. The project, however, does not yet use Mathlib's genuine $p$-adic valuation infrastructure.

## What currently works

The file `VULeanFormalization/ValuationPoints.lean` currently contains:

- a structure `ValuationPoint` with fields `index : Nat` and `value : Int`;
- a function `indices` extracting coefficient indices from a list of valuation points;
- a lemma `length_indices` proving that extracting indices preserves list length;
- a predicate `NonnegativeValuations`;
- a lemma `nonnegative_empty` proving that the empty list satisfies this predicate.

## What is not formalized here

This repository does not formalize:

- genuine $p$-adic valuations;
- Newton polygons as lower convex hulls;
- Newton polygon slopes;
- Schur's theorem;
- root valuation arguments.

These are deliberately outside the current scope.

## Status

This is a work in progress.
