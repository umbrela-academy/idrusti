module Graphiti.BTree

-- shows a basic Binary Tree with insert, toList and fromList ops
-- shows how to reverse/invert it without using a stack or a queue

%hide toList -- we do not want the standard library to pollute our definitions here

public export
data BTree a = Leaf | Node (BTree a) a (BTree a)

data LR = L | R

inserter : Ord a => a ->  BTree a -> LR -> BTree a
inserter x Leaf _ = Node Leaf x Leaf
inserter x (Node l y r) L = if (x < y) then (Node (inserter x l L) y r)
                                    else (Node l y (inserter x r L))
inserter x (Node l y r) R = if (x > y) then (Node (inserter x l R) y r)
                                    else (Node l y (inserter x r R))

export
insert : Ord a => a -> BTree a -> BTree a
insert x t = inserter x t L

invInsert : Ord a => a -> BTree a -> BTree a
invInsert x t = inserter x t R

export
toList : BTree a -> List a
toList Leaf = []
toList (Node l y r) = BTree.toList l ++ (y :: BTree.toList r)

export
fromList : Ord a => List a -> BTree a
fromList [] = Leaf
fromList (x :: xs) = BTree.insert x (BTree.fromList xs)

fromListInv : Ord a => List a -> BTree a
fromListInv [] = Leaf
fromListInv (x :: xs) = invInsert x (fromListInv xs)

export
reverseList : List a -> List a
reverseList xs = revAcc [] xs where
    revAcc : List a -> List a -> List a
    revAcc acc [] = acc
    revAcc acc (y :: ys) = revAcc (y :: acc) ys

export
revBTree : Ord a => BTree a -> BTree a
revBTree Leaf = Leaf
revBTree node = fromList ( BTree.reverseList (BTree.toList node) )


export
reinvBTree : Ord a => BTree a -> BTree a
reinvBTree Leaf = Leaf
reinvBTree node = fromListInv (toList node)



-- shows a proof that inversion of inversion is the original
-- i.e. inv . inv = id

invOfInv : Ord a => (bt: BTree a) -> reinvBTree (reinvBTree bt) = bt
invOfInv Leaf = Refl
invOfInv (Node x y z) = ?hole