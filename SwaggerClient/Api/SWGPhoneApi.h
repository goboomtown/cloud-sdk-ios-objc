#import <Foundation/Foundation.h>
#import "SWGPhoneResponse.h"
#import "SWGQueueEnterResponse.h"
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



@interface SWGPhoneApi: NSObject <SWGApi>

extern NSString* kSWGPhoneApiErrorDomain;
extern NSInteger kSWGPhoneApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Agent answers queued call
/// Trigger for indicating that an agent (represented by a Users object) answered a queued call (from a prior call to `queueEnter`) and is now handling the associated Issue. This will add the `User` to the call and assign the issue to that user if it is unassigned.
///
/// @param externalId External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations
/// @param agentIdentifier Identifier for the User object that answered the call. This will be matched against the following properties in order: &#x60;id&#x60;, &#x60;external_id&#x60;, &#x60;email&#x60;, &#x60;extension&#x60;. Failure to locate a valid &#x60;Users&#x60; object matching this identifier will result in a failure
/// @param autoReassign Optional flag (defaulting to &#x60;false&#x60; if omitted) indicating if the Issue for this call should be re-assigned if this is a subsequent call to &#x60;agentAnswer&#x60; (indicating that a second agent has taken over the call from the first agent, for example) (optional) (default to false)
/// @param logNotes Optional text to be added as a log entry on the issue, attributed to the agent identified by the &#x60;agent_identifier&#x60; parameter (optional)
/// 
///  code:200 message:"",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGPhoneResponse*
-(NSURLSessionTask*) agentAnswerWithExternalId: (NSString*) externalId
    agentIdentifier: (NSString*) agentIdentifier
    autoReassign: (NSNumber*) autoReassign
    logNotes: (NSString*) logNotes
    completionHandler: (void (^)(SWGPhoneResponse* output, NSError* error)) handler;


/// Agent leaves call
/// Trigger for indicating that an agent (represented by a Users object) left a queued call (from a prior call  to `queueEnter`) and is no longer handling the associated Issue. This will remove the User from the Call  object.
///
/// @param externalId External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations
/// @param agentIdentifier Identifier for the User object that answered the call. This will be matched against the following properties in order: &#x60;id&#x60;, &#x60;external_id&#x60;, &#x60;email&#x60;, &#x60;extension&#x60;. Failure to locate a valid &#x60;Users&#x60; object matching this identifier will result in a failure
/// @param autoResolve Optional flag (defaulting to &#x60;false&#x60;) indicating if the Issue for this call should be resolved (optional) (default to false)
/// @param logNotes Optional text to be added as a log entry on the issue, attributed to the agent identified by the &#x60;agent_identifier&#x60; parameter (optional)
/// 
///  code:200 message:"",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGPhoneResponse*
-(NSURLSessionTask*) agentHangupWithExternalId: (NSString*) externalId
    agentIdentifier: (NSString*) agentIdentifier
    autoResolve: (NSNumber*) autoResolve
    logNotes: (NSString*) logNotes
    completionHandler: (void (^)(SWGPhoneResponse* output, NSError* error)) handler;


/// Customer enters call queue
/// Trigger for a Customer entering a phone system call queue, used to trigger the start of a call. This will match or create an Issue, Customer, Customer Location and Customer User.
///
/// @param externalId External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and will be used to identify all future API operations on this call.
/// @param cidNumber Phone number portion of Caller ID (CID) data, representing the phone number of the Customer who called into the queue. String will be parsed numerically against valid phone number syntax (E.G. [NANP format](https://en.wikipedia.org/wiki/North_American_Numbering_Plan))
/// @param didNumber Dialed Direct Inward Dialing number (DID) on the phone system, indicating the line the customer dialed in to.  String will be parsed numerically against valid phone number syntax (E.G. [NANP format](https://en.wikipedia.org/wiki/North_American_Numbering_Plan))
/// @param cidName Caller name portion of the Caller ID (CID) data, containing the caller&#39;s name (if present) (optional)
/// @param qid Queue identifier on the phone system, for tracking which queue on the phone the user has entered (optional)
/// @param searchObject Object to perform searching against for purpose of resolving an exisitng customer, required if sending search_query. Accepted values are customer, customer_location, &amp; customer_user. (optional)
/// @param searchQuery Query to perform against the search_object for the purpose of resolving an existing customer. (optional)
/// 
///  code:200 message:"",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGQueueEnterResponse*
-(NSURLSessionTask*) queueEnterWithExternalId: (NSString*) externalId
    cidNumber: (NSString*) cidNumber
    didNumber: (NSString*) didNumber
    cidName: (NSString*) cidName
    qid: (NSString*) qid
    searchObject: (NSString*) searchObject
    searchQuery: (NSString*) searchQuery
    completionHandler: (void (^)(SWGQueueEnterResponse* output, NSError* error)) handler;


/// Customer leaves call
/// Trigger for the end of a queued call previously triggered from `queueEnter` representing that the caller has left the queue (by hanging up or being disconnected). This ends the Call object and updates it's duration.
///
/// @param externalId External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations
/// @param autoResolve Optional flag (defaulting to &#x60;false&#x60;) indicating if the Issue for this call should be resolved (optional) (default to false)
/// @param logNotes Optional text to be added as a log entry on the issue, posted as a system note (not attributed to any agent) (optional)
/// @param recording Optional file to be attached to this call, representing recording of the call. Can be any file type, E.G. a &#x60;.wav&#x60; audio file, or a &#x60;.pdf&#x60; transcript from speech recognition / dictation software. (optional)
/// 
///  code:200 message:"",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGPhoneResponse*
-(NSURLSessionTask*) queueExitWithExternalId: (NSString*) externalId
    autoResolve: (NSNumber*) autoResolve
    logNotes: (NSString*) logNotes
    recording: (NSURL*) recording
    completionHandler: (void (^)(SWGPhoneResponse* output, NSError* error)) handler;



@end
