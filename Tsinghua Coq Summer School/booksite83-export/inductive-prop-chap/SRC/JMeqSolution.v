Require Import Bvector.
Require Import JMeq.

Section Null_vectors.
 Variable A:Set.

 Fact F1 : forall (n:nat)(v:vector A n), n=0 -> JMeq v (Vnil A).
 Proof.
  intros n  v; case v.
  reflexivity.
  discriminate 1.
 Qed.


 Lemma V0_JMeq_Vnil:  forall (v:vector A 0), JMeq v (Vnil A).
 Proof.
  intro v; apply F1.
  trivial.
 Qed.

 Lemma  V0_eq_Vnil : forall (v:vector A  0), eq v (Vnil A).
 Proof.
  intros  v.
  apply JMeq_eq.
  apply V0_JMeq_Vnil.
 Qed.

End Null_vectors.

