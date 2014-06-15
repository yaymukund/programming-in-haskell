-- 1. What are the types of the following values?

-- [’a’,’b’,’c’]
-- [Char]

-- (’a’, ’b’, ’c’)
-- (Char, Char Char)

-- [ (False , ’O’), (True , ’1’) ]
-- [(Bool, Char)]

-- ([False,True],[’0’,’1’])
-- ([Bool], [Char])

-- [ tail , init , reverse ]
-- [Function]

-- 2. What are the types of the following functions?

second :: [a] -> a
second xs = head (tail xs )

swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

pair :: a -> b -> (a, b)
pair x y = (x, y)

double :: Num a => a -> a
double x = x*2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)

-- 3. Check your answers to the preceding two questions using Hugs.
--
--    Okay!

-- 4. Why is it not feasible in general for function types to be instances of
--    the Eq class? When is it feasible? Hint: two functions of the same type
--    are equal if they always return equal results for equal arguments.
--
--    Their results may not be instances of the Eq class.
