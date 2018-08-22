-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.TeamRepositoryEdge exposing (..)

import Github.Enum.RepositoryPermission
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.TeamRepositoryEdge
selection constructor =
    Object.selection constructor


cursor : Field String Github.Object.TeamRepositoryEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.TeamRepositoryEdge
node object =
    Object.selectionField "node" [] object identity


{-| The permission level the team has on the repository
-}
permission : Field Github.Enum.RepositoryPermission.RepositoryPermission Github.Object.TeamRepositoryEdge
permission =
    Object.fieldDecoder "permission" [] Github.Enum.RepositoryPermission.decoder
