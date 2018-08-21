(* A very simple example to prove De morgan's law *)

(* We will use very simple constructs in getting a basic definition
   and then their combination to prove the law. 
*)

(* Defines component of a boolean *)
Definition comp (b:bool) : bool :=
  match b with
  | true => false
  | false => true
  end.

(* Defines ADDing of a boolean values *)
Definition and (b1:bool) (b2:bool) : bool :=
  match b1 with
  | true => b2
  | false => false
  end.

(* Defines ORing of a boolean values *)
Definition or (b1:bool) (b2:bool) : bool :=
  match b1 with
  | true => true
  | false => b2
  end.

Theorem De_morgan : forall a b:bool,  comp( or a b ) = and (comp a) (comp b).
Proof. intros a b . (* introduce a and b *)
       destruct a.  (* assert values for a, in this case one true and one false value is asserted *)
       simpl.       (* Simplify the expression using those values, It also simplifies sub tasks *)
       reflexivity. (* Apply reflexivity *)
       simpl.       (* Simplify again *)
       reflexivity. (* Apply Reflexivity again*)
Qed.
