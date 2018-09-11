#import "SWGIssuesApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGCommonResponse.h"
#import "SWGEnumerationItemResponse.h"
#import "SWGErrorResponse.h"
#import "SWGFilesResponse.h"
#import "SWGIssueChatHistoryResponse.h"
#import "SWGIssueCreateRequest.h"
#import "SWGIssueLogsResponse.h"
#import "SWGIssueResponse.h"
#import "SWGIssueStatusesResponse.h"


@interface SWGIssuesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGIssuesApi

NSString* kSWGIssuesApiErrorDomain = @"SWGIssuesApiErrorDomain";
NSInteger kSWGIssuesApiMissingParamErrorCode = 234513;

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
/// Cancel an Issue for a Customer
/// Transitions an *Issue* to a 'Canceled' status in the workflow.
///  @param issueId The primary key of the *Issue* 
///
///  @returns SWGCommonResponse*
///
-(NSURLSessionTask*) cancelIssueWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/cancel/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

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
                              responseType: @"SWGCommonResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCommonResponse*)data, error);
                                }
                            }];
}

///
/// Cancel an Issue appointment for a Customer
/// Transitions an *Issue* from 'Scheduled' to 'Scheduling' status in the workflow.
///  @param issueId The primary key of the *Issue* 
///
///  @returns SWGCommonResponse*
///
-(NSURLSessionTask*) cancelIssueScheduleWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/cancel_schedule/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

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
                              responseType: @"SWGCommonResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCommonResponse*)data, error);
                                }
                            }];
}

///
/// Add an entry to an Issue's log
/// Creates a new log entry related to an *Issue* object.
///  @param issueId The primary key of the *Issue* 
///
///  @param notes Notes to log against the *Issue* 
///
///  @returns SWGIssueLogsResponse*
///
-(NSURLSessionTask*) createIssueLogWithIssueId: (NSString*) issueId
    notes: (NSString*) notes
    completionHandler: (void (^)(SWGIssueLogsResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'notes' is set
    if (notes == nil) {
        NSParameterAssert(notes);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"notes"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/log/put/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (notes) {
        formParams[@"notes"] = notes;
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
                              responseType: @"SWGIssueLogsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIssueLogsResponse*)data, error);
                                }
                            }];
}

///
/// Removes a file from the Issue's file list
/// Removes an existing file entry related to an *Issue* object.
///  @param issueId The primary key of the *Issue* 
///
///  @param fileId The primary key of the *Upload File* 
///
///  @returns SWGFilesResponse*
///
-(NSURLSessionTask*) deleteIssueFileWithIssueId: (NSString*) issueId
    fileId: (NSString*) fileId
    completionHandler: (void (^)(SWGFilesResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'fileId' is set
    if (fileId == nil) {
        NSParameterAssert(fileId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fileId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/file/delete/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (fileId) {
        formParams[@"file_id"] = fileId;
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
                              responseType: @"SWGFilesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGFilesResponse*)data, error);
                                }
                            }];
}

///
/// Removes log entry with id {issue_log_id} on issue {issue_id}
/// Removes an existing log entry related to an *Issue* object.
///  @param issueId The primary key of the *Issue* 
///
///  @param issueLogId The primary key of the *Issue Log* to update 
///
///  @returns SWGIssueLogsResponse*
///
-(NSURLSessionTask*) deleteIssueLogWithIssueId: (NSString*) issueId
    issueLogId: (NSString*) issueLogId
    completionHandler: (void (^)(SWGIssueLogsResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'issueLogId' is set
    if (issueLogId == nil) {
        NSParameterAssert(issueLogId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueLogId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/log/delete/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (issueLogId) {
        formParams[@"issue_log_id"] = issueLogId;
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
                              responseType: @"SWGIssueLogsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIssueLogsResponse*)data, error);
                                }
                            }];
}

///
/// Get an Issue
/// Returns an *Issue* object.
///  @param issueId The primary key of the *Issue* 
///
///  @returns SWGIssueResponse*
///
-(NSURLSessionTask*) getIssueWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/get/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGIssueResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIssueResponse*)data, error);
                                }
                            }];
}

///
/// Retrieves a chat history for a closed issue with issue id {issue_id}
/// Returns a collection of Chat Items with their Transcripts.
///  @param issueId The issue id associated with the *Chat* 
///
///  @returns SWGIssueChatHistoryResponse*
///
-(NSURLSessionTask*) getIssueChatHistoryWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGIssueChatHistoryResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/chat/history/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGIssueChatHistoryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIssueChatHistoryResponse*)data, error);
                                }
                            }];
}

///
/// Return a list of files related to the Issue
/// Returns a list of files related to an *Issue* object.
///  @param issueId The primary key of the *Issue* 
///
///  @returns SWGFilesResponse*
///
-(NSURLSessionTask*) getIssueFilesWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGFilesResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/files/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGFilesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGFilesResponse*)data, error);
                                }
                            }];
}

///
/// Get a collection of all Issue changes
/// Returns a paginated collection of all changes for an *Issue* object.
///  @param issueId The primary key of the *Issue* 
///
///  @returns SWGIssueLogsResponse*
///
-(NSURLSessionTask*) getIssueLogsWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGIssueLogsResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/log/history/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGIssueLogsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIssueLogsResponse*)data, error);
                                }
                            }];
}

///
/// Get 'Category' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Category' keys to labels on *Issue* objects.
///  @returns SWGEnumerationItemResponse*
///
-(NSURLSessionTask*) getIssueMetaCategoriesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/meta/categories"];

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGEnumerationItemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEnumerationItemResponse*)data, error);
                                }
                            }];
}

///
/// Get 'Tag' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Tag' keys to labels on *Issue File* objects.
///  @returns SWGEnumerationItemResponse*
///
-(NSURLSessionTask*) getIssueMetaFileTagsWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/meta/file_tags"];

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGEnumerationItemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEnumerationItemResponse*)data, error);
                                }
                            }];
}

///
/// Get 'Job Status' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Job Status' keys to labels on *Issue* objects.
///  @returns SWGEnumerationItemResponse*
///
-(NSURLSessionTask*) getIssueMetaJobStatusesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/meta/jobs"];

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGEnumerationItemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEnumerationItemResponse*)data, error);
                                }
                            }];
}

///
/// Get 'Resolution' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Resolution' keys to labels on *Issue* objects.
///  @returns SWGEnumerationItemResponse*
///
-(NSURLSessionTask*) getIssueMetaResolutionsWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/meta/resolutions"];

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGEnumerationItemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEnumerationItemResponse*)data, error);
                                }
                            }];
}

///
/// Get 'Status' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Status' keys to labels on *Issue* objects.
///  @returns SWGEnumerationItemResponse*
///
-(NSURLSessionTask*) getIssueMetaStatusesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/meta/statuses"];

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGEnumerationItemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEnumerationItemResponse*)data, error);
                                }
                            }];
}

///
/// Get 'Type' dictionary for mapping keys to labels
/// Returns a dictionary for mapping 'Type' keys to labels on *Issue* objects.
///  @returns SWGEnumerationItemResponse*
///
-(NSURLSessionTask*) getIssueMetaTypesWithCompletionHandler: 
    (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/meta/types"];

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGEnumerationItemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGEnumerationItemResponse*)data, error);
                                }
                            }];
}

///
/// Get a collection of Issue status changes
/// Returns a paginated collection of status changes for an *Issue* object.
///  @param issueId The primary key of the *Issue* 
///
///  @returns SWGIssueStatusesResponse*
///
-(NSURLSessionTask*) getIssueStatusHistoryWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGIssueStatusesResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/status/history/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGIssueStatusesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIssueStatusesResponse*)data, error);
                                }
                            }];
}

///
/// Get a collection of Issues
/// Returns a paginated collection of *Issue* objects.
///  @param limit Pagination result limit (defaults to 10) (optional)
///
///  @param start Pagination starting result number (defaults to 0) (optional)
///
///  @param customerId Optionally limit result to this {customer_id} (optional)
///
///  @param customersUsersId Optionally limit result to this {customers_users_id} (optional)
///
///  @param customerLocationId Optionally limit result to this {customer_location_id} (optional)
///
///  @returns SWGIssueResponse*
///
-(NSURLSessionTask*) getIssuesWithLimit: (NSNumber*) limit
    start: (NSNumber*) start
    customerId: (NSString*) customerId
    customersUsersId: (NSString*) customersUsersId
    customerLocationId: (NSString*) customerLocationId
    completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (customerId != nil) {
        queryParams[@"customer_id"] = customerId;
    }
    if (customersUsersId != nil) {
        queryParams[@"customers_users_id"] = customersUsersId;
    }
    if (customerLocationId != nil) {
        queryParams[@"customer_location_id"] = customerLocationId;
    }
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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGIssueResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIssueResponse*)data, error);
                                }
                            }];
}

///
/// Get an Issue by external_id
/// Lookup an `Issues` object by the external_id field, corrolating to the ID in the callee's system
///  @param externalId The Customer's external ID 
///
///  @returns SWGIssueResponse*
///
-(NSURLSessionTask*) issueLookupByExternalIdWithExternalId: (NSString*) externalId
    completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler {
    // verify the required parameter 'externalId' is set
    if (externalId == nil) {
        NSParameterAssert(externalId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"externalId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/lookupByExternalId"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (externalId != nil) {
        queryParams[@"external_id"] = externalId;
    }
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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGIssueResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIssueResponse*)data, error);
                                }
                            }];
}

///
/// Create/update an Issue for a Customer
/// Creates an *Issue* object (or updates one if the ID is provided) related to a *Customer* object. To create a new object, supply the data for the new object in the request body with the `id` property set to `NULL` or omitted. To **update** an existing entry, ensure the ID of the object to be updated is set in the `id` parameter of the request, and provide any other fields to update.
///  @param issues The *Issue* to create (optional)
///
///  @returns SWGIssueResponse*
///
-(NSURLSessionTask*) putIssueWithIssues: (SWGIssueCreateRequest*) issues
    completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/put"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = issues;

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
                              responseType: @"SWGIssueResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIssueResponse*)data, error);
                                }
                            }];
}

///
/// Resolve an Issue for a Customer
/// Transitions an *Issue* to a 'Resolved' status in the workflow.
///  @param issueId The primary key of the *Issue* 
///
///  @returns SWGCommonResponse*
///
-(NSURLSessionTask*) resolveIssueWithIssueId: (NSString*) issueId
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/resolve/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

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
                              responseType: @"SWGCommonResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCommonResponse*)data, error);
                                }
                            }];
}

///
/// Schedule an Issue for a Customer
/// Transitions an *Issue* from 'Scheduling' to 'Scheduled' status in the workflow.
///  @param issueId The primary key of the *Issue* 
///
///  @param scheduledTime The date-time at which to schedule the *Issue* 
///
///  @returns SWGCommonResponse*
///
-(NSURLSessionTask*) scheduleIssueWithIssueId: (NSString*) issueId
    scheduledTime: (NSString*) scheduledTime
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'scheduledTime' is set
    if (scheduledTime == nil) {
        NSParameterAssert(scheduledTime);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scheduledTime"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/schedule/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (scheduledTime != nil) {
        queryParams[@"scheduled_time"] = scheduledTime;
    }
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
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

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
                              responseType: @"SWGCommonResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCommonResponse*)data, error);
                                }
                            }];
}

///
/// Add a file to the Issue's file list
/// Uploads a new file entry related to an *Issue* object.
///  @param file The uploaded file data 
///
///  @param issueId The primary key of the *Issue* 
///
///  @param fileTag The file tag of the file being uploaded 
///
///  @returns SWGFilesResponse*
///
-(NSURLSessionTask*) uploadIssueFileWithFile: (NSURL*) file
    issueId: (NSString*) issueId
    fileTag: (NSString*) fileTag
    completionHandler: (void (^)(SWGFilesResponse* output, NSError* error)) handler {
    // verify the required parameter 'file' is set
    if (file == nil) {
        NSParameterAssert(file);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"file"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'issueId' is set
    if (issueId == nil) {
        NSParameterAssert(issueId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueId"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'fileTag' is set
    if (fileTag == nil) {
        NSParameterAssert(fileTag);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fileTag"] };
            NSError* error = [NSError errorWithDomain:kSWGIssuesApiErrorDomain code:kSWGIssuesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/issues/file/upload/{issue_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (issueId != nil) {
        pathParams[@"issue_id"] = issueId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (fileTag != nil) {
        queryParams[@"file_tag"] = fileTag;
    }
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Signature", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"file"] = file;

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
                              responseType: @"SWGFilesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGFilesResponse*)data, error);
                                }
                            }];
}



@end
