Require Import Arith.

Definition zero_one_dec : forall n:nat, n<=1 -> {n=0}+{n=1}.
 simple destruct n.
 left; auto.
 simple destruct n0.
 right; auto.
 intros  n1 H1; absurd (S (S n1) <= 1); auto with arith.
Defined.

Definition div2_mod2 : 
  forall n:nat, {q:nat & {r:nat | n = 2*q + r /\ r <= 1}}.
 induction n.
 exists 0; exists 0; simpl; auto with arith.
 case IHn; intros q' Hq'; case Hq'; intros r' [H1 H2]; simpl.
 case (zero_one_dec  r' H2); intro H3.
 Require Import Omega.
 exists q'; exists 1; omega. 
 exists (S q'); exists 0; omega.
Defined.


