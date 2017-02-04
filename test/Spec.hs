
import Test.Hspec

import Lib as L

main :: IO () 
main = hspec $ do
    describe "Addition" $ do
        it "1 + 1 is greater than 1" $
            (1 + 1) > 1 `shouldBe` True
        it "2 + 2 is equal to 4" $
            2 + 2 `shouldBe` 4
    describe "Lib file" $ do
        it "22 divided by 5 is 4 remainder 2" $
            L.dividedBy 22 5 `shouldBe` (4, 2)
