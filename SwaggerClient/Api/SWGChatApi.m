#import "SWGChatApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGChatSendRequest.h"
#import "SWGChatSendResponse.h"
#import "SWGCustomerMetaEmoticonsResponse.h"
#import "SWGErrorResponse.h"


@interface SWGChatApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGChatApi

NSString* kSWGChatApiErrorDomain = @"SWGChatApiErrorDomain";
NSInteger kSWGChatApiMissingParamErrorCode = 234513;

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
/// Sends a message to a Chat
/// Sends `{message}` to the chat related to the `{object}` with id `{object_id}`. `{object}` should be the name of a type of object which has a chat (E.G. `issues`) and `object_id` should be that object's primary key.
///  @param object The object associated with the *Chat* 
///
///  @param objectId The primary key of the object associated with the *Chat* 
///
///  @param body Message & Sender 
///
///  @returns SWGChatSendResponse*
///
-(NSURLSessionTask*) chatSendWithObject: (NSString*) object
    objectId: (NSString*) objectId
    body: (SWGChatSendRequest*) body
    completionHandler: (void (^)(SWGChatSendResponse* output, NSError* error)) handler {
    // verify the required parameter 'object' is set
    if (object == nil) {
        NSParameterAssert(object);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"object"] };
            NSError* error = [NSError errorWithDomain:kSWGChatApiErrorDomain code:kSWGChatApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'objectId' is set
    if (objectId == nil) {
        NSParameterAssert(objectId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"objectId"] };
            NSError* error = [NSError errorWithDomain:kSWGChatApiErrorDomain code:kSWGChatApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGChatApiErrorDomain code:kSWGChatApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/chat/send/{object}/{object_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (object != nil) {
        pathParams[@"object"] = object;
    }
    if (objectId != nil) {
        pathParams[@"object_id"] = objectId;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"X-Boomtown-Date", @"X-Boomtown-Token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

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
                              responseType: @"SWGChatSendResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGChatSendResponse*)data, error);
                                }
                            }];
}

///
/// Get available emoticons
/// Returns a dictionary mapping all available emoji internal names to their possible text-based emoticon equivalents (an array of one or more possible text-based usages which will become that emoji) for example, `emoji-smile` will map to `[\"(smile)\",\":-)\"]` (meaning those values will be converted to a smile emoji)
///  @returns SWGCustomerMetaEmoticonsResponse*
///
-(NSURLSessionTask*) getCustomerMetaEmoticonsWithCompletionHandler: 
    (void (^)(SWGCustomerMetaEmoticonsResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/chat/meta/emoticons"];

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
                              responseType: @"SWGCustomerMetaEmoticonsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCustomerMetaEmoticonsResponse*)data, error);
                                }
                            }];
}



@end
