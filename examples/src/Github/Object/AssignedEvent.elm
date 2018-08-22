-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.AssignedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.AssignedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.AssignedEvent
actor object =
    Object.selectionField "actor" [] object (identity >> Decode.nullable)


{-| Identifies the assignable associated with the event.
-}
assignable : SelectionSet decodesTo Github.Interface.Assignable -> Field decodesTo Github.Object.AssignedEvent
assignable object =
    Object.selectionField "assignable" [] object identity


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.AssignedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


id : Field Github.Scalar.Id Github.Object.AssignedEvent
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| Identifies the user who was assigned.
-}
user : SelectionSet decodesTo Github.Object.User -> Field (Maybe decodesTo) Github.Object.AssignedEvent
user object =
    Object.selectionField "user" [] object (identity >> Decode.nullable)
