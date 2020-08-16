--This is a comment
--This program follows the haskell tutorial from Derek Banas on Youtube

{-

This is a multi line comment

-}

--import modules...These are like libraries
import Data.List
import System.IO

--Int is a data type in Haskell
--Max val for Int is 2^63
--Min val for Int is -2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

--You can declare a permanent value variable...
always5 :: Int
always5 = 5

--sum function
--sum of 1-1000
sumOfNums = sum [1..1000]

--prefix operator(operator goes before operands)
modExample = mod 5 4 

--in-fix operator(using back-ticks to infix the operator between the 2 operands)
modExample2 = 5 `mod` 4

--To add negative numbers in Haskell you have to use brackets.
negExample = 3 + (-2)


--Square root function
--sqrt uses floats
--First we must convert Int to Float
num9 = 9 :: Int
--Use fromIntegral to convert from Int to Float
sqrtOf9 = sqrt(fromIntegral num9)


--You can truncate vals by using truncate
truncateVal = truncate 9.999999999

--Get pi by using pi command.
piVal = pi

--Rounding a value, this rounds to the nearest whole number:
roundVal = round 9.9999999

--Floor, this rounds down to the closest whole number:
floorVal = floor 9.9999999

--Ceiling, this always rounds up to the nearest whole number:
ceilingVal = ceiling 0.000001


--We also have all the logical operators:

--And'ing values
trueAndFalse = True && False

--Or'ing values
trueOrFalse = True || False

--Not'ing values
notTrue = not(True)

--Declaring a list in Haskell:
primeNumbers = [1,2,3,5,7,11]

--Concatenating a list:
morePrime = primeNumbers ++ [13,17,19,23,29]

--Construct operator(:) to combine numbers together into a list...
--This is very important, do not forget it!
favNums = 2:7:21:66:[]

--List of lists
multiList = [[1,2,3],[7,8,9]]

--Using the constructor operator(:) to add 2 to the start of a list.
morePrime2 = 2:morePrime

--Getting the length of a list with length function.
lenPrime = length morePrime2


--Quick note on Haskell programming...
--If you keep getting not in scope error this just means the compiler cannot find the 
--item you are referencing, this is because the compiler is very strict. Just be aware of this.


--Reverse a list..
revPrime = reverse primeNumbers

--Check if a list is empty
isListEmpty = null primeNumbers

--Get a given index of a list(in this case the second, index 1(0,1,2,3))
secondPrime = primeNumbers !! 1

--Get the first value of a list..
firstPrime = head primeNumbers

--Get the last value of a list...
lastPrime = last primeNumbers

--Get everything but the last value of a list...
primeInit = init primeNumbers

--Get the first 3 values of a list...
take3Primes = take 3 primeNumbers

--Get the list minus the first 3 values...
dropped3Primes = drop 3 primeNumbers

--Check if a value is an element of a list...
is7InList = 7 `elem` primeNumbers

--Get the maximum of a list...
maximumPrime = maximum primeNumbers

--Get the minimum of a list...
minimumPrime = minimum primeNumbers

--Get the product of a list...
newList = [2,3,4]
prodNewList = product newList

--Make a list from zero to ten...
zeroToTen = [0..10]

--Make a list of only even numbers...
onlyEvens = [2,4..20]

--Make a list of every second character...
secondLetter = ['A','C'..'Z']

--Create an infinite list counting up in 10's to inf
--This is why they say Haskell is lazy
--It 'creates' the list, but only calculates up to whatever number you need.
infPow10 = [10,20..]

--Get the 50th item from the list...
item50 = infPow10 !! 50


--Generate a repeating list of 2's...
many2s = take 10(repeat 2)

--Generate a list with 3 repeating 1's...
many1s = take 3(repeat 1)

--Replicate does something similar(or the same thing...whatever...)....
many5s = replicate 10 5

--A cycle list has a cycle of numbers which repeat for a specified number of elems...
cycleList = take 9 (cycle[1,2,3])

--This function multiplies everything in the list by 2.
listTimes2 = [x*2 | x <- [1..10]]

--We can also filter the output of the list so that the result of the 3mul is less than 50...
listTimes3 = [x*3| x <-  [1..10], x*3 <= 50]

--In Haskell you can do a lot in one line of code...
--This is all the numbers divisible by 9 and 13...
--Just make sure to use back-ticks instead of single quotes.
divisibleBy9N13 = [ x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0 ]

--You can sort a list using the sort command..
sortedList = sort [9,7,1,2,5,4]

--This command sums all the values in 2 lists ie 1st elem + 1st elem, 2nd + 2nd etc...
summedLists = zipWith (+) [1,5,9] [2,3,6]

-- We can also use the filter command to filter a list based on certain conditions...
filterList = filter (>5) morePrime2

-- This is a sort of while loop in Haskell...
--It creates a list with all the even numbers up to 20...
--This is an example of how Haskell is lazy, even though technically it should create an infinite list, it only displays up to 20.
evensUpTo20 = takeWhile (<=20) [2,4..]

--This command multiplies everything in the list together from the left(foldl), or the right(foldr)
multOfList = foldl (*) 1 [1,2,3,4,5]

--This creates a list where each list elem is 3^n where n is the index of the list.
pow3List = [3^n| n <- [1..10]]

--Here is a multiplication table(1-10 times tables)
multTable = [[x*y |x <- [1..10]] | y <- [1..10]]

--Tuples are used a lot in Haskell...
--A tuple is a pair
--In a list every item has to have the same data type, in a tuple this doesnt have to be true.
randTuple = (1,"Random Tuple")

--Here is a tuple with name and age...
bobSmith = ("Bob Smith" , 52)

--This is how we get bobs name..
bobsName = fst bobSmith

--This is how we get bobs age..
bobsAge = snd bobSmith

--We can also use zip to combine values from 2 different lists into tuple pairs..
names = ["John","Mary","Sean"]
addresses = ["14 Main Street","22 Well Road","1 Clyde Avenue"]
namesAndAdresses = zip names addresses

--Here is a function in Haskell
main = do
    putStrLn "What's your name?"
    name <- getLine
    putStrLn ("Hello "++name)

--Note...In haskell functions cannot begin with an upper case letter.

--First, lets create a type declaration for this function...
addMe :: Int -> Int -> Int 

--Functions in Haskell take the following format...
-- funcName param1 param2 = operations (output value, or returned value)
--Here is the addMe function which adds 2 numbers...
addMe x y = x + y 

--If we create a function without a type declaration, then we are not held to just Ints...
sumMe x y = x + y 

--We can create a function to add tuples together..
addTuples (x,y) (x2,y2) = (x+x2,y+y2)

--We can create like an if block in Haskell...
--First the type declaration...
whatAge :: Int -> String


--This section of code acts like an if-else block...
whatAge 17 = "You can drive"
whatAge 18 = "You can Vote"
whatAge 25 = "You're insurance is cheaper"
whatAge x = "Nothing Important"

--Write a program to calculate the factorial of n...
--Use recursion...

--Type Decalaration
factorial :: Int -> Int

--First handle the case for 0.
factorial 0 = 1

--Next the main recursive part of the algorithm...
factorial n = n * factorial(n-1)

--Here is a simpler way of calculating factorials in Haskell...
--We can use the product function...
prodFact n = product [1..n]

--Next, a function to check if a number is odd, using guards...

--First, the type declaration...    
isOdd :: Int -> Bool

isOdd n
    |n `mod` 2 == 0 = False
    |otherwise = True


--Here is another use of guards in Haskell...
--This is a function to find class based on age...
--First the type declaration...
whatClass :: Int -> String

whatClass age
    |(age >= 4) && (age <= 6) = "Kindergarten"
    |(age >= 7) && (age <= 12) = "Primary School"
    |(age >= 12) && (age <= 18) = "Secondary School"
    |otherwise = "Go to college"

--Here is a program to calculate baseball batting average...

--First a type declaration...
batAvgRating :: Double -> Double -> String

--Now the body or logic of the function...
--We will use guards for this function...
batAvgRating hits atBats
    
    |(avg <= 0.200) = "You are terrible at batting."
    |(avg <= 0.250) = "You are decent."
    |(avg <= 0.280) = "You are good."
    |otherwise "You're a superstar."
    where avg = hits / atBats