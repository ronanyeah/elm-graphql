-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/elm-graphql


module Normalize.Query exposing (..)

import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import Normalize.Enum.Episode_
import Normalize.InputObject
import Normalize.Interface
import Normalize.Object
import Normalize.Scalar
import Normalize.Union


{-| Select fields to build up a top-level query. The request can be sent with
functions from `Graphqelm.Http`.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) RootQuery
selection constructor =
    Object.selection constructor


type alias CircularInputRequiredArguments =
    { input : Normalize.InputObject.CircularOne }


{-|

  - input - Test circular input.

-}
circularInput : CircularInputRequiredArguments -> Field (Maybe String) RootQuery
circularInput requiredArgs =
    Object.fieldDecoder "circularInput" [ Argument.required "input" requiredArgs.input Normalize.InputObject.encodeCircularOne ] (Decode.string |> Decode.nullable)


type alias DroidRequiredArguments =
    { iD_ : Normalize.Scalar.Id }


{-|

  - iD_ - ID of the droid.

-}
droid_ : DroidRequiredArguments -> SelectionSet decodesTo Normalize.Object.Droid -> Field (Maybe decodesTo) RootQuery
droid_ requiredArgs object =
    Object.selectionField "_droid" [ Argument.required "_iD" requiredArgs.iD_ (\(Normalize.Scalar.Id raw) -> Encode.string raw) ] object (identity >> Decode.nullable)


type alias GreetRequiredArguments =
    { input : Normalize.InputObject.Greeting }


greet : GreetRequiredArguments -> Field String RootQuery
greet requiredArgs =
    Object.fieldDecoder "greet" [ Argument.required "input" requiredArgs.input Normalize.InputObject.encodeGreeting ] Decode.string


type alias HeroOptionalArguments =
    { episode : OptionalArgument Normalize.Enum.Episode_.Episode_ }


{-|

  - episode - If omitted, returns the hero of the whole saga. If provided, returns the hero of that particular episode.

-}
hero : (HeroOptionalArguments -> HeroOptionalArguments) -> SelectionSet decodesTo Normalize.Interface.Character -> Field decodesTo RootQuery
hero fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { episode = Absent }

        optionalArgs =
            [ Argument.optional "episode" filledInOptionals.episode (Encode.enum Normalize.Enum.Episode_.toString) ]
                |> List.filterMap identity
    in
    Object.selectionField "hero" optionalArgs object identity


type alias HeroUnionOptionalArguments =
    { episode : OptionalArgument Normalize.Enum.Episode_.Episode_ }


{-|

  - episode - If omitted, returns the hero of the whole saga. If provided, returns the hero of that particular episode.

-}
heroUnion : (HeroUnionOptionalArguments -> HeroUnionOptionalArguments) -> SelectionSet decodesTo Normalize.Union.CharacterUnion -> Field (Maybe decodesTo) RootQuery
heroUnion fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { episode = Absent }

        optionalArgs =
            [ Argument.optional "episode" filledInOptionals.episode (Encode.enum Normalize.Enum.Episode_.toString) ]
                |> List.filterMap identity
    in
    Object.selectionField "heroUnion" optionalArgs object (identity >> Decode.nullable)


type alias HumanRequiredArguments =
    { id : Normalize.Scalar.Id }


{-|

  - id - ID of the human.

-}
human : HumanRequiredArguments -> SelectionSet decodesTo Normalize.Object.Human_ -> Field (Maybe decodesTo) RootQuery
human requiredArgs object =
    Object.selectionField "human" [ Argument.required "id" requiredArgs.id (\(Normalize.Scalar.Id raw) -> Encode.string raw) ] object (identity >> Decode.nullable)


type alias RecursiveInputRequiredArguments =
    { input : Normalize.InputObject.Recursive }


{-|

  - input - Test recursive input.

-}
recursiveInput : RecursiveInputRequiredArguments -> Field (Maybe String) RootQuery
recursiveInput requiredArgs =
    Object.fieldDecoder "recursiveInput" [ Argument.required "input" requiredArgs.input Normalize.InputObject.encodeRecursive ] (Decode.string |> Decode.nullable)


type alias TypeOptionalArguments =
    { input : OptionalArgument Normalize.InputObject.ReservedWord }


type_ : (TypeOptionalArguments -> TypeOptionalArguments) -> Field String RootQuery
type_ fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { input = Absent }

        optionalArgs =
            [ Argument.optional "input" filledInOptionals.input Normalize.InputObject.encodeReservedWord ]
                |> List.filterMap identity
    in
    Object.fieldDecoder "type" optionalArgs Decode.string
