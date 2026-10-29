(* Copyright 2020 Frédéric Besson <frederic.besson@inria.fr> *)

From Stdlib Require Extraction.
From Stdlib Require Import Uint63.

Extract Constant int => "Uint63.t".
Extract Constant Uint63.ltb => "Uint63.lt".
Extract Constant Uint63.eqb => "Uint63.equal".
Extract Constant Uint63.add => "Uint63.add".
Extract Constant Uint63.lsl => "Uint63.l_sl".
Extract Constant Uint63.lsr => "Uint63.l_sr".
Extract Constant Uint63.land => "Uint63.l_and".
Extract Constant Uint63.lor => "Uint63.l_or".
Extract Constant Uint63.lxor => "Uint63.l_xor".
Extract Constant Uint63.sub => "Uint63.sub".
Extract Inductive bool => bool [ true false ].
Extract Inductive option => option [ Some None ].
Extract Inductive prod => "( * )" [ "(,)" ].
Extract Inductive list => list [ "[]" "(::)" ].

Require Import Cdcl.Formula.

Set Extraction Output Directory ".".
Extraction "prover.ml" hcons_bprover LitSet.is_empty LitSet.fold LitSet.mem.
