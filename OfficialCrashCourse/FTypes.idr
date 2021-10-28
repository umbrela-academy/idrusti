module OfficialCrashCourse.FTypes

import OfficialCrashCourse.DTypes

-- Function Types

addition : NatNum -> NatNum -> NatNum
addition Hero y = y  -- adding a Nat to Zero yields the same Nat
addition (Succ x) y = Succ (addition x y)
-- adding a Successor of a Nat to another Nat
-- is the same as Successor of addition of those same Nats

multiplication : NatNum -> NatNum -> NatNum
multiplication Hero y = Hero
multiplication (Succ x) y = addition y (multiplication x y)

exponentiation : NatNum -> NatNum -> NatNum
exponentiation _ Hero = Succ Hero
exponentiation x (Succ Hero) = x
exponentiation x (Succ y) = multiplication x (exponentiation x y)


-- where clause for local definitions
reversal : List a -> List a
reversal xs = revAcc [] xs where
    revAcc: List a -> List a -> List a 
    revAcc acc [] = acc
    revAcc acc (x :: xs) = revAcc (x :: acc) xs

-- type constraint for equality check guarantee
zipEq : Eq a => List a -> List a -> Bool
zipEq [] [] = True
zipEq [] (x :: xs) = False
zipEq (x :: xs) [] = False
zipEq (x :: xs) (y :: ys) = if x == y then zipEq xs ys else False

-- more flexible version of zipEq
zipWith : Ord a => (a -> a -> Bool) -> List a -> List a -> Bool
zipWith f [] [] = True
zipWith f [] xs = False
zipWith f xs [] = False
zipWith f (x :: xs) (y :: ys) = if f x y then zipWith f xs ys else False

equal: Eq a => a -> a -> Bool
equal x y = x == y

isNonEmpTea : List a -> Bool
isNonEmpTea [] = False
isNonEmpTea _ = True

-- List String = [], List Num = []
headElem: List a -> Maybe a  -- such that a is the first element of the list
headElem [] = Nothing
headElem (x :: xs) = Just x

listLen : List a -> Integer
listLen [] = 0
listLen (x :: xs) = 1 + listLen xs

lastElem: List a -> Maybe a
lastElem [] = Nothing
lastElem (x :: xs) = if (listLen xs > 0) then lastElem xs else Just x 
-- to optimize, use if xs == [] then ...
-- adjusting the value to some number other than 0 e.g. to get the elem at nth place needs some thought to be put into it 
-- think of the extra checks you might be missing regarding the list index and being within the bounds

isPalindrome : Ord a => List a -> Bool
isPalindrome [] = True
isPalindrome xs = zipWith equal xs (reversal xs) -- or zipEq xs (reversal xs)

gt: Ord a => a -> a -> Bool
gt x y = x > y

-- Given two lists, find out whether every element of
-- first list is greater than the corresponding element of the second list
isItemwiseGreater : Ord a => List a -> List a -> Bool
isItemwiseGreater [] [] = True
isItemwiseGreater xs ys = zipWith gt xs ys