#import <Foundation/Foundation.h>
#import "SWGCommonResponse.h"
#import "SWGEnumerationItemResponse.h"
#import "SWGErrorResponse.h"
#import "SWGFilesResponse.h"
#import "SWGIssueChatHistoryResponse.h"
#import "SWGIssueCreateRequest.h"
#import "SWGIssueLogsResponse.h"
#import "SWGIssueResponse.h"
#import "SWGIssueStatusesResponse.h"
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



@interface SWGIssuesApi: NSObject <SWGApi>

extern NSString* kSWGIssuesApiErrorDomain;
extern NSInteger kSWGIssuesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Cancel an Issue for a Customer
/// Transitions an *Issue* to a 'Canceled' status in the workflow.
///
/// @param issueId The primary key of the *Issue*
/// 
///  code:200 message:"Empty response",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGCommonResponse*
-(NSURLSessionTask*) cancelIssueWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;


/// Cancel an Issue appointment for a Customer
/// Transitions an *Issue* from 'Scheduled' to 'Scheduling' status in the workflow.
///
/// @param issueId The primary key of the *Issue*
/// 
///  code:200 message:"Empty response",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGCommonResponse*
-(NSURLSessionTask*) cancelIssueScheduleWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;


/// Add an entry to an Issue's log
/// Creates a new log entry related to an *Issue* object.
///
/// @param issueId The primary key of the *Issue*
/// @param notes Notes to log against the *Issue*
/// 
///  code:200 message:"Collection of *Issue Log* objects",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGIssueLogsResponse*
-(NSURLSessionTask*) createIssueLogWithIssueId: (NSString*) issueId
    notes: (NSString*) notes
    completionHandler: (void (^)(SWGIssueLogsResponse* output, NSError* error)) handler;


/// Removes a file from the Issue's file list
/// Removes an existing file entry related to an *Issue* object.
///
/// @param issueId The primary key of the *Issue*
/// @param fileId The primary key of the *Upload File*
/// 
///  code:200 message:"Collection of *Upload File* objects",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGFilesResponse*
-(NSURLSessionTask*) deleteIssueFileWithIssueId: (NSString*) issueId
    fileId: (NSString*) fileId
    completionHandler: (void (^)(SWGFilesResponse* output, NSError* error)) handler;


/// Removes log entry with id {issue_log_id} on issue {issue_id}
/// Removes an existing log entry related to an *Issue* object.
///
/// @param issueId The primary key of the *Issue*
/// @param issueLogId The primary key of the *Issue Log* to update
/// 
///  code:200 message:"Collection of *Issue Log* objects",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGIssueLogsResponse*
-(NSURLSessionTask*) deleteIssueLogWithIssueId: (NSString*) issueId
    issueLogId: (NSString*) issueLogId
    completionHandler: (void (^)(SWGIssueLogsResponse* output, NSError* error)) handler;


/// Get an Issue
/// Returns an *Issue* object.
///
/// @param issueId The primary key of the *Issue*
/// 
///  code:200 message:"The *Issue* object",
///  code:0 message:"Unexpected error"
///
/// @return SWGIssueResponse*
-(NSURLSessionTask*) getIssueWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler;


/// Retrieves a chat history for a closed issue with issue id {issue_id}
/// Returns a collection of Chat Items with their Transcripts.
///
/// @param issueId The issue id associated with the *Chat*
/// 
///  code:200 message:"Collection of *Chat* objects with a trascript history",
///  code:0 message:"Unexpected error"
///
/// @return SWGIssueChatHistoryResponse*
-(NSURLSessionTask*) getIssueChatHistoryWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGIssueChatHistoryResponse* output, NSError* error)) handler;


/// Return a list of files related to the Issue
/// Returns a list of files related to an *Issue* object.
///
/// @param issueId The primary key of the *Issue*
/// 
///  code:200 message:"Collection of *Upload File* objects",
///  code:0 message:"Unexpected error"
///
/// @return SWGFilesResponse*
-(NSURLSessionTask*) getIssueFilesWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGFilesResponse* output, NSError* error)) handler;


/// Get a collection of all Issue changes
/// Returns a paginated collection of all changes for an *Issue* object.
///
/// @param issueId The primary key of the *Issue*
/// 
///  code:200 message:"Collection of *Issue Log* objects",
///  code:0 message:"Unexpected error"
///
/// @return SWGIssueLogsResponse*
-(NSURLSessionTask*) getIssueLogsWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGIssueLogsResponse* output, NSError* error)) handler;


/// Get 'Category' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Category' keys to labels on *Issue* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'Category' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getIssueMetaCategoriesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get 'Tag' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Tag' keys to labels on *Issue File* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'Tag' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getIssueMetaFileTagsWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get 'Job Status' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Job Status' keys to labels on *Issue* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'Job Status' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getIssueMetaJobStatusesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get 'Resolution' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Resolution' keys to labels on *Issue* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'Resolution' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getIssueMetaResolutionsWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get 'Status' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Status' keys to labels on *Issue* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'Status' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getIssueMetaStatusesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get 'Type' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Type' keys to labels on *Issue* objects.
///
/// 
///  code:200 message:"Dictionary of key/label 'Type' pairs",
///  code:0 message:"Unexpected error"
///
/// @return SWGEnumerationItemResponse*
-(NSURLSessionTask*) getIssueMetaTypesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;


/// Get a collection of Issue status changes
/// Returns a paginated collection of status changes for an *Issue* object.
///
/// @param issueId The primary key of the *Issue*
/// 
///  code:200 message:"Collection of *Issue* status changes",
///  code:0 message:"Unexpected error"
///
/// @return SWGIssueStatusesResponse*
-(NSURLSessionTask*) getIssueStatusHistoryWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGIssueStatusesResponse* output, NSError* error)) handler;


/// Get a collection of Issues
/// Returns a paginated collection of *Issue* objects.
///
/// @param limit Pagination result limit (defaults to 10) (optional)
/// @param start Pagination starting result number (defaults to 0) (optional)
/// @param customerId Optionally limit result to this {customer_id} (optional)
/// @param customersUsersId Optionally limit result to this {customers_users_id} (optional)
/// @param customerLocationId Optionally limit result to this {customer_location_id} (optional)
/// 
///  code:200 message:"Collection of *Issue* objects",
///  code:0 message:"Unexpected error"
///
/// @return SWGIssueResponse*
-(NSURLSessionTask*) getIssuesWithLimit: (NSNumber*) limit
    start: (NSNumber*) start
    customerId: (NSString*) customerId
    customersUsersId: (NSString*) customersUsersId
    customerLocationId: (NSString*) customerLocationId
    completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler;


/// Get an Issue by external_id
/// Lookup an `Issues` object by the external_id field, corrolating to the ID in the callee's system
///
/// @param externalId The Customer&#39;s external ID
/// 
///  code:200 message:"The Issues object",
///  code:0 message:"Unexpected error"
///
/// @return SWGIssueResponse*
-(NSURLSessionTask*) issueLookupByExternalIdWithExternalId: (NSString*) externalId
    completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler;


/// Create/update an Issue for a Customer
/// Creates an *Issue* object (or updates one if the ID is provided) related to a *Customer* object. To create a new object, supply the data for the new object in the request body with the `id` property set to `NULL` or omitted. To **update** an existing entry, ensure the ID of the object to be updated is set in the `id` parameter of the request, and provide any other fields to update.
///
/// @param issues The *Issue* to create (optional)
/// 
///  code:200 message:"The created *Issue* object",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGIssueResponse*
-(NSURLSessionTask*) putIssueWithIssues: (SWGIssueCreateRequest*) issues
    completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler;


/// Resolve an Issue for a Customer
/// Transitions an *Issue* to a 'Resolved' status in the workflow.
///
/// @param issueId The primary key of the *Issue*
/// 
///  code:200 message:"Empty response",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGCommonResponse*
-(NSURLSessionTask*) resolveIssueWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;


/// Schedule an Issue for a Customer
/// Transitions an *Issue* from 'Scheduling' to 'Scheduled' status in the workflow.
///
/// @param issueId The primary key of the *Issue*
/// @param scheduledTime The date-time at which to schedule the *Issue*
/// 
///  code:200 message:"Empty response",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGCommonResponse*
-(NSURLSessionTask*) scheduleIssueWithIssueId: (NSString*) issueId
    scheduledTime: (NSString*) scheduledTime
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;


/// Add a file to the Issue's file list
/// Uploads a new file entry related to an *Issue* object.
///
/// @param file The uploaded file data
/// @param issueId The primary key of the *Issue*
/// @param fileTag The file tag of the file being uploaded
/// 
///  code:200 message:"Collection of *Upload File* objects",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGFilesResponse*
-(NSURLSessionTask*) uploadIssueFileWithFile: (NSURL*) file
    issueId: (NSString*) issueId
    fileTag: (NSString*) fileTag
    completionHandler: (void (^)(SWGFilesResponse* output, NSError* error)) handler;



@end