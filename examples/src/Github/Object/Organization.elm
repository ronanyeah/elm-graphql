-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Organization exposing (..)

import Github.Enum.ProjectState
import Github.Enum.RepositoryAffiliation
import Github.Enum.RepositoryPrivacy
import Github.Enum.TeamPrivacy
import Github.Enum.TeamRole
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Organization
selection constructor =
    Object.selection constructor


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the organization's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> Field Github.Scalar.Uri Github.Object.Organization
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.fieldDecoder "avatarUrl" optionalArgs (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Object.Organization
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


{-| The organization's public profile description.
-}
description : Field (Maybe String) Github.Object.Organization
description =
    Object.fieldDecoder "description" [] (Decode.string |> Decode.nullable)


{-| The organization's public email.
-}
email : Field (Maybe String) Github.Object.Organization
email =
    Object.fieldDecoder "email" [] (Decode.string |> Decode.nullable)


id : Field Github.Scalar.Id Github.Object.Organization
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Id)


{-| The organization's public profile location.
-}
location : Field (Maybe String) Github.Object.Organization
location =
    Object.fieldDecoder "location" [] (Decode.string |> Decode.nullable)


{-| The organization's login name.
-}
login : Field String Github.Object.Organization
login =
    Object.fieldDecoder "login" [] Decode.string


type alias MembersOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| A list of users who are members of this organization.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
members : (MembersOptionalArguments -> MembersOptionalArguments) -> SelectionSet decodesTo Github.Object.UserConnection -> Field decodesTo Github.Object.Organization
members fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "members" optionalArgs object identity


{-| The organization's public profile name.
-}
name : Field (Maybe String) Github.Object.Organization
name =
    Object.fieldDecoder "name" [] (Decode.string |> Decode.nullable)


{-| The HTTP path creating a new team
-}
newTeamResourcePath : Field Github.Scalar.Uri Github.Object.Organization
newTeamResourcePath =
    Object.fieldDecoder "newTeamResourcePath" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL creating a new team
-}
newTeamUrl : Field Github.Scalar.Uri Github.Object.Organization
newTeamUrl =
    Object.fieldDecoder "newTeamUrl" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| The billing email for the organization.
-}
organizationBillingEmail : Field (Maybe String) Github.Object.Organization
organizationBillingEmail =
    Object.fieldDecoder "organizationBillingEmail" [] (Decode.string |> Decode.nullable)


type alias PinnedRepositoriesOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, privacy : OptionalArgument Github.Enum.RepositoryPrivacy.RepositoryPrivacy, orderBy : OptionalArgument Github.InputObject.RepositoryOrder, affiliations : OptionalArgument (List (Maybe Github.Enum.RepositoryAffiliation.RepositoryAffiliation)), isLocked : OptionalArgument Bool }


{-| A list of repositories this user has pinned to their profile

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Affiliation options for repositories returned from the connection
  - isLocked - If non-null, filters repositories according to whether they have been locked

-}
pinnedRepositories : (PinnedRepositoriesOptionalArguments -> PinnedRepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.RepositoryConnection -> Field decodesTo Github.Object.Organization
pinnedRepositories fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, privacy = Absent, orderBy = Absent, affiliations = Absent, isLocked = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "privacy" filledInOptionals.privacy (Encode.enum Github.Enum.RepositoryPrivacy.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeRepositoryOrder, Argument.optional "affiliations" filledInOptionals.affiliations (Encode.enum Github.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionField "pinnedRepositories" optionalArgs object identity


type alias ProjectRequiredArguments =
    { number : Int }


{-| Find project by number.

  - number - The project number to find.

-}
project : ProjectRequiredArguments -> SelectionSet decodesTo Github.Object.Project -> Field (Maybe decodesTo) Github.Object.Organization
project requiredArgs object =
    Object.selectionField "project" [ Argument.required "number" requiredArgs.number Encode.int ] object (identity >> Decode.nullable)


type alias ProjectsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, orderBy : OptionalArgument Github.InputObject.ProjectOrder, search : OptionalArgument String, states : OptionalArgument (List Github.Enum.ProjectState.ProjectState) }


{-| A list of projects under the owner.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - orderBy - Ordering options for projects returned from the connection
  - search - Query to search projects by, currently only searching by name.
  - states - A list of states to filter the projects by.

-}
projects : (ProjectsOptionalArguments -> ProjectsOptionalArguments) -> SelectionSet decodesTo Github.Object.ProjectConnection -> Field decodesTo Github.Object.Organization
projects fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, orderBy = Absent, search = Absent, states = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeProjectOrder, Argument.optional "search" filledInOptionals.search Encode.string, Argument.optional "states" filledInOptionals.states (Encode.enum Github.Enum.ProjectState.toString |> Encode.list) ]
                |> List.filterMap identity
    in
    Object.selectionField "projects" optionalArgs object identity


{-| The HTTP path listing organization's projects
-}
projectsResourcePath : Field Github.Scalar.Uri Github.Object.Organization
projectsResourcePath =
    Object.fieldDecoder "projectsResourcePath" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL listing organization's projects
-}
projectsUrl : Field Github.Scalar.Uri Github.Object.Organization
projectsUrl =
    Object.fieldDecoder "projectsUrl" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


type alias RepositoriesOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, privacy : OptionalArgument Github.Enum.RepositoryPrivacy.RepositoryPrivacy, orderBy : OptionalArgument Github.InputObject.RepositoryOrder, affiliations : OptionalArgument (List (Maybe Github.Enum.RepositoryAffiliation.RepositoryAffiliation)), isLocked : OptionalArgument Bool, isFork : OptionalArgument Bool }


{-| A list of repositories that the user owns.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Affiliation options for repositories returned from the connection
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - isFork - If non-null, filters repositories according to whether they are forks of another repository

-}
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments) -> SelectionSet decodesTo Github.Object.RepositoryConnection -> Field decodesTo Github.Object.Organization
repositories fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, privacy = Absent, orderBy = Absent, affiliations = Absent, isLocked = Absent, isFork = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "privacy" filledInOptionals.privacy (Encode.enum Github.Enum.RepositoryPrivacy.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeRepositoryOrder, Argument.optional "affiliations" filledInOptionals.affiliations (Encode.enum Github.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked Encode.bool, Argument.optional "isFork" filledInOptionals.isFork Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionField "repositories" optionalArgs object identity


type alias RepositoryRequiredArguments =
    { name : String }


{-| Find Repository.

  - name - Name of Repository to find.

-}
repository : RepositoryRequiredArguments -> SelectionSet decodesTo Github.Object.Repository -> Field (Maybe decodesTo) Github.Object.Organization
repository requiredArgs object =
    Object.selectionField "repository" [ Argument.required "name" requiredArgs.name Encode.string ] object (identity >> Decode.nullable)


{-| The HTTP path for this user
-}
resourcePath : Field Github.Scalar.Uri Github.Object.Organization
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| The Organization's SAML Identity Providers
-}
samlIdentityProvider : SelectionSet decodesTo Github.Object.OrganizationIdentityProvider -> Field (Maybe decodesTo) Github.Object.Organization
samlIdentityProvider object =
    Object.selectionField "samlIdentityProvider" [] object (identity >> Decode.nullable)


type alias TeamRequiredArguments =
    { slug : String }


{-| Find an organization's team by its slug.

  - slug - The name or slug of the team to find.

-}
team : TeamRequiredArguments -> SelectionSet decodesTo Github.Object.Team -> Field (Maybe decodesTo) Github.Object.Organization
team requiredArgs object =
    Object.selectionField "team" [ Argument.required "slug" requiredArgs.slug Encode.string ] object (identity >> Decode.nullable)


type alias TeamsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, privacy : OptionalArgument Github.Enum.TeamPrivacy.TeamPrivacy, role : OptionalArgument Github.Enum.TeamRole.TeamRole, query : OptionalArgument String, userLogins : OptionalArgument (List String), orderBy : OptionalArgument Github.InputObject.TeamOrder, ldapMapped : OptionalArgument Bool, rootTeamsOnly : OptionalArgument Bool }


{-| A list of teams in this organization.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - privacy - If non-null, filters teams according to privacy
  - role - If non-null, filters teams according to whether the viewer is an admin or member on team
  - query - If non-null, filters teams with query on team name and team slug
  - userLogins - User logins to filter by
  - orderBy - Ordering options for teams returned from the connection
  - ldapMapped - If true, filters teams that are mapped to an LDAP Group (Enterprise only)
  - rootTeamsOnly - If true, restrict to only root teams

-}
teams : (TeamsOptionalArguments -> TeamsOptionalArguments) -> SelectionSet decodesTo Github.Object.TeamConnection -> Field decodesTo Github.Object.Organization
teams fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, privacy = Absent, role = Absent, query = Absent, userLogins = Absent, orderBy = Absent, ldapMapped = Absent, rootTeamsOnly = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "privacy" filledInOptionals.privacy (Encode.enum Github.Enum.TeamPrivacy.toString), Argument.optional "role" filledInOptionals.role (Encode.enum Github.Enum.TeamRole.toString), Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "userLogins" filledInOptionals.userLogins (Encode.string |> Encode.list), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeTeamOrder, Argument.optional "ldapMapped" filledInOptionals.ldapMapped Encode.bool, Argument.optional "rootTeamsOnly" filledInOptionals.rootTeamsOnly Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionField "teams" optionalArgs object identity


{-| The HTTP path listing organization's teams
-}
teamsResourcePath : Field Github.Scalar.Uri Github.Object.Organization
teamsResourcePath =
    Object.fieldDecoder "teamsResourcePath" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL listing organization's teams
-}
teamsUrl : Field Github.Scalar.Uri Github.Object.Organization
teamsUrl =
    Object.fieldDecoder "teamsUrl" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this user
-}
url : Field Github.Scalar.Uri Github.Object.Organization
url =
    Object.fieldDecoder "url" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri)


{-| Organization is adminable by the viewer.
-}
viewerCanAdminister : Field Bool Github.Object.Organization
viewerCanAdminister =
    Object.fieldDecoder "viewerCanAdminister" [] Decode.bool


{-| Can the current viewer create new projects on this owner.
-}
viewerCanCreateProjects : Field Bool Github.Object.Organization
viewerCanCreateProjects =
    Object.fieldDecoder "viewerCanCreateProjects" [] Decode.bool


{-| Viewer can create repositories on this organization
-}
viewerCanCreateRepositories : Field Bool Github.Object.Organization
viewerCanCreateRepositories =
    Object.fieldDecoder "viewerCanCreateRepositories" [] Decode.bool


{-| Viewer can create teams on this organization.
-}
viewerCanCreateTeams : Field Bool Github.Object.Organization
viewerCanCreateTeams =
    Object.fieldDecoder "viewerCanCreateTeams" [] Decode.bool


{-| Viewer is an active member of this organization.
-}
viewerIsAMember : Field Bool Github.Object.Organization
viewerIsAMember =
    Object.fieldDecoder "viewerIsAMember" [] Decode.bool


{-| The organization's public profile URL.
-}
websiteUrl : Field (Maybe Github.Scalar.Uri) Github.Object.Organization
websiteUrl =
    Object.fieldDecoder "websiteUrl" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map toString, Decode.int |> Decode.map toString, Decode.bool |> Decode.map toString ] |> Decode.map Github.Scalar.Uri |> Decode.nullable)
