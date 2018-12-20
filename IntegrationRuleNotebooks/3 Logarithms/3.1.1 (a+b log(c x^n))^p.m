(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[Log[c_.*x_^n_.],x_Symbol] :=
  x*Log[c*x^n] - n*x /;
FreeQ[{c,n},x]


(* ::Code:: *)
Int[(a_.+b_.*Log[c_.*x_^n_.])^p_.,x_Symbol] :=
  x*(a+b*Log[c*x^n])^p - b*n*p*Int[(a+b*Log[c*x^n])^(p-1),x] /;
FreeQ[{a,b,c,n},x] && GtQ[p,0] && IntegerQ[2*p]


(* ::Code:: *)
Int[(a_.+b_.*Log[c_.*x_^n_.])^p_,x_Symbol] :=
  x*(a+b*Log[c*x^n])^(p+1)/(b*n*(p+1)) - 1/(b*n*(p+1))*Int[(a+b*Log[c*x^n])^(p+1),x] /;
FreeQ[{a,b,c,n},x] && LtQ[p,-1] && IntegerQ[2*p]


(* ::Code:: *)
Int[1/Log[c_.*x_],x_Symbol] :=
  LogIntegral[c*x]/c /;
FreeQ[c,x]


(* ::Code:: *)
Int[(a_.+b_.*Log[c_.*x_^n_.])^p_,x_Symbol] :=
  1/(n*c^(1/n))*Subst[Int[E^(x/n)*(a+b*x)^p,x],x,Log[c*x^n]] /;
FreeQ[{a,b,c,p},x] && IntegerQ[1/n]


(* ::Code:: *)
Int[(a_.+b_.*Log[c_.*x_^n_.])^p_,x_Symbol] :=
  x/(n*(c*x^n)^(1/n))*Subst[Int[E^(x/n)*(a+b*x)^p,x],x,Log[c*x^n]] /;
FreeQ[{a,b,c,n,p},x]


