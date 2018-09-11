#import "SWGPhoneApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGPhoneResponse.h"
#import "SWGQueueEnterResponse.h"


@interface SWGPhoneApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGPhoneApi

NSString* kSWGPhoneApiErrorDomain = @"SWGPhoneApiErrorDomain";
NSInteger kSWGPhoneApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Agent answers queued call
/// Trigger for indicating that an agent (represented by a Users object) answered a queued call (from a prior call to `queueEnter`) and is now handling the associated Issue. This will add the `User` to the call and assign the issue to that user if it is unassigned.
///  @param externalId External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations 
///
///  @param agentIdentifier Identifier for the User object that answered the call. This will be matched against the following properties in order: `id`, `external_id`, `email`, `extension`. Failure to locate a valid `Users` object matching this identifier will result in a failure 
///
///  @param autoReassign Optional flag (defaulting to `false` if omitted) indicating if the Issue for this call should be re-assigned if this is a subsequent call to `agentAnswer` (indicating that a second agent has taken over the call from the first agent, for example) (optional, default to false)
///
///  @param logNotes Optional text to be added as a log entry on the issue, attributed to the agent identified by the `agent_identifier` parameter (optional)
///
///  @returns SWGPhoneResponse*
///
-(NSURLSessionTask*) agentAnswerWithExternalId: (NSString*) externalId
    agentIdentifier: (NSString*) agentIdentifier
    autoReassign: (NSNumber*) autoReassign
    logNotes: (NSString*) logNotes
    completionHandler: (void (^)(SWGPhoneResponse* output, NSError* error)) handler {
    // verify the required parameter 'externalId' is set
    if (externalId == nil) {
        NSParameterAssert(externalId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"externalId"] };
            NSError* error = [NSError errorWithDomain:kSWGPhoneApiErrorDomain code:kSWGPhoneApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'agentIdentifier' is set
    if (agentIdentifier == nil) {
        NSParameterAssert(agentIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"agentIdentifier"] };
            NSError* error = [NSError errorWithDomain:kSWGPhoneApiErrorDomain code:kSWGPhoneApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/agentAnswer"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (externalId) {
        formParams[@"external_id"] = externalId;
    }
    if (agentIdentifier) {
        formParams[@"agent_identifier"] = agentIdentifier;
    }
    if (autoReassign) {
        formParams[@"auto_reassign"] = autoReassign;
    }
    if (logNotes) {
        formParams[@"log_notes"] = logNotes;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPhoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPhoneResponse*)data, error);
                                }
                            }];
}

///
/// Agent leaves call
/// Trigger for indicating that an agent (represented by a Users object) left a queued call (from a prior call  to `queueEnter`) and is no longer handling the associated Issue. This will remove the User from the Call  object.
///  @param externalId External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations 
///
///  @param agentIdentifier Identifier for the User object that answered the call. This will be matched against the following properties in order: `id`, `external_id`, `email`, `extension`. Failure to locate a valid `Users` object matching this identifier will result in a failure 
///
///  @param autoResolve Optional flag (defaulting to `false`) indicating if the Issue for this call should be resolved (optional, default to false)
///
///  @param logNotes Optional text to be added as a log entry on the issue, attributed to the agent identified by the `agent_identifier` parameter (optional)
///
///  @returns SWGPhoneResponse*
///
-(NSURLSessionTask*) agentHangupWithExternalId: (NSString*) externalId
    agentIdentifier: (NSString*) agentIdentifier
    autoResolve: (NSNumber*) autoResolve
    logNotes: (NSString*) logNotes
    completionHandler: (void (^)(SWGPhoneResponse* output, NSError* error)) handler {
    // verify the required parameter 'externalId' is set
    if (externalId == nil) {
        NSParameterAssert(externalId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"externalId"] };
            NSError* error = [NSError errorWithDomain:kSWGPhoneApiErrorDomain code:kSWGPhoneApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'agentIdentifier' is set
    if (agentIdentifier == nil) {
        NSParameterAssert(agentIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"agentIdentifier"] };
            NSError* error = [NSError errorWithDomain:kSWGPhoneApiErrorDomain code:kSWGPhoneApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/agentHangup"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (externalId) {
        formParams[@"external_id"] = externalId;
    }
    if (agentIdentifier) {
        formParams[@"agent_identifier"] = agentIdentifier;
    }
    if (autoResolve) {
        formParams[@"auto_resolve"] = autoResolve;
    }
    if (logNotes) {
        formParams[@"log_notes"] = logNotes;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPhoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPhoneResponse*)data, error);
                                }
                            }];
}

///
/// Customer enters call queue
/// Trigger for a Customer entering a phone system call queue, used to trigger the start of a call. This will match or create an Issue, Customer, Customer Location and Customer User.
///  @param externalId External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and will be used to identify all future API operations on this call. 
///
///  @param cidNumber Phone number portion of Caller ID (CID) data, representing the phone number of the Customer who called into the queue. String will be parsed numerically against valid phone number syntax (E.G. [NANP format](https://en.wikipedia.org/wiki/North_American_Numbering_Plan)) 
///
///  @param didNumber Dialed Direct Inward Dialing number (DID) on the phone system, indicating the line the customer dialed in to.  String will be parsed numerically against valid phone number syntax (E.G. [NANP format](https://en.wikipedia.org/wiki/North_American_Numbering_Plan)) 
///
///  @param cidName Caller name portion of the Caller ID (CID) data, containing the caller's name (if present) (optional)
///
///  @param qid Queue identifier on the phone system, for tracking which queue on the phone the user has entered (optional)
///
///  @param searchObject Object to perform searching against for purpose of resolving an exisitng customer, required if sending search_query. Accepted values are customer, customer_location, & customer_user. (optional)
///
///  @param searchQuery Query to perform against the search_object for the purpose of resolving an existing customer. (optional)
///
///  @returns SWGQueueEnterResponse*
///
-(NSURLSessionTask*) queueEnterWithExternalId: (NSString*) externalId
    cidNumber: (NSString*) cidNumber
    didNumber: (NSString*) didNumber
    cidName: (NSString*) cidName
    qid: (NSString*) qid
    searchObject: (NSString*) searchObject
    searchQuery: (NSString*) searchQuery
    completionHandler: (void (^)(SWGQueueEnterResponse* output, NSError* error)) handler {
    // verify the required parameter 'externalId' is set
    if (externalId == nil) {
        NSParameterAssert(externalId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"externalId"] };
            NSError* error = [NSError errorWithDomain:kSWGPhoneApiErrorDomain code:kSWGPhoneApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'cidNumber' is set
    if (cidNumber == nil) {
        NSParameterAssert(cidNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"cidNumber"] };
            NSError* error = [NSError errorWithDomain:kSWGPhoneApiErrorDomain code:kSWGPhoneApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'didNumber' is set
    if (didNumber == nil) {
        NSParameterAssert(didNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"didNumber"] };
            NSError* error = [NSError errorWithDomain:kSWGPhoneApiErrorDomain code:kSWGPhoneApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/queueEnter"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (externalId) {
        formParams[@"external_id"] = externalId;
    }
    if (cidNumber) {
        formParams[@"cid_number"] = cidNumber;
    }
    if (cidName) {
        formParams[@"cid_name"] = cidName;
    }
    if (didNumber) {
        formParams[@"did_number"] = didNumber;
    }
    if (qid) {
        formParams[@"qid"] = qid;
    }
    if (searchObject) {
        formParams[@"search_object"] = searchObject;
    }
    if (searchQuery) {
        formParams[@"search_query"] = searchQuery;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGQueueEnterResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGQueueEnterResponse*)data, error);
                                }
                            }];
}

///
/// Customer leaves call
/// Trigger for the end of a queued call previously triggered from `queueEnter` representing that the caller has left the queue (by hanging up or being disconnected). This ends the Call object and updates it's duration.
///  @param externalId External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations 
///
///  @param autoResolve Optional flag (defaulting to `false`) indicating if the Issue for this call should be resolved (optional, default to false)
///
///  @param logNotes Optional text to be added as a log entry on the issue, posted as a system note (not attributed to any agent) (optional)
///
///  @param recording Optional file to be attached to this call, representing recording of the call. Can be any file type, E.G. a `.wav` audio file, or a `.pdf` transcript from speech recognition / dictation software. (optional)
///
///  @returns SWGPhoneResponse*
///
-(NSURLSessionTask*) queueExitWithExternalId: (NSString*) externalId
    autoResolve: (NSNumber*) autoResolve
    logNotes: (NSString*) logNotes
    recording: (NSURL*) recording
    completionHandler: (void (^)(SWGPhoneResponse* output, NSError* error)) handler {
    // verify the required parameter 'externalId' is set
    if (externalId == nil) {
        NSParameterAssert(externalId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"externalId"] };
            NSError* error = [NSError errorWithDomain:kSWGPhoneApiErrorDomain code:kSWGPhoneApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phone/queueExit"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (externalId) {
        formParams[@"external_id"] = externalId;
    }
    if (autoResolve) {
        formParams[@"auto_resolve"] = autoResolve;
    }
    if (logNotes) {
        formParams[@"log_notes"] = logNotes;
    }
    localVarFiles[@"recording"] = recording;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPhoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPhoneResponse*)data, error);
                                }
                            }];
}



@end
