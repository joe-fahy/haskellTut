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
--batAvgRating :: Double -> Double -> String

--Now the body or logic of the function...
--We will use guards for this function...
--batAvgRating hits atBats
--    |avg <= 0.200 = "You are terrible at batting."
--    |avg <= 0.250 = "You are decent."
--    |avg <= 0.280 = "You are good."
--    |otherwise "You're a superstar."
--    where avg = hits / atBats
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



--Here is a function to get items from a list that was passed in.
--First create a type declaration.
getListItems :: [Int] -> String

--Next handle the case for an empty list.
getListItems [] = "Your list is empty."
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list starts with " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "Your first item is " ++ show x++ "and the rest are "  ++ show xs


--This is a function to get the first letter of a string.
--First create a type declaration
getFirstItem :: String -> String

--Now function logic
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x] 

--Next we move on to higher order functions.
--This sounds complicated, but all it does is passes functions in like regular variables.
--First the type declaration...
times4 :: Int -> Int

--Next the function logic...
times4 x = x*4

--the map function allows you to apply a function to every item in a list.
listTimes4 = map times4 [1,2,3,4,5]

--This function will take in a list of ints and perform an operation on them and then return a list of ints.
multBy4 :: [Int] -> [Int]
--This line handles the case of an empty input string.
multBy4 [] = []

--This line cycles through the list and multiplies the rest of the list items.
multBy4 (x:xs) = times4 x : multBy4 xs 

--This is a function to check if two strings are equal.
--First write the type declaration..
areStringsEq :: String -> String -> Bool

--Next handle the blank input case.
areStringsEq [] [] = True

--Next the main function logic.
areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys

--Finally catch all other input that is not a string or empty list.
areStringsEq _ _ = False

--Here we can pass a function into a function.
--First the type Declaration.
doMult :: (Int -> Int) -> Int

--This logic states that the function is passed in, then 3 is given as an arg to the function.
doMult func = func 3

--Testing the function out....
num3Times4 = doMult times4

--We can also write a function which returns a function.
--First the type declaration.
getAddFunc :: Int -> (Int -> Int)

--Logic for add function.
getAddFunc x y = x+y

adds3 = getAddFunc 3

fourPlus3 = adds3 4

--We can also use this technique with the map function.
threePlusList = map adds3 [1,2,3,4,5]

--Lambdas are like functions that don't have a name.
--Here is a simple example of a lambda.
--In this example \x is what the lambda takes in.
--And [1..10] means perform this function from 1-10.
dbl1To10 = map (\x -> x*2) [1..10]

--Here is an example of if statements in Haskell...
--This is a function to only double even numbers.
doubleEvenNumber y = 
    if(y `mod` 2 /= 0)
        then y
        else y*2

--Here is an example of a switch statement or case statement.
--First the func type declaration.
getClass :: Int -> String

--Next the actual function logic...
--In this example the underscore(_) represents any other input which we dont want.
getClass x = 
    case x of
        5-> "Go to Kindergarten."
        6-> "Go to elementary school."
        _-> "Go away."

--Numeration types are used to create a list of possible types.
--So this baseball example was an example of an enumerated data type.
--Enumerated data types create a list of possible outcomes to choose from.
data BaseballPlayer = Pitcher
                    |Catcher
                    |Infielder
                    |Outfield
                    deriving Show

barryBonds :: BaseballPlayer -> Bool

barryBonds Outfield = True

barryInOF = print(barryBonds Outfield)


--Now here is an example of a custom data type.
--A custom data type can be thought of like a struct. It can store multiple values.
--Here is an example of customer data...
data Customer = Customer String String Double
    deriving Show

tomSmith :: Customer 
tomSmith = Customer "Tom Smith" "123 Main" 20.50

--This is a method to get the balance from a customer data type.
getBalance :: Customer -> Double

--This line says go to Customer, ignore the first 2 data entries and only get balance.
--Here balance is represented by b.
getBalance (Customer _ _ b) = b


--We can create another example to make a rock,paper,scissors game.
--First lets create an enumerated data type.
data RPS = Rock | Paper | Scissors

--Now a function to run our program.
--Here is the type declaration for the function...
shoot :: RPS -> RPS -> String

--Now the program logic for each scenario.
shoot Paper Rock = "Paper beats Rock."
shoot Rock Scissors = "Rock beats Scissors."
shoot Scissors Paper = "Scissors beats Paper."
shoot Scissors Rock = "Rock beats Scissors."
shoot Paper Scissors = "Scissors beats Paper."
shoot Rock Paper = "Paper beats Rock."
shoot _ _ = "Error."



--In this example we create a shape data type which has different categories with different arguments.
data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving Show

--Now lets create a method to get the area of a shape.
--First lets create a type declaration.
area :: Shape -> Float

--Now lets create the function logic.

--This line of code parses out the radius from the Circle data type, then calcs pi*r^2.
area (Circle _ _ r) = pi * (r^2)

--Now here is the area calculation for the rectangle.
--Important to note here: abs is the absolute value function(result is always positive num)
area (Rectangle x1 y1 x2 y2) = (abs (x2 - x1)) * (abs(y2-y1))


--Here we call the function and put the result in a constant.
areaOfCircle = area (Circle 10 20 20)

--Note here, the dollar sign ($) is just used as a replacement for the brackets in the example above.
--These examples both function exactly the same.
areaOfRectangle = area $ Rectangle 10 20 30 40

--Now we will look at type classes...
--Type classes are things like Num Or Eq Show
--Type classes will correspond with certain types which have certain operations defined for them.
--For example the addition operator(+) works with parameters that use Num
--This can be seen by typing :t (+) in ghci
--What this means is that as long as the params we pass in extend the type class Num
--ie. Int Double Float etc....
--We can add them using the addition operator.

--Here is a custom data type using types.
--This is a data type for employees.
data Employee = Employee { name :: String,
                            position :: String,
                            idnum :: Int
                            } deriving(Eq,Show)

samSmith = Employee {name = "Sam Smith" , position = "Manager" , idnum = 1000}
pamMarx = Employee {name = "Pam Marx" , position = "Sales", idnum = 1001} 

--Here is a function to check if the 2 are equal.
isSamPam = samSmith == pamMarx

--Here is a function to show samSmith...
samSmithData = show samSmith


--Here is an example where we can use instances to control our class.

--Create an enumerataed data type...
data ShirtSize = S | M | L


instance Eq ShirtSize where
    S == S = True
    M == M = True
    L == L = True
    _ == _ = False

instance Show ShirtSize where
    show S = "Small"
    show M = "Medium"
    show L = "Large"


smallAvail = S `elem` [S,M,L]

theSize = show S


--We can also create a class for equality.
class MyEq a where
    areEqual :: a -> a -> Bool


instance MyEq ShirtSize where
    areEqual S S = True
    areEqual M M = True
    areEqual L L = True
    areEqual _ _ = False


newSize = areEqual M M     



--Now lets look at I/O...
--Lets make a custom function just to examine I/O operations...
--This is a function to prompt for a name, then output the name.
--Note: do allows us to chain a series of commands together.
sayHello = do
    putStrLn "Hello What is your name?"
    name <- getLine
    putStrLn $ "Hello " ++ name

--Now lets look at file I/O
--Here is writing to a file...
writeToFile = do
    theFile <- openFile "test.txt" WriteMode
    hPutStrLn theFile ("A line of text.")
    hClose theFile    

--Here is a function that reads from the same file.
readFromFile = do
    theFile2 <- openFile "test.txt" ReadMode
    contents <- hGetContents theFile2     
    putStrLn contents
    hClose theFile2


--Here is a piece of code to calculate the fibonacci sequence using recursion and the zip function.
--zip creates pairs from 2 lists and puts them into a tuple.

fib = 1 : 1 : [a + b | (a,b) <- zip fib (tail fib)]

--Here we get the 300th fibonacci number....
fib300 = fib !! 300
