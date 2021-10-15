module OfficialCrashCourse.FTypes

import OfficialCrashCourse.DTypes

-- Function Types

addition : NatNum -> NatNum -> NatNum
addition Zero y = y  -- adding a Nat to Zero yields the same Nat
addition (Succ x) y = Succ (addition x y)
-- adding a Successor of a Nat to another Nat
-- is the same as Successor of addition of those same Nats

multiplication: NatNum -> NatNum -> NatNum
multiplication Zero y = Zero
multiplication (Succ x) y = addition y (multiplication x y)


-- where clause for local definitions
reversal : List a -> List a
reversal xs = revAcc [] xs where
    revAcc: List a -> List a -> List a 
    revAcc acc [] = acc
    revAcc acc (x :: xs) = revAcc (x :: acc) xs

zipEq : Eq a => List a -> List a -> Bool
zipEq [] [] = True
zipEq [] (x :: xs) = False
zipEq (x :: xs) [] = False
zipEq (x :: xs) (y :: ys) = if x == y then zipEq xs ys else False

isPalindrome : Eq a => List a -> Bool
isPalindrome [] = True
isPalindrome xs = zipEq xs (reversal xs)