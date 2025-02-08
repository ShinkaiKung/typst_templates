#import math
#import "@preview/cetz:0.3.2": *
#import "@preview/cetz-plot:0.1.1": *
#import "../lib.typ": *

#let title = [
  Microeconomics
]

#align(center, text(17pt)[
  *#title*
])

// #show: content => columns(2, content)s

= 1. Consumer Theory

Four building block of consumer choice:
+ the consumption set
+ the feasible set
+ the preference relation
+ the behavioural assumption

#let consumption_set = $X$
#let consumer_plan = $math.upright(bold(x))$
#let rr_positive = $RR^n_+$

*Consumption set*: Let #consumption_set represent *Consumption set*, let $x_i in RR$ represent the number of units of good $i$, let $#consumer_plan = (x_1,...,x_n)$ represent a consumer plan. A consumer_plan $#consumer_plan in X$ can be represented by a point $#consumer_plan in #rr_positive$.

*Assumption 1.1*
_
 The minimal requirements on the consumption set are
 + $#consumption_set subset.eq #rr_positive$.
 + #consumption_set is closed.
 + #consumption_set is convex.
 + $math.upright(bold(0)) in #consumption_set$
_

#let feasible_set = $B$
*Feasible set*: Let #feasible_set represent *Feasible set*, we have $#feasible_set subset #consumption_set$.

*Axioms of consumer choice*

#lorem(200)

#canvas({
  import draw: *
  circle((0,0), anchor: "west")

  fill(red)
  stroke(none)
  circle((0,0), radius: 0.3)
})


#canvas({
  import draw: *
  line((0,0), (x:7))
  line((0,0), (y:5))
  line((1,1), (2,5))
  line((-1,1), (2,5))
  line((1,-1), (2,5))
})

中文怎么样？

#canvas({
  import draw: *
  grid((0,0), (3,2), help-lines: true)
})


#definition(
  "Stokes' theorem",
  // footer: "Information extracted from a well-known public encyclopedia"
)[
  Let $Sigma$ be a smooth oriented surface in $RR^3$ with boundary $diff Sigma
  equiv Gamma$. If a vector field $iboxed(bold(F)(x,y,z))=(F_x (x,y,z), F_y (x,y,z),
  F_z (x,y,z))$ is defined and has continuous first order partial derivatives
  in a region containing $Sigma$, then

  $ integral.double_Sigma (bold(nabla) times bold(F)) dot bold(Sigma) =
  dboxed(integral.cont_(diff Sigma) bold(F) dot dif bold(Gamma)) $ 
] <stokes>

#theorem(
  "Stokes' theorem",
  footer: "Information extracted from a well-known public encyclopedia"
)[
  Let $Sigma$ be a smooth oriented surface in $RR^3$ with boundary $diff Sigma
  equiv Gamma$. If a vector field $iboxed(bold(F)(x,y,z))=(F_x (x,y,z), F_y (x,y,z),
  F_z (x,y,z))$ is defined and has continuous first order partial derivatives
  in a region containing $Sigma$, then

  $ integral.double_Sigma (bold(nabla) times bold(F)) dot bold(Sigma) =
  dboxed(integral.cont_(diff Sigma) bold(F) dot dif bold(Gamma)) $ 
] <stokes>

#note(
  "Stokes' theorem",
  // footer: "Information extracted from a well-known public encyclopedia"
)[
  Let $Sigma$ be a smooth oriented surface in $RR^3$ with boundary $diff Sigma
  equiv Gamma$. If a vector field $iboxed(bold(F)(x,y,z))=(F_x (x,y,z), F_y (x,y,z),
  F_z (x,y,z))$ is defined and has continuous first order partial derivatives
  in a region containing $Sigma$, then

  $ integral.double_Sigma (bold(nabla) times bold(F)) dot bold(Sigma) =
  dboxed(integral.cont_(diff Sigma) bold(F) dot dif bold(Gamma)) $ 
] <stokes>

#note(
  "Stokes' theorem",
  // footer: "Information extracted from a well-known public encyclopedia"
)[
  Let $Sigma$ be a smooth oriented surface in $RR^3$ with boundary $diff Sigma
  equiv Gamma$. If a vector field $iboxed(bold(F)(x,y,z))=(F_x (x,y,z), F_y (x,y,z),
  F_z (x,y,z))$ is defined and has continuous first order partial derivatives
  in a region containing $Sigma$, then

  $ integral.double_Sigma (bold(nabla) times bold(F)) dot bold(Sigma) =
  dboxed(integral.cont_(diff Sigma) bold(F) dot dif bold(Gamma)) $ 
] <stokes>

