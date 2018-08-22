-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.PullRequestPubSubTopic exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible PubSub channels for a pull request.

  - Updated - The channel ID for observing pull request updates.
  - Markasread - The channel ID for marking an pull request as read.
  - HeadRef - The channel ID for observing head ref updates.

-}
type PullRequestPubSubTopic
    = Updated
    | Markasread
    | HeadRef


decoder : Decoder PullRequestPubSubTopic
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "UPDATED" ->
                        Decode.succeed Updated

                    "MARKASREAD" ->
                        Decode.succeed Markasread

                    "HEAD_REF" ->
                        Decode.succeed HeadRef

                    _ ->
                        Decode.fail ("Invalid PullRequestPubSubTopic type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : PullRequestPubSubTopic -> String
toString enum =
    case enum of
        Updated ->
            "UPDATED"

        Markasread ->
            "MARKASREAD"

        HeadRef ->
            "HEAD_REF"
