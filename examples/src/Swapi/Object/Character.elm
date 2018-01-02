module Swapi.Object.Character exposing (..)

import Graphqelm.Builder.Object as Object
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet), with)
import Json.Decode as Decode
import Swapi.Enum.Episode
import Swapi.Object


baseSelection : (a -> constructor) -> SelectionSet (a -> constructor) Swapi.Object.Character
baseSelection constructor =
    Object.object constructor


selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Swapi.Object.Character) -> SelectionSet (a -> constructor) Swapi.Object.Character
selection constructor typeSpecificDecoders =
    Object.polymorphicObject typeSpecificDecoders constructor


onDroid : SelectionSet selection Swapi.Object.Droid -> FragmentSelectionSet selection Swapi.Object.Character
onDroid (SelectionSet fields decoder) =
    FragmentSelectionSet "Droid" fields decoder


onHuman : SelectionSet selection Swapi.Object.Human -> FragmentSelectionSet selection Swapi.Object.Character
onHuman (SelectionSet fields decoder) =
    FragmentSelectionSet "Human" fields decoder


{-| Which movies they appear in.
-}
appearsIn : FieldDecoder (List Swapi.Enum.Episode.Episode) Swapi.Object.Character
appearsIn =
    Object.fieldDecoder "appearsIn" [] (Swapi.Enum.Episode.decoder |> Decode.list)


{-| The friends of the character, or an empty list if they have none.
-}
friends : SelectionSet character Swapi.Object.Character -> FieldDecoder (List character) Swapi.Object.Character
friends selection =
    Object.selectionFieldDecoder "friends" [] selection (identity >> Decode.list)


{-| The ID of the character.
-}
id : FieldDecoder String Swapi.Object.Character
id =
    Object.fieldDecoder "id" [] Decode.string


{-| The name of the character.
-}
name : FieldDecoder String Swapi.Object.Character
name =
    Object.fieldDecoder "name" [] Decode.string
