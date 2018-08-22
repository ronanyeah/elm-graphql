-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/elm-graphql


module Swapi.Object.ChatMessage exposing (..)

import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import Swapi.Enum.Phrase
import Swapi.InputObject
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Swapi.Object.ChatMessage
selection constructor =
    Object.selection constructor


character : SelectionSet decodesTo Swapi.Interface.Character -> Field (Maybe decodesTo) Swapi.Object.ChatMessage
character object =
    Object.selectionField "character" [] object (identity >> Decode.nullable)


phrase : Field Swapi.Enum.Phrase.Phrase Swapi.Object.ChatMessage
phrase =
    Object.fieldDecoder "phrase" [] Swapi.Enum.Phrase.decoder
