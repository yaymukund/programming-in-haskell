-- 1. Give another possible calculation for the result of double (double 2).
--
-- double (2 + 2)
-- (2 + 2) + (2 + 2)
-- 4 + 4
-- 8

-- 2. Show that sum [x]=x for any number x.
--
-- sum [x]
-- sum x:[]
-- x + (sum [])
-- x + 0
-- x

-- 3. Define a function product that produces the product of a list of
--    numbers, and show using your definition that product [ 2, 3, 4 ] = 24.

product' :: [Int] -> Int
product' []   = 1
product' (x:xs) = x * (product xs)

problem3 = do
  print (product' [2,3,4])

-- 4. How should the definition of the function qsort be modified so that it
--    produces a reverse sorted version of a list?

qsort' :: [Int] -> [Int]
qsort' [] = []
qsort' (x:xs) = (qsort' greater) ++ [x] ++ (qsort' lesser)
  where
    greater = [ i | i <- xs, i >= x ]
    lesser = [ i | i <- xs, i < x ]

-- 5. What would be the effect of replacing ≤ by < in the definition of qsort?
--    Hint: consider the example qsort [ 2, 2, 3, 1, 1 ].
--
-- It would remove dupes.
