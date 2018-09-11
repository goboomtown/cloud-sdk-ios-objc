# SWGChatApi

All URIs are relative to *https://api.goboomtown.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatSend**](SWGChatApi.md#chatsend) | **POST** /chat/send/{object}/{object_id} | Sends a message to a Chat
[**getCustomerMetaEmoticons**](SWGChatApi.md#getcustomermetaemoticons) | **GET** /chat/meta/emoticons | Get available emoticons


# **chatSend**
```objc
-(NSURLSessionTask*) chatSendWithObject: (NSString*) object
    objectId: (NSString*) objectId
    body: (SWGChatSendRequest*) body
        completionHandler: (void (^)(SWGChatSendResponse* output, NSError* error)) handler;
```

Sends a message to a Chat

Sends `{message}` to the chat related to the `{object}` with id `{object_id}`. `{object}` should be the name of a type of object which has a chat (E.G. `issues`) and `object_id` should be that object's primary key.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* object = @"object_example"; // The object associated with the *Chat*
NSString* objectId = @"objectId_example"; // The primary key of the object associated with the *Chat*
SWGChatSendRequest* body = [[SWGChatSendRequest alloc] init]; // Message & Sender

SWGChatApi*apiInstance = [[SWGChatApi alloc] init];

// Sends a message to a Chat
[apiInstance chatSendWithObject:object
              objectId:objectId
              body:body
          completionHandler: ^(SWGChatSendResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGChatApi->chatSend: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **NSString***| The object associated with the *Chat* | 
 **objectId** | **NSString***| The primary key of the object associated with the *Chat* | 
 **body** | [**SWGChatSendRequest***](SWGChatSendRequest.md)| Message &amp; Sender | 

### Return type

[**SWGChatSendResponse***](SWGChatSendResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerMetaEmoticons**
```objc
-(NSURLSessionTask*) getCustomerMetaEmoticonsWithCompletionHandler: 
        (void (^)(SWGCustomerMetaEmoticonsResponse* output, NSError* error)) handler;
```

Get available emoticons

Returns a dictionary mapping all available emoji internal names to their possible text-based emoticon equivalents (an array of one or more possible text-based usages which will become that emoji) for example, `emoji-smile` will map to `[\"(smile)\",\":-)\"]` (meaning those values will be converted to a smile emoji)

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];



SWGChatApi*apiInstance = [[SWGChatApi alloc] init];

// Get available emoticons
[apiInstance getCustomerMetaEmoticonsWithCompletionHandler: 
          ^(SWGCustomerMetaEmoticonsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGChatApi->getCustomerMetaEmoticons: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGCustomerMetaEmoticonsResponse***](SWGCustomerMetaEmoticonsResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

