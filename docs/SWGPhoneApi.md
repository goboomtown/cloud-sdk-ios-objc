# SWGPhoneApi

All URIs are relative to *https://api.goboomtown.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agentAnswer**](SWGPhoneApi.md#agentanswer) | **POST** /phone/agentAnswer | Agent answers queued call
[**agentHangup**](SWGPhoneApi.md#agenthangup) | **POST** /phone/agentHangup | Agent leaves call
[**queueEnter**](SWGPhoneApi.md#queueenter) | **POST** /phone/queueEnter | Customer enters call queue
[**queueExit**](SWGPhoneApi.md#queueexit) | **POST** /phone/queueExit | Customer leaves call


# **agentAnswer**
```objc
-(NSURLSessionTask*) agentAnswerWithExternalId: (NSString*) externalId
    agentIdentifier: (NSString*) agentIdentifier
    autoReassign: (NSNumber*) autoReassign
    logNotes: (NSString*) logNotes
        completionHandler: (void (^)(SWGPhoneResponse* output, NSError* error)) handler;
```

Agent answers queued call

Trigger for indicating that an agent (represented by a Users object) answered a queued call (from a prior call to `queueEnter`) and is now handling the associated Issue. This will add the `User` to the call and assign the issue to that user if it is unassigned.

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


NSString* externalId = @"externalId_example"; // External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations
NSString* agentIdentifier = @"agentIdentifier_example"; // Identifier for the User object that answered the call. This will be matched against the following properties in order: `id`, `external_id`, `email`, `extension`. Failure to locate a valid `Users` object matching this identifier will result in a failure
NSNumber* autoReassign = @false; // Optional flag (defaulting to `false` if omitted) indicating if the Issue for this call should be re-assigned if this is a subsequent call to `agentAnswer` (indicating that a second agent has taken over the call from the first agent, for example) (optional) (default to false)
NSString* logNotes = @"logNotes_example"; // Optional text to be added as a log entry on the issue, attributed to the agent identified by the `agent_identifier` parameter (optional)

SWGPhoneApi*apiInstance = [[SWGPhoneApi alloc] init];

// Agent answers queued call
[apiInstance agentAnswerWithExternalId:externalId
              agentIdentifier:agentIdentifier
              autoReassign:autoReassign
              logNotes:logNotes
          completionHandler: ^(SWGPhoneResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPhoneApi->agentAnswer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations | 
 **agentIdentifier** | **NSString***| Identifier for the User object that answered the call. This will be matched against the following properties in order: &#x60;id&#x60;, &#x60;external_id&#x60;, &#x60;email&#x60;, &#x60;extension&#x60;. Failure to locate a valid &#x60;Users&#x60; object matching this identifier will result in a failure | 
 **autoReassign** | **NSNumber***| Optional flag (defaulting to &#x60;false&#x60; if omitted) indicating if the Issue for this call should be re-assigned if this is a subsequent call to &#x60;agentAnswer&#x60; (indicating that a second agent has taken over the call from the first agent, for example) | [optional] [default to false]
 **logNotes** | **NSString***| Optional text to be added as a log entry on the issue, attributed to the agent identified by the &#x60;agent_identifier&#x60; parameter | [optional] 

### Return type

[**SWGPhoneResponse***](SWGPhoneResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **agentHangup**
```objc
-(NSURLSessionTask*) agentHangupWithExternalId: (NSString*) externalId
    agentIdentifier: (NSString*) agentIdentifier
    autoResolve: (NSNumber*) autoResolve
    logNotes: (NSString*) logNotes
        completionHandler: (void (^)(SWGPhoneResponse* output, NSError* error)) handler;
```

Agent leaves call

Trigger for indicating that an agent (represented by a Users object) left a queued call (from a prior call  to `queueEnter`) and is no longer handling the associated Issue. This will remove the User from the Call  object.

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


NSString* externalId = @"externalId_example"; // External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations
NSString* agentIdentifier = @"agentIdentifier_example"; // Identifier for the User object that answered the call. This will be matched against the following properties in order: `id`, `external_id`, `email`, `extension`. Failure to locate a valid `Users` object matching this identifier will result in a failure
NSNumber* autoResolve = @false; // Optional flag (defaulting to `false`) indicating if the Issue for this call should be resolved (optional) (default to false)
NSString* logNotes = @"logNotes_example"; // Optional text to be added as a log entry on the issue, attributed to the agent identified by the `agent_identifier` parameter (optional)

SWGPhoneApi*apiInstance = [[SWGPhoneApi alloc] init];

// Agent leaves call
[apiInstance agentHangupWithExternalId:externalId
              agentIdentifier:agentIdentifier
              autoResolve:autoResolve
              logNotes:logNotes
          completionHandler: ^(SWGPhoneResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPhoneApi->agentHangup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations | 
 **agentIdentifier** | **NSString***| Identifier for the User object that answered the call. This will be matched against the following properties in order: &#x60;id&#x60;, &#x60;external_id&#x60;, &#x60;email&#x60;, &#x60;extension&#x60;. Failure to locate a valid &#x60;Users&#x60; object matching this identifier will result in a failure | 
 **autoResolve** | **NSNumber***| Optional flag (defaulting to &#x60;false&#x60;) indicating if the Issue for this call should be resolved | [optional] [default to false]
 **logNotes** | **NSString***| Optional text to be added as a log entry on the issue, attributed to the agent identified by the &#x60;agent_identifier&#x60; parameter | [optional] 

### Return type

[**SWGPhoneResponse***](SWGPhoneResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queueEnter**
```objc
-(NSURLSessionTask*) queueEnterWithExternalId: (NSString*) externalId
    cidNumber: (NSString*) cidNumber
    didNumber: (NSString*) didNumber
    cidName: (NSString*) cidName
    qid: (NSString*) qid
    searchObject: (NSString*) searchObject
    searchQuery: (NSString*) searchQuery
        completionHandler: (void (^)(SWGQueueEnterResponse* output, NSError* error)) handler;
```

Customer enters call queue

Trigger for a Customer entering a phone system call queue, used to trigger the start of a call. This will match or create an Issue, Customer, Customer Location and Customer User.

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


NSString* externalId = @"externalId_example"; // External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and will be used to identify all future API operations on this call.
NSString* cidNumber = @"cidNumber_example"; // Phone number portion of Caller ID (CID) data, representing the phone number of the Customer who called into the queue. String will be parsed numerically against valid phone number syntax (E.G. [NANP format](https://en.wikipedia.org/wiki/North_American_Numbering_Plan))
NSString* didNumber = @"didNumber_example"; // Dialed Direct Inward Dialing number (DID) on the phone system, indicating the line the customer dialed in to.  String will be parsed numerically against valid phone number syntax (E.G. [NANP format](https://en.wikipedia.org/wiki/North_American_Numbering_Plan))
NSString* cidName = @"cidName_example"; // Caller name portion of the Caller ID (CID) data, containing the caller's name (if present) (optional)
NSString* qid = @"qid_example"; // Queue identifier on the phone system, for tracking which queue on the phone the user has entered (optional)
NSString* searchObject = @"searchObject_example"; // Object to perform searching against for purpose of resolving an exisitng customer, required if sending search_query. Accepted values are customer, customer_location, & customer_user. (optional)
NSString* searchQuery = @"searchQuery_example"; // Query to perform against the search_object for the purpose of resolving an existing customer. (optional)

SWGPhoneApi*apiInstance = [[SWGPhoneApi alloc] init];

// Customer enters call queue
[apiInstance queueEnterWithExternalId:externalId
              cidNumber:cidNumber
              didNumber:didNumber
              cidName:cidName
              qid:qid
              searchObject:searchObject
              searchQuery:searchQuery
          completionHandler: ^(SWGQueueEnterResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPhoneApi->queueEnter: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and will be used to identify all future API operations on this call. | 
 **cidNumber** | **NSString***| Phone number portion of Caller ID (CID) data, representing the phone number of the Customer who called into the queue. String will be parsed numerically against valid phone number syntax (E.G. [NANP format](https://en.wikipedia.org/wiki/North_American_Numbering_Plan)) | 
 **didNumber** | **NSString***| Dialed Direct Inward Dialing number (DID) on the phone system, indicating the line the customer dialed in to.  String will be parsed numerically against valid phone number syntax (E.G. [NANP format](https://en.wikipedia.org/wiki/North_American_Numbering_Plan)) | 
 **cidName** | **NSString***| Caller name portion of the Caller ID (CID) data, containing the caller&#39;s name (if present) | [optional] 
 **qid** | **NSString***| Queue identifier on the phone system, for tracking which queue on the phone the user has entered | [optional] 
 **searchObject** | **NSString***| Object to perform searching against for purpose of resolving an exisitng customer, required if sending search_query. Accepted values are customer, customer_location, &amp; customer_user. | [optional] 
 **searchQuery** | **NSString***| Query to perform against the search_object for the purpose of resolving an existing customer. | [optional] 

### Return type

[**SWGQueueEnterResponse***](SWGQueueEnterResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queueExit**
```objc
-(NSURLSessionTask*) queueExitWithExternalId: (NSString*) externalId
    autoResolve: (NSNumber*) autoResolve
    logNotes: (NSString*) logNotes
    recording: (NSURL*) recording
        completionHandler: (void (^)(SWGPhoneResponse* output, NSError* error)) handler;
```

Customer leaves call

Trigger for the end of a queued call previously triggered from `queueEnter` representing that the caller has left the queue (by hanging up or being disconnected). This ends the Call object and updates it's duration.

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


NSString* externalId = @"externalId_example"; // External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations
NSNumber* autoResolve = @false; // Optional flag (defaulting to `false`) indicating if the Issue for this call should be resolved (optional) (default to false)
NSString* logNotes = @"logNotes_example"; // Optional text to be added as a log entry on the issue, posted as a system note (not attributed to any agent) (optional)
NSURL* recording = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Optional file to be attached to this call, representing recording of the call. Can be any file type, E.G. a `.wav` audio file, or a `.pdf` transcript from speech recognition / dictation software. (optional)

SWGPhoneApi*apiInstance = [[SWGPhoneApi alloc] init];

// Customer leaves call
[apiInstance queueExitWithExternalId:externalId
              autoResolve:autoResolve
              logNotes:logNotes
              recording:recording
          completionHandler: ^(SWGPhoneResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPhoneApi->queueExit: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| External identifier of this call on the phone system. This should be whatever unique ID is assigned internally to this call on the calling phone system, and is used to identify this unique call across API operations | 
 **autoResolve** | **NSNumber***| Optional flag (defaulting to &#x60;false&#x60;) indicating if the Issue for this call should be resolved | [optional] [default to false]
 **logNotes** | **NSString***| Optional text to be added as a log entry on the issue, posted as a system note (not attributed to any agent) | [optional] 
 **recording** | **NSURL***| Optional file to be attached to this call, representing recording of the call. Can be any file type, E.G. a &#x60;.wav&#x60; audio file, or a &#x60;.pdf&#x60; transcript from speech recognition / dictation software. | [optional] 

### Return type

[**SWGPhoneResponse***](SWGPhoneResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

