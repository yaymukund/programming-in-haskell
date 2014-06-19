import Prelude hiding ((^))
-- 1. Using library functions, define a function:
--
--      halve :: [ a ] → ([ a ], [ a ])
--
--    that splits an even-lengthed list into two halves. For example:
--
--      > halve [1,2,3,4,5,6]
--      => ([1, 2, 3], [4, 5, 6])

halve :: [a] -> ([a], [a])
halve items = splitAt half items
  where
    half = (length items) `div` 2

-- 2. Consider a function safetail :: [ a ] → [ a ] that behaves as the library
--    function tail, except that safetail maps the empty list to itself,
--    whereas tail produces an error in this case. Define safetail using:
--
--    (a) a conditional expression;

safetail :: Eq a => [a] -> [a]
safetail xs = if xs == [] then [] else tail xs

--    (b) guarded equations;

safetail' :: Eq a => [a] -> [a]
safetail' xs
  | xs == []  = []
  | otherwise = tail xs

--    (c) pattern matching.

safetail'' :: Eq a => [a] -> [a]
safetail'' [] = []
safetail'' xs = tail xs

-- 3. In a similar way to ∧, show how the logical disjunction operator ∨ can be
--    defined in four different ways using pattern matching.
--
--    These are commented out of necessity. Haskell won't let us redefine a
--    function.
--
--    (∨) :: Bool -> Bool -> Bool
--    False ∨ False = False
--    True ∨ True = True
--    True ∨ False = True
--    False ∨ True = True
--
--    (∨) :: Bool -> Bool -> Bool
--    False ∨ False = False
--    _ ∨ _ = True
--
--    (∨) :: Bool -> Bool -> Bool
--    False ∨ b = b
--    True ∨ _ = True

--    (∨) :: Bool -> Bool -> Bool
--    a ∨ b
--      | a == True = True
--      | b == True = True
--      | otherwise = False
--
-- 4. Redefine the following version of the conjunction operator using
--    conditional expressions rather than pattern matching:
--
--    True ∧ True = True
--    _ ^ _       = False

a ^ b = if a && b then True else False

-- 5. Do the same for the following version, and note the difference in the
-- number of conditional expressions required:
--
-- True ∧ b = b
-- False ∧ _ = False

a ∧ b = if a then b else False

-- 6. Show how the curried function definition:
--
--    mult x y z = x ∗ y ∗ z
--
--    can be understood in terms of lambda expressions.

mult :: Int -> Int -> Int -> Int
mult = \a -> (\b -> (\c -> a * b * c))
