module OfficialCrashCourse.DepTypes

import Data.Vect

isSingleton : Bool -> Type
isSingleton True = Nat
isSingleton False = List Nat

mkSingle : (x : Bool) -> isSingleton x
mkSingle True = 0
mkSingle False = []


-- Vect is like a List having length Nat
data Vector : Nat -> Type -> Type where
    NilVec  : Vector Z a
    (::) : a -> Vector k a -> Vector (S k) a

-- Defining a set of Nat many elements like above
data FinSet : Nat -> Type where
    FZ : FinSet (S k) -- zeroth element
    FS : FinSet k -> FinSet (S k) -- k + 1 th element from S k th element


-- using implicit arguments and proofs
appVec: Ord a => Vector n a -> Vector m a -> Vector (n + m) a
appVec NilVec vecm = vecm
appVec {n} vecn NilVec = rewrite plusZeroRightNeutral n in vecn -- left + 0 = left
appVec {n=(S n)} {m=(S m)} ( x :: xs) (y :: ys) = 
    rewrite sym $ plusSuccRightSucc n m in -- using sym to flip args, S (left + right) = left + S right
    x :: y :: (appVec xs ys)