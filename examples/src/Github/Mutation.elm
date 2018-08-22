-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/elm-graphql


module Github.Mutation exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)


{-| Select fields to build up a top-level mutation. The request can be sent with
functions from `Graphqelm.Http`.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) RootMutation
selection constructor =
    Object.selection constructor


type alias AcceptTopicSuggestionRequiredArguments =
    { input : Github.InputObject.AcceptTopicSuggestionInput }


{-| Applies a suggested topic to the repository.
-}
acceptTopicSuggestion : AcceptTopicSuggestionRequiredArguments -> SelectionSet decodesTo Github.Object.AcceptTopicSuggestionPayload -> Field (Maybe decodesTo) RootMutation
acceptTopicSuggestion requiredArgs object =
    Object.selectionField "acceptTopicSuggestion" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeAcceptTopicSuggestionInput ] object (identity >> Decode.nullable)


type alias AddCommentRequiredArguments =
    { input : Github.InputObject.AddCommentInput }


{-| Adds a comment to an Issue or Pull Request.
-}
addComment : AddCommentRequiredArguments -> SelectionSet decodesTo Github.Object.AddCommentPayload -> Field (Maybe decodesTo) RootMutation
addComment requiredArgs object =
    Object.selectionField "addComment" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeAddCommentInput ] object (identity >> Decode.nullable)


type alias AddProjectCardRequiredArguments =
    { input : Github.InputObject.AddProjectCardInput }


{-| Adds a card to a ProjectColumn. Either `contentId` or `note` must be provided but **not** both.
-}
addProjectCard : AddProjectCardRequiredArguments -> SelectionSet decodesTo Github.Object.AddProjectCardPayload -> Field (Maybe decodesTo) RootMutation
addProjectCard requiredArgs object =
    Object.selectionField "addProjectCard" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeAddProjectCardInput ] object (identity >> Decode.nullable)


type alias AddProjectColumnRequiredArguments =
    { input : Github.InputObject.AddProjectColumnInput }


{-| Adds a column to a Project.
-}
addProjectColumn : AddProjectColumnRequiredArguments -> SelectionSet decodesTo Github.Object.AddProjectColumnPayload -> Field (Maybe decodesTo) RootMutation
addProjectColumn requiredArgs object =
    Object.selectionField "addProjectColumn" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeAddProjectColumnInput ] object (identity >> Decode.nullable)


type alias AddPullRequestReviewRequiredArguments =
    { input : Github.InputObject.AddPullRequestReviewInput }


{-| Adds a review to a Pull Request.
-}
addPullRequestReview : AddPullRequestReviewRequiredArguments -> SelectionSet decodesTo Github.Object.AddPullRequestReviewPayload -> Field (Maybe decodesTo) RootMutation
addPullRequestReview requiredArgs object =
    Object.selectionField "addPullRequestReview" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeAddPullRequestReviewInput ] object (identity >> Decode.nullable)


type alias AddPullRequestReviewCommentRequiredArguments =
    { input : Github.InputObject.AddPullRequestReviewCommentInput }


{-| Adds a comment to a review.
-}
addPullRequestReviewComment : AddPullRequestReviewCommentRequiredArguments -> SelectionSet decodesTo Github.Object.AddPullRequestReviewCommentPayload -> Field (Maybe decodesTo) RootMutation
addPullRequestReviewComment requiredArgs object =
    Object.selectionField "addPullRequestReviewComment" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeAddPullRequestReviewCommentInput ] object (identity >> Decode.nullable)


type alias AddReactionRequiredArguments =
    { input : Github.InputObject.AddReactionInput }


{-| Adds a reaction to a subject.
-}
addReaction : AddReactionRequiredArguments -> SelectionSet decodesTo Github.Object.AddReactionPayload -> Field (Maybe decodesTo) RootMutation
addReaction requiredArgs object =
    Object.selectionField "addReaction" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeAddReactionInput ] object (identity >> Decode.nullable)


type alias AddStarRequiredArguments =
    { input : Github.InputObject.AddStarInput }


{-| Adds a star to a Starrable.
-}
addStar : AddStarRequiredArguments -> SelectionSet decodesTo Github.Object.AddStarPayload -> Field (Maybe decodesTo) RootMutation
addStar requiredArgs object =
    Object.selectionField "addStar" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeAddStarInput ] object (identity >> Decode.nullable)


type alias CreateProjectRequiredArguments =
    { input : Github.InputObject.CreateProjectInput }


{-| Creates a new project.
-}
createProject : CreateProjectRequiredArguments -> SelectionSet decodesTo Github.Object.CreateProjectPayload -> Field (Maybe decodesTo) RootMutation
createProject requiredArgs object =
    Object.selectionField "createProject" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeCreateProjectInput ] object (identity >> Decode.nullable)


type alias DeclineTopicSuggestionRequiredArguments =
    { input : Github.InputObject.DeclineTopicSuggestionInput }


{-| Rejects a suggested topic for the repository.
-}
declineTopicSuggestion : DeclineTopicSuggestionRequiredArguments -> SelectionSet decodesTo Github.Object.DeclineTopicSuggestionPayload -> Field (Maybe decodesTo) RootMutation
declineTopicSuggestion requiredArgs object =
    Object.selectionField "declineTopicSuggestion" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeDeclineTopicSuggestionInput ] object (identity >> Decode.nullable)


type alias DeleteProjectRequiredArguments =
    { input : Github.InputObject.DeleteProjectInput }


{-| Deletes a project.
-}
deleteProject : DeleteProjectRequiredArguments -> SelectionSet decodesTo Github.Object.DeleteProjectPayload -> Field (Maybe decodesTo) RootMutation
deleteProject requiredArgs object =
    Object.selectionField "deleteProject" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeDeleteProjectInput ] object (identity >> Decode.nullable)


type alias DeleteProjectCardRequiredArguments =
    { input : Github.InputObject.DeleteProjectCardInput }


{-| Deletes a project card.
-}
deleteProjectCard : DeleteProjectCardRequiredArguments -> SelectionSet decodesTo Github.Object.DeleteProjectCardPayload -> Field (Maybe decodesTo) RootMutation
deleteProjectCard requiredArgs object =
    Object.selectionField "deleteProjectCard" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeDeleteProjectCardInput ] object (identity >> Decode.nullable)


type alias DeleteProjectColumnRequiredArguments =
    { input : Github.InputObject.DeleteProjectColumnInput }


{-| Deletes a project column.
-}
deleteProjectColumn : DeleteProjectColumnRequiredArguments -> SelectionSet decodesTo Github.Object.DeleteProjectColumnPayload -> Field (Maybe decodesTo) RootMutation
deleteProjectColumn requiredArgs object =
    Object.selectionField "deleteProjectColumn" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeDeleteProjectColumnInput ] object (identity >> Decode.nullable)


type alias DeletePullRequestReviewRequiredArguments =
    { input : Github.InputObject.DeletePullRequestReviewInput }


{-| Deletes a pull request review.
-}
deletePullRequestReview : DeletePullRequestReviewRequiredArguments -> SelectionSet decodesTo Github.Object.DeletePullRequestReviewPayload -> Field (Maybe decodesTo) RootMutation
deletePullRequestReview requiredArgs object =
    Object.selectionField "deletePullRequestReview" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeDeletePullRequestReviewInput ] object (identity >> Decode.nullable)


type alias DismissPullRequestReviewRequiredArguments =
    { input : Github.InputObject.DismissPullRequestReviewInput }


{-| Dismisses an approved or rejected pull request review.
-}
dismissPullRequestReview : DismissPullRequestReviewRequiredArguments -> SelectionSet decodesTo Github.Object.DismissPullRequestReviewPayload -> Field (Maybe decodesTo) RootMutation
dismissPullRequestReview requiredArgs object =
    Object.selectionField "dismissPullRequestReview" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeDismissPullRequestReviewInput ] object (identity >> Decode.nullable)


type alias LockLockableRequiredArguments =
    { input : Github.InputObject.LockLockableInput }


{-| Lock a lockable object
-}
lockLockable : LockLockableRequiredArguments -> SelectionSet decodesTo Github.Object.LockLockablePayload -> Field (Maybe decodesTo) RootMutation
lockLockable requiredArgs object =
    Object.selectionField "lockLockable" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeLockLockableInput ] object (identity >> Decode.nullable)


type alias MoveProjectCardRequiredArguments =
    { input : Github.InputObject.MoveProjectCardInput }


{-| Moves a project card to another place.
-}
moveProjectCard : MoveProjectCardRequiredArguments -> SelectionSet decodesTo Github.Object.MoveProjectCardPayload -> Field (Maybe decodesTo) RootMutation
moveProjectCard requiredArgs object =
    Object.selectionField "moveProjectCard" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeMoveProjectCardInput ] object (identity >> Decode.nullable)


type alias MoveProjectColumnRequiredArguments =
    { input : Github.InputObject.MoveProjectColumnInput }


{-| Moves a project column to another place.
-}
moveProjectColumn : MoveProjectColumnRequiredArguments -> SelectionSet decodesTo Github.Object.MoveProjectColumnPayload -> Field (Maybe decodesTo) RootMutation
moveProjectColumn requiredArgs object =
    Object.selectionField "moveProjectColumn" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeMoveProjectColumnInput ] object (identity >> Decode.nullable)


type alias RemoveOutsideCollaboratorRequiredArguments =
    { input : Github.InputObject.RemoveOutsideCollaboratorInput }


{-| Removes outside collaborator from all repositories in an organization.
-}
removeOutsideCollaborator : RemoveOutsideCollaboratorRequiredArguments -> SelectionSet decodesTo Github.Object.RemoveOutsideCollaboratorPayload -> Field (Maybe decodesTo) RootMutation
removeOutsideCollaborator requiredArgs object =
    Object.selectionField "removeOutsideCollaborator" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeRemoveOutsideCollaboratorInput ] object (identity >> Decode.nullable)


type alias RemoveReactionRequiredArguments =
    { input : Github.InputObject.RemoveReactionInput }


{-| Removes a reaction from a subject.
-}
removeReaction : RemoveReactionRequiredArguments -> SelectionSet decodesTo Github.Object.RemoveReactionPayload -> Field (Maybe decodesTo) RootMutation
removeReaction requiredArgs object =
    Object.selectionField "removeReaction" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeRemoveReactionInput ] object (identity >> Decode.nullable)


type alias RemoveStarRequiredArguments =
    { input : Github.InputObject.RemoveStarInput }


{-| Removes a star from a Starrable.
-}
removeStar : RemoveStarRequiredArguments -> SelectionSet decodesTo Github.Object.RemoveStarPayload -> Field (Maybe decodesTo) RootMutation
removeStar requiredArgs object =
    Object.selectionField "removeStar" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeRemoveStarInput ] object (identity >> Decode.nullable)


type alias RequestReviewsRequiredArguments =
    { input : Github.InputObject.RequestReviewsInput }


{-| Set review requests on a pull request.
-}
requestReviews : RequestReviewsRequiredArguments -> SelectionSet decodesTo Github.Object.RequestReviewsPayload -> Field (Maybe decodesTo) RootMutation
requestReviews requiredArgs object =
    Object.selectionField "requestReviews" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeRequestReviewsInput ] object (identity >> Decode.nullable)


type alias SubmitPullRequestReviewRequiredArguments =
    { input : Github.InputObject.SubmitPullRequestReviewInput }


{-| Submits a pending pull request review.
-}
submitPullRequestReview : SubmitPullRequestReviewRequiredArguments -> SelectionSet decodesTo Github.Object.SubmitPullRequestReviewPayload -> Field (Maybe decodesTo) RootMutation
submitPullRequestReview requiredArgs object =
    Object.selectionField "submitPullRequestReview" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeSubmitPullRequestReviewInput ] object (identity >> Decode.nullable)


type alias UpdateProjectRequiredArguments =
    { input : Github.InputObject.UpdateProjectInput }


{-| Updates an existing project.
-}
updateProject : UpdateProjectRequiredArguments -> SelectionSet decodesTo Github.Object.UpdateProjectPayload -> Field (Maybe decodesTo) RootMutation
updateProject requiredArgs object =
    Object.selectionField "updateProject" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeUpdateProjectInput ] object (identity >> Decode.nullable)


type alias UpdateProjectCardRequiredArguments =
    { input : Github.InputObject.UpdateProjectCardInput }


{-| Updates an existing project card.
-}
updateProjectCard : UpdateProjectCardRequiredArguments -> SelectionSet decodesTo Github.Object.UpdateProjectCardPayload -> Field (Maybe decodesTo) RootMutation
updateProjectCard requiredArgs object =
    Object.selectionField "updateProjectCard" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeUpdateProjectCardInput ] object (identity >> Decode.nullable)


type alias UpdateProjectColumnRequiredArguments =
    { input : Github.InputObject.UpdateProjectColumnInput }


{-| Updates an existing project column.
-}
updateProjectColumn : UpdateProjectColumnRequiredArguments -> SelectionSet decodesTo Github.Object.UpdateProjectColumnPayload -> Field (Maybe decodesTo) RootMutation
updateProjectColumn requiredArgs object =
    Object.selectionField "updateProjectColumn" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeUpdateProjectColumnInput ] object (identity >> Decode.nullable)


type alias UpdatePullRequestReviewRequiredArguments =
    { input : Github.InputObject.UpdatePullRequestReviewInput }


{-| Updates the body of a pull request review.
-}
updatePullRequestReview : UpdatePullRequestReviewRequiredArguments -> SelectionSet decodesTo Github.Object.UpdatePullRequestReviewPayload -> Field (Maybe decodesTo) RootMutation
updatePullRequestReview requiredArgs object =
    Object.selectionField "updatePullRequestReview" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeUpdatePullRequestReviewInput ] object (identity >> Decode.nullable)


type alias UpdatePullRequestReviewCommentRequiredArguments =
    { input : Github.InputObject.UpdatePullRequestReviewCommentInput }


{-| Updates a pull request review comment.
-}
updatePullRequestReviewComment : UpdatePullRequestReviewCommentRequiredArguments -> SelectionSet decodesTo Github.Object.UpdatePullRequestReviewCommentPayload -> Field (Maybe decodesTo) RootMutation
updatePullRequestReviewComment requiredArgs object =
    Object.selectionField "updatePullRequestReviewComment" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeUpdatePullRequestReviewCommentInput ] object (identity >> Decode.nullable)


type alias UpdateSubscriptionRequiredArguments =
    { input : Github.InputObject.UpdateSubscriptionInput }


{-| Updates viewers repository subscription state.
-}
updateSubscription : UpdateSubscriptionRequiredArguments -> SelectionSet decodesTo Github.Object.UpdateSubscriptionPayload -> Field (Maybe decodesTo) RootMutation
updateSubscription requiredArgs object =
    Object.selectionField "updateSubscription" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeUpdateSubscriptionInput ] object (identity >> Decode.nullable)


type alias UpdateTopicsRequiredArguments =
    { input : Github.InputObject.UpdateTopicsInput }


{-| Replaces the repository's topics with the given topics.
-}
updateTopics : UpdateTopicsRequiredArguments -> SelectionSet decodesTo Github.Object.UpdateTopicsPayload -> Field (Maybe decodesTo) RootMutation
updateTopics requiredArgs object =
    Object.selectionField "updateTopics" [ Argument.required "input" requiredArgs.input Github.InputObject.encodeUpdateTopicsInput ] object (identity >> Decode.nullable)
