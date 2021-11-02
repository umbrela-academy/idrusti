module Graphiti.Egor

%default total

interface PreEgor a where
    leq : a -> a -> Bool
    pEgRefl : { x : a } -> x `leq` x = True
    pEgTrans : { x, y, z : a } ->
        x `leq` y = True ->
            y `leq` z = True ->
                x `leq` z = True 

interface SemEgor a where
    pls : a -> a -> a
    plsNeutral : a
    mlt : a -> a -> a
    mltNeutral : a

interface SemEgorGroup a where
    binop : a -> a -> a

interface AditiSemEgorGroup a where
    plus : a -> a -> a

interface MultiSemEgorGroup a where
    mult : a -> a -> a

interface SemEgorGroup a => MonoEgor a where
    neutral : a

interface AditiSemEgorGroup a => AditiMonoEgor a where
    pneutral : a 

interface MultiSemEgorGroup a => MultiMonoEgor a where
    mneutral : a