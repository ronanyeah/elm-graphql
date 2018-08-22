-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.BlameRange exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.BlameRange
selection constructor =
    Object.selection constructor


{-| Identifies the recency of the change, from 1 (new) to 10 (old). This is calculated as a 2-quantile and determines the length of distance between the median age of all the changes in the file and the recency of the current range's change.
-}
age : Field Int Github.Object.BlameRange
age =
    Object.fieldDecoder "age" [] Decode.int


{-| Identifies the line author
-}
commit : SelectionSet decodesTo Github.Object.Commit -> Field decodesTo Github.Object.BlameRange
commit object =
    Object.selectionField "commit" [] object identity


{-| The ending line for the range
-}
endingLine : Field Int Github.Object.BlameRange
endingLine =
    Object.fieldDecoder "endingLine" [] Decode.int


{-| The starting line for the range
-}
startingLine : Field Int Github.Object.BlameRange
startingLine =
    Object.fieldDecoder "startingLine" [] Decode.int
