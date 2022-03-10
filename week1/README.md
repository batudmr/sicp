# Functional programming (Week 1) (SICP CH 1.1)

- Functions are only representations of procedures for computers.

- When functions are pure, meaning they are not dependent on anything, they produce the same results.

- **f(x) = 2x+6** and **f(x) = 2(x+3)** are the same functions. However, they are different procedures because they are evaluated differently.

- Substitution model is a way to think about the evaluation of a procedure. A procedure might have smaller subprocedures. In order to evaluate main procedure, the operators of subprocedures must be evaluated, then the subprodecure operands must be evaluated to apply the subprocedure. The same process is applied for other procedures until it produces a result. The order of evaluating operands and operators matters when the prodecures are not pure meaning the expressions depend on external environment.

- **Applicative order evaluation** evaluates the operator and operands then apply the procedures. Lisp interpreter uses applicative order evaluation.

- **Normal order evaluation** substitutes (plugs in) the operand expressions until the expressions involves only primitive operators. (Fully expands the functions until all the operands are primitive)

- Applicative order evaluation is mostly efficient because it sometimes avoids the multiple evaluations of some expression which can occur if the normal-order evaluation if used. Also, normal-order evaluation can be complicated to deal with when the procedures that uses models other than substitution model.

- For some cases, we need a construct to take different actions for different cases. This construct is called cases analysis and represented as cond operator in Lisp.

- **cond** operator has pair of expressions called clauses. First expression in each pair is called _predicate_ which its value interpreted as either true and false. Conditional expression evaluates each predicate sequencially until it founds whose value is true and returns its corresponding consequent expression. cond is _undefined_ if none of the predicates are true. Using else in this case let us return a value besides undefined if none of the predicates are true.

- Functional programming protects you from having to think about what going on inside of the computer.
