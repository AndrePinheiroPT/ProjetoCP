module Main where
import Cp
import List hiding (odds)
import Nat hiding (aux)
import LTree hiding (alpha)
import FTree
import Exp
-- import Probability
import Data.List hiding (find,transpose)
-- import Svg hiding (for,dup,fdiv)
import Control.Monad
import Control.Applicative hiding ((<|>))
import System.Process
import Data.Char
import Data.Matrix
import Control.Concurrent

main = undefined

-- (1) Datatype definition -----------------------------------------------------

data Vec a = V {outV :: [(a,Int)] } deriving (Ord)

inVec = V . inList

outVec = outList . outV

baseVec = baseList

-- (2) Ana + cata + hylo -------------------------------------------------------

-- (3) Map ---------------------------------------------------------------------

instance Functor Vec where
    fmap f = V . (map (f >< id)) . outV





instance (Show a, Ord a, Eq a) => Show (Vec a) where
    show = showbag . consol . outV  where
       showbag = concat .
                 (++ [" }"]) .  ("{ ":) . 
                 (intersperse " , ") .
                 sort . 
                 (map f) where f(a,b) = (show a) ++ " |-> " ++ (show b)

instance Applicative Vec where
    pure = return
    (<*>) = aap

instance (Eq a) => Eq (Vec a) where
   b == b' = (outV b) `lequal` (outV b')
           where lequal a b = isempty (a `ominus` b)
                 ominus a b = a ++ negb b
                 negb x = [(k,-i) | (k,i) <- x]

consol :: (Eq b) => [(b, Int)] -> [(b, Int)]
consol = filter nzero . map (id >< sum) . col where nzero(_,x)=x/=0

isempty :: Eq a => [(a, Int)] -> Bool
isempty = all (==0) . map snd . consol

col :: (Eq a, Eq b) => [(a, b)] -> [(a, [b])]
col x = nub [ k |-> [ d' | (k',d') <- x , k'==k ] | (k,d) <- x ] where a |-> b = (a,b)



vec = V [(X1,2),(X2,1),(X3,0)]

data X = X1 | X2 | X3 deriving (Eq,Show,Ord)

mat :: X -> Vec Bool
mat X1 = V [(False,1),(True,0)]
mat X2 = V [(False,-1),(True,-3)]
mat X3 = V [(False,2),(True,1)]

mat2 :: Vec (Vec Bool)
mat2 = V [
    (V [(False,1),(True,0)]  , 1),
    (V [(False,-1),(True,-3)], 1),
    (V [(False,2),(True,1)]  , 1)
    ]

neg :: Bool -> Vec Bool
neg False = V [(False,0),(True,1)]
neg True  = V [(False,1),(True,0)]




-- se for do msm valor, por exemplo [(True, x), (True, y)]
-- da show {True |-> x + y}

-- (>>=)  :: Vec a -> (a -> Vec b) -> Vec b

sumV :: Vec a -> Int -> Vec a
sumV v x = V (map (id >< (x+)) (outV v))

miu :: Vec (Vec a) -> Vec a
miu = V . concatMap (\(V ys, i) -> map (id >< (i+)) ys) . outV


instance Monad Vec where
   x >>= f = miu (fmap f x)
   return a = V [(a, 0)]  -- 0 como default

tt = (V [(True, 10), (False, 20)])
ttt = return tt :: Vec(Vec Bool)
