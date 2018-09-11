#import <Foundation/Foundation.h>
#import "SWGCustomerResponse.h"
#import "SWGEnumerationItemResponse.h"
#import "SWGErrorResponse.h"
#import "SWGOrgResponse.h"
#import "SWGOrgTeamCreateRequest.h"
#import "SWGOrgTeamResponse.h"
#import "SWGOrgUserCreateRequest.h"
#import "SWGOrgUserResponse.h"
#import "SWGApi.h"

/**
* Boomtown Cloud API
* The REST API for 3rd-party integrations with the Boomtown Cloud. Authentication is provided as HTTP headers using the credentials provided to you at sign-up time. To access the Cloud API, is recommended to use the open source [Boomtown Cloud SDK](https://github.com/goboomtown) as this handles authentication and data-handling for you, but plain REST can be used as well. If not using a provided SDK, provide authentication details via HTTP headers `X-Boomtown-Token` and `X-Boomtown-Signature` as described [in the SDK documentation](https://github.com/goboomtown/cloud-sdk-php#documentation-for-authorization) 
*
* OpenAPI spec version: 3.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface SWGOrgsApi: NSObject <SWGApi>

extern NSString* kSWGOrgsApiErrorDomain;
extern NSInteger kSWGOrgsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Delete Org Team {team_id}
/// Deletes the *Org Team* object from this Org.
///
/// @param teamId The primary key of the OrgTeam
/// 
///  code:200 message:"Empty response on success",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return void
-(NSURLSessionTask*) deleteOrgTeamWithTeamId: (NSString*) teamId
    completionHandler: (void (^)(NSError* error)) handler;


/// Delete Org User {user_id}
/// Removes all team mappings, and deletes the *Org User* object from this Org.
///
/// @param userId The primary key of the OrgUser
/// 
///  code:200 message:"Empty response on success",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return void
-(NSURLSessionTask*) deleteOrgUserWithUserId: (NSString*) userId
    completionHandler: (void (^)(NSError* error)) handler;


/// Get your Org
/// Returns a *Org* object.
///
/// 
///  code:200 message:"Your *Org* object",
///  code:0 message:"Unexpected error"
///
/// @return SWGOrgResponse*
-(NSURLSessionTask*) getOrgWithCompletionHandler: 
    (void (^)(SWGOrgResponse* output, NSError* error)) handler;


/// Get a collection of Customers for your Org
/// Returns a paginated collection of *Customer* objects related to your *Org* object.
///
/// 
///  code:200 message:"Collection of *Customer* objects",
///  code:0 message:"Unexpected error"
///
/// @return SWGCustomerResponse*
-(NSURLSessionTask*) getOrgCustomersWithCompletionHandler: 
    (void (^)(SWGCustomerResponse* output, NSError* error)) handler;


/// Get an Org Team
/// Returns a *Org Team* object.
///
/// @param orgTeamId The primary key of the OrgTeam
/// 
///  code:200 message:"The *Org Team* object",
///  code:0 message:"Unexpected error"
///
/// @return SWGOrgTeamResponse*
-(NSURLSessionTask*) getOrgTeamWithOrgTeamId: (NSString*) orgTeamId
    completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;


/// Get 'Status' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Status' keys to labels on *Org Team* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'Status' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getOrgTeamMetaStatusesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get 'TrainingType' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'TrainingType' keys to labels on *Org Team* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'TrainingType' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getOrgTeamMetaTrainingTypesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get 'Type' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Type' keys to labels on *Org Team* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'Type' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getOrgTeamMetaTypesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get a collection of all Teams for your Org
/// Returns a paginated collection of *Org Team* objects related to your *Org* object.
///
/// 
///  code:200 message:"Collection of *Org Team* objects",
///  code:0 message:"Unexpected error"
///
/// @return SWGOrgTeamResponse*
-(NSURLSessionTask*) getOrgTeamsWithCompletionHandler: 
    (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;


/// Get Org User {user_id}
/// Returns a *Org User* object.
///
/// @param userId The primary key of the OrgUser
/// 
///  code:200 message:"The *Org User* object",
///  code:0 message:"Unexpected error"
///
/// @return SWGOrgUserResponse*
-(NSURLSessionTask*) getOrgUserWithUserId: (NSString*) userId
    completionHandler: (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;


/// Get 'Status' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Status' keys to labels on *Org User* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'Status' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getOrgUserMetaStatusesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get a collection of Users for your Org
/// Returns a paginated collection of *Org User* objects related to your *Org* object.
///
/// 
///  code:200 message:"Collection of *Org User* objects",
///  code:0 message:"Unexpected error"
///
/// @return SWGOrgUserResponse*
-(NSURLSessionTask*) getOrgUsersWithCompletionHandler: 
    (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;


/// Get a collection of Users for Team {team_id}
/// Returns a paginated collection of *Org User* objects related the specified *Team* object.
///
/// @param teamId The primary key of the OrgTeam
/// 
///  code:200 message:"Collection of *Org Team User* objects",
///  code:0 message:"Unexpected error"
///
/// @return SWGOrgUserResponse*
-(NSURLSessionTask*) getTeamUsersWithTeamId: (NSString*) teamId
    completionHandler: (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;


/// Adds a mapping between Customer {customer_id} and Org Team {team_id}
/// Returns a *Org Team* object.
///
/// @param teamId The primary key of the OrgTeam
/// @param customerId The primary key of the Customer
/// 
///  code:200 message:"A *Org Team* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGOrgTeamResponse*
-(NSURLSessionTask*) mapTeamCustomerWithTeamId: (NSString*) teamId
    customerId: (NSString*) customerId
    completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;


/// Adds a mapping between Location and Org Team
/// Adds a mapping between the `CustomerLocation` identified `{location_id}` and the Org Team identified by `{team_id}`. Returns the `OrgTeam` object.
///
/// @param teamId The primary key of the OrgTeam
/// @param customerId The primary key of the Customer
/// 
///  code:200 message:"A *Org Team* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGOrgTeamResponse*
-(NSURLSessionTask*) mapTeamCustomerLocationWithTeamId: (NSString*) teamId
    customerId: (NSString*) customerId
    completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;


/// Adds a mapping between Org User {user_id} and Org Team {team_id}
/// Returns a *Org Team* object.
///
/// @param teamId The primary key of the OrgTeam
/// @param userId The primary key of the OrgUser
/// 
///  code:200 message:"A *Org Team* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGOrgTeamResponse*
-(NSURLSessionTask*) mapTeamUserWithTeamId: (NSString*) teamId
    userId: (NSString*) userId
    completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;


/// Get an Org by external_id
/// Lookup an `Orgs` object by the external_id field, corrolating to the ID in the callee's system
///
/// @param externalId The Org&#39;s external ID
/// 
///  code:200 message:"The Orgs object",
///  code:0 message:"Unexpected error"
///
/// @return SWGOrgResponse*
-(NSURLSessionTask*) orgLookupByExternalIdWithExternalId: (NSString*) externalId
    completionHandler: (void (^)(SWGOrgResponse* output, NSError* error)) handler;


/// Get a Team by external_id
/// Lookup an `OrgTeam` object by the external_id field, corrolating to the ID in the callee's system
///
/// @param externalId The team&#39;s external ID
/// 
///  code:200 message:"The Issues object",
///  code:0 message:"Unexpected error"
///
/// @return SWGOrgTeamResponse*
-(NSURLSessionTask*) orgTeamLookupByExternalIdWithExternalId: (NSString*) externalId
    completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;


/// Get an Org User by external_id
/// Lookup a `OrgsUsers` by the external_id field, corrolating to the ID in the callee's system
///
/// @param externalId The User&#39;s external ID
/// 
///  code:200 message:"The `OrgsUsers` object",
///  code:0 message:"Unexpected error"
///
/// @return SWGOrgUserResponse*
-(NSURLSessionTask*) orgUserLookupByExternalIdWithExternalId: (NSString*) externalId
    completionHandler: (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;


/// Create/update a Team for this Org
/// Creates or updates, and returns, an `OrgTeam` object. To create a new team, supply the data for the new team in the request body with the `id` property set to `NULL` or omitted. To **update** an existing team, ensure the team ID to update is set in the `id` parameter of the request, and provide any other fields to update.
///
/// @param body The &#x60;OrgTeam&#x60; data
/// 
///  code:200 message:"The created *Org Team* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGOrgTeamResponse*
-(NSURLSessionTask*) putOrgTeamWithBody: (SWGOrgTeamCreateRequest*) body
    completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;


/// Create/update a User for this Org
/// Creates or updates, and returns, an *Org User* object. To create a new object, supply the data for the new object in the request body with the `id` property set to `NULL` or omitted. To **update** an existing entry, ensure the ID of the object to be updated is set in the `id` parameter of the request, and provide any other fields to update.
///
/// @param body The *Org User* to create
/// 
///  code:200 message:"The created *Org User* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGOrgUserResponse*
-(NSURLSessionTask*) putOrgUserWithBody: (SWGOrgUserCreateRequest*) body
    completionHandler: (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;


/// Removes the mapping between Customer {customer_id} and Org Team {team_id}
/// Returns a *Org Team* object.
///
/// @param teamId The primary key of the OrgTeam
/// @param customerId The primary key of the Customer
/// 
///  code:200 message:"A *Org Team* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGOrgTeamResponse*
-(NSURLSessionTask*) unmapTeamCustomerWithTeamId: (NSString*) teamId
    customerId: (NSString*) customerId
    completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;


/// Removes a mapping between Location and Org Team
/// Removes a mapping between th `CustomerLocation` identified `{location_id}` and the Org Team identified by `{team_id}`. Returns the `OrgTeam` object.
///
/// @param teamId The primary key of the OrgTeam
/// @param locationId The primary key of the Customer Location
/// 
///  code:200 message:"A *Org Team* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGOrgTeamResponse*
-(NSURLSessionTask*) unmapTeamCustomerLocationWithTeamId: (NSString*) teamId
    locationId: (NSString*) locationId
    completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;


/// Removes the mapping between Org User {user_id} and Org Team {team_id}
/// Returns a *Org Team* object.
///
/// @param teamId The primary key of the OrgTeam
/// @param userId The primary key of the OrgUser
/// 
///  code:200 message:"A *Org Team* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGOrgTeamResponse*
-(NSURLSessionTask*) unmapTeamUserWithTeamId: (NSString*) teamId
    userId: (NSString*) userId
    completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;


/// Update Org User {user_id}
/// Updates and returns the *Org User* object.
///
/// @param userId The primary key of the OrgUser
/// @param body The *Org User* to update
/// 
///  code:200 message:"The updated *Org User* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGOrgUserResponse*
-(NSURLSessionTask*) updateOrgUserWithUserId: (NSString*) userId
    body: (SWGOrgUserCreateRequest*) body
    completionHandler: (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;



@end
