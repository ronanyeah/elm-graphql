-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.Comment exposing (..)

import Api.Interface
import Api.Object
import Api.Scalar
import Api.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Api.Object.Comment
selection constructor =
    Object.selection constructor


body : Field String Api.Object.Comment
body =
    Object.fieldDecoder "body" [] Decode.string


created_at : Field String Api.Object.Comment
created_at =
    Object.fieldDecoder "created_at" [] Decode.string


id : Field Api.Scalar.Id Api.Object.Comment
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Api.Scalar.Id)
