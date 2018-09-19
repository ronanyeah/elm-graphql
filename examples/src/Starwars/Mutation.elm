-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Starwars.Mutation exposing (SendMessageRequiredArguments, increment, selection, sendMessage)

import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import Starwars.Enum.Phrase
import Starwars.InputObject
import Starwars.Interface
import Starwars.Object
import Starwars.Scalar
import Starwars.Union


{-| Select fields to build up a top-level mutation. The request can be sent with
functions from `Graphql.Http`.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) RootMutation
selection constructor =
    Object.selection constructor


increment : Field Int RootMutation
increment =
    Object.fieldDecoder "increment" [] Decode.int


type alias SendMessageRequiredArguments =
    { characterId : Starwars.Scalar.Id, phrase : Starwars.Enum.Phrase.Phrase }


sendMessage : SendMessageRequiredArguments -> SelectionSet decodesTo Starwars.Object.ChatMessage -> Field (Maybe decodesTo) RootMutation
sendMessage requiredArgs object_ =
    Object.selectionField "sendMessage" [ Argument.required "characterId" requiredArgs.characterId (\(Starwars.Scalar.Id raw) -> Encode.string raw), Argument.required "phrase" requiredArgs.phrase (Encode.enum Starwars.Enum.Phrase.toString) ] object_ (identity >> Decode.nullable)
