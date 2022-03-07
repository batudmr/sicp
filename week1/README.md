# Functional programming (Week 1) (SICP CH 1.1)

- Functions are only representations of procedures for computers.

- When functions are pure, meaning they are not dependent on anything, they produce the same results.

- **f(x) = 2x+6** and **f(x) = 2(x+3)** are the same functions. However, they are different procedures because they are evaluated differently.

- When function expressions are evaluated, evaluation order matters while the functions are not pure.

- **Applicative order evaluation** evaluate the arguments then apply the procedures. Lisp interpreter uses applicative order evaluation.

- **Normal order evaluation** substitutes the operand expressions until the expressions involves only primitive operators. (Fully expands the functions until all the operands are primitive)

- Applicative order evaluation is mostly efficient because the expressions won’t be evaluated in contrast to normal order evaluation.

- For some cases, we need a construct to take different actions for different cases. This construct is called cases analysis and represented as cond operator in Lisp.

- **cond** operator has pair of expressions called clauses. First expression in each pair is called _predicate_ which its value interpreted as either true and false. Conditional expression evaluates each predicate sequencially until it founds whose value is true and returns its corresponding consequent expression. cond is _undefined_ if none of the predicates are true. Using else in this case let us return a value besides undefined if none of the predicates are true.

- Functional programming protects you from having to think about what going on inside of the computer.
