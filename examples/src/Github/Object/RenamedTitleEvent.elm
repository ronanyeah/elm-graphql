-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RenamedTitleEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RenamedTitleEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.RenamedTitleEvent
actor object =
    Object.selectionField "actor" [] object (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.RenamedTitleEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.DateTime)


{-| Identifies the current title of the issue or pull request.
-}
currentTitle : Field String Github.Object.RenamedTitleEvent
currentTitle =
    Object.fieldDecoder "currentTitle" [] Decode.string


id : Field Github.Scalar.Id Github.Object.RenamedTitleEvent
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| Identifies the previous title of the issue or pull request.
-}
previousTitle : Field String Github.Object.RenamedTitleEvent
previousTitle =
    Object.fieldDecoder "previousTitle" [] Decode.string


{-| Subject that was renamed.
-}
subject : SelectionSet decodesTo Github.Union.RenamedTitleSubject -> Field decodesTo Github.Object.RenamedTitleEvent
subject object =
    Object.selectionField "subject" [] object identity
