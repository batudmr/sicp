## Higher-order Procedures

- Higher-order procedures takes procedures as arguments or return a procedure as its value. It gives us the ability to use the procedures as data.
- Passing procedures as an argument to functions helps us to generalize patterns.
- Generalizing patterns helps us to prevent write the same pattern over and over. Higher-order procedures keeps the programs smaller and easy to read.
- (let bindings body) | binding = (name value-expression)
- Lambda expression is used to construct a procedure without defining name for it.
- (lambda (formal-parameters) (body))
- Lambda expression arguments can’t be used in function calling because the arguments only have meaning in lambda expression.
- Lambda expressions are also used to create local variables. **let** special form uses lambda expression to bind procedures as local variables.
- General form of let expression:  
  (let ((var1 exp1)  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(var2 exp2)  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(varN expN))  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(body))
- Same as:  
  ((lambda (var1 ...varN)  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;body)  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exp1  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;expN)
- The scope of variables defined in let expression is limited to the body of the let. It means if the same variable name is used outside of let expression, the value of the let variable cannot be used to specify the outer variable.
- First Class Data type can be:

  - The value of variable
  - An argument ot a procedure
  - The value returned by a procedure
  - A member of an aggregate
  - Anonymous

  ` Compound procedures are a crucial abstraction mechanism, because they permit us to express general methods of computing as explicit elements in our programming language. Now we've seen how higher-order procedures permit us to manipulate these general methods to create further abstractions. As programmers, we should be alert to opportunities to identify the underlying abstractions in our programs and to build upon them and generalize them to create more powerful abstractions. This is not to say that one should always write programs in the most abstract way possible; expert programmers know how to choose the level of abstraction appropriate to their task. But it is important to be able to think in terms of these abstractions, so that we can be ready to apply them in new contexts. The significance of higher-order procedures is that they enable us to represent these abstractions explicitly as elements in our programming language, so that they can be handled just like other computational elements.`
