module HaskellWorks.S3.ExampleSpec
  ( spec
  ) where

import HaskellWorks.Hspec.Hedgehog
import Hedgehog
import Test.Hspec

import qualified Hedgehog.Gen                  as G
import qualified Hedgehog.Range                as R

{- HLINT ignore "Redundant do" -}

spec :: Spec
spec = describe "HaskellWorks.S3.ExampleSpecSpec" $ do
  it "simple property test" $ requireProperty $ do
    n <- forAll $ G.int (R.linear 1 4)
    n === n
