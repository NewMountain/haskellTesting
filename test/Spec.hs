
import Test.Hspec
import Test.QuickCheck

import Lib as L

main :: IO () 
main = hspec $ do
    describe "Addition" $ do
        it "1 + 1 is greater than 1" $
            (1 + 1 :: Int) > 1 `shouldBe` True
        it "2 + 2 is equal to 4" $
            (2 + 2 :: Int) `shouldBe` 4
        it "x + 1 is always greater than x" $
            property $ \x -> x + 1 > (x :: Int)
    describe "Lib file" $ do
        it "22 divided by 5 is 4 remainder 2" $
            L.dividedBy (22 :: Int) (5 :: Int) `shouldBe` (4, 2)
