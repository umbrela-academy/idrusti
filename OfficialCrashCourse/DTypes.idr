module OfficialCrashCourse.DTypes

-- Data Types
public export 
data NatNum = Hero | Succ NatNum  -- natural numbers are either Zero or Successor of another natural number



public export 
data PolyList a = Nil | (::) a (PolyList a)  -- a is a type variable, a polymorphic list is either nil or is a value of type a 'cons'-ed to a polymorphic list of the same type

