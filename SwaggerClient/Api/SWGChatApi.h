#import <Foundation/Foundation.h>
#import "SWGChatSendRequest.h"
#import "SWGChatSendResponse.h"
#import "SWGCustomerMetaEmoticonsResponse.h"
#import "SWGErrorResponse.h"
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



@interface SWGChatApi: NSObject <SWGApi>

extern NSString* kSWGChatApiErrorDomain;
extern NSInteger kSWGChatApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Sends a message to a Chat
/// Sends `{message}` to the chat related to the `{object}` with id `{object_id}`. `{object}` should be the name of a type of object which has a chat (E.G. `issues`) and `object_id` should be that object's primary key.
///
/// @param object The object associated with the *Chat*
/// @param objectId The primary key of the object associated with the *Chat*
/// @param body Message &amp; Sender
/// 
///  code:200 message:"Returns 'Message Received' on success",
///  code:400 message:"",
///  code:403 message:"",
///  code:404 message:"",
///  code:422 message:"",
///  code:500 message:""
///
/// @return SWGChatSendResponse*
-(NSURLSessionTask*) chatSendWithObject: (NSString*) object
    objectId: (NSString*) objectId
    body: (SWGChatSendRequest*) body
    completionHandler: (void (^)(SWGChatSendResponse* output, NSError* error)) handler;


/// Get available emoticons
/// Returns a dictionary mapping all available emoji internal names to their possible text-based emoticon equivalents (an array of one or more possible text-based usages which will become that emoji) for example, `emoji-smile` will map to `[\"(smile)\",\":-)\"]` (meaning those values will be converted to a smile emoji)
///
/// 
///  code:200 message:"Dictionary of emoji keys to array of emoticon values",
///  code:0 message:"Unexpected error"
///
/// @return SWGCustomerMetaEmoticonsResponse*
-(NSURLSessionTask*) getCustomerMetaEmoticonsWithCompletionHandler: 
    (void (^)(SWGCustomerMetaEmoticonsResponse* output, NSError* error)) handler;



@end