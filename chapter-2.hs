-- 1. Parenthesise the following arithmetic expressions:
--
--    (2^3) ∗ 4
--    (2∗3) + (4∗5)
--    (2+3) ∗ (4^5)

-- 2. Work through the examples from this chapter using Hugs.
--
--    Okay.

-- 3. The script below contains three syntactic errors. Correct these errors and
--    then check that your script works properly using Hugs.

f :: Int
f = a `div` (length xs)
  where
    a  = 10
    xs = [1,2,3,4,5]

-- 4. Show how the library function last that selects the last element of a
--    non-empty list could be defined in terms of the library functions
--    introduced in this chapter. Can you think of another possible definition?

tail' :: [a] -> a
tail' (x:xs)
  | null xs   = x
  | otherwise = tail' xs

-- 5. Show how the library function init that removes the last element from a
--    non-empty list could similarly be defined in two different ways.

init' :: [a] -> [a]
init' (x:xs)
  | null xs = []
  | otherwise = x : (init' xs)
