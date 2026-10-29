Require Export Cdcl.Itauto.
From Stdlib Require Import Zify Lia.
(** itauto is using the `classic` axiom if available *)
#[export] Unset Itauto Use Implication Clauses.

Ltac lia := zify ; itauto (xlia zchecker).
