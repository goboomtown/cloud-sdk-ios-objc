# SWGIssuesApi

All URIs are relative to *https://api.goboomtown.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelIssue**](SWGIssuesApi.md#cancelissue) | **POST** /issues/cancel/{issue_id} | Cancel an Issue for a Customer
[**cancelIssueSchedule**](SWGIssuesApi.md#cancelissueschedule) | **POST** /issues/cancel_schedule/{issue_id} | Cancel an Issue appointment for a Customer
[**createIssueLog**](SWGIssuesApi.md#createissuelog) | **POST** /issues/log/put/{issue_id} | Add an entry to an Issue&#39;s log
[**deleteIssueFile**](SWGIssuesApi.md#deleteissuefile) | **POST** /issues/file/delete/{issue_id} | Removes a file from the Issue&#39;s file list
[**deleteIssueLog**](SWGIssuesApi.md#deleteissuelog) | **POST** /issues/log/delete/{issue_id} | Removes log entry with id {issue_log_id} on issue {issue_id}
[**getIssue**](SWGIssuesApi.md#getissue) | **GET** /issues/get/{issue_id} | Get an Issue
[**getIssueChatHistory**](SWGIssuesApi.md#getissuechathistory) | **GET** /issues/chat/history/{issue_id} | Retrieves a chat history for a closed issue with issue id {issue_id}
[**getIssueFiles**](SWGIssuesApi.md#getissuefiles) | **GET** /issues/files/{issue_id} | Return a list of files related to the Issue
[**getIssueLogs**](SWGIssuesApi.md#getissuelogs) | **GET** /issues/log/history/{issue_id} | Get a collection of all Issue changes
[**getIssueMetaCategories**](SWGIssuesApi.md#getissuemetacategories) | **GET** /issues/meta/categories | Get &#39;Category&#39; dictionary for mapping keys to labels
[**getIssueMetaFileTags**](SWGIssuesApi.md#getissuemetafiletags) | **GET** /issues/meta/file_tags | Get &#39;Tag&#39; dictionary for mapping keys to labels
[**getIssueMetaJobStatuses**](SWGIssuesApi.md#getissuemetajobstatuses) | **GET** /issues/meta/jobs | Get &#39;Job Status&#39; dictionary for mapping keys to labels
[**getIssueMetaResolutions**](SWGIssuesApi.md#getissuemetaresolutions) | **GET** /issues/meta/resolutions | Get &#39;Resolution&#39; dictionary for mapping keys to labels
[**getIssueMetaStatuses**](SWGIssuesApi.md#getissuemetastatuses) | **GET** /issues/meta/statuses | Get &#39;Status&#39; dictionary for mapping keys to labels
[**getIssueMetaTypes**](SWGIssuesApi.md#getissuemetatypes) | **GET** /issues/meta/types | Get &#39;Type&#39; dictionary for mapping keys to labels
[**getIssueStatusHistory**](SWGIssuesApi.md#getissuestatushistory) | **GET** /issues/status/history/{issue_id} | Get a collection of Issue status changes
[**getIssues**](SWGIssuesApi.md#getissues) | **GET** /issues/get | Get a collection of Issues
[**issueLookupByExternalId**](SWGIssuesApi.md#issuelookupbyexternalid) | **GET** /issues/lookupByExternalId | Get an Issue by external_id
[**putIssue**](SWGIssuesApi.md#putissue) | **POST** /issues/put | Create/update an Issue for a Customer
[**resolveIssue**](SWGIssuesApi.md#resolveissue) | **POST** /issues/resolve/{issue_id} | Resolve an Issue for a Customer
[**scheduleIssue**](SWGIssuesApi.md#scheduleissue) | **POST** /issues/schedule/{issue_id} | Schedule an Issue for a Customer
[**uploadIssueFile**](SWGIssuesApi.md#uploadissuefile) | **POST** /issues/file/upload/{issue_id} | Add a file to the Issue&#39;s file list


# **cancelIssue**
```objc
-(NSURLSessionTask*) cancelIssueWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Cancel an Issue for a Customer

Transitions an *Issue* to a 'Canceled' status in the workflow.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Cancel an Issue for a Customer
[apiInstance cancelIssueWithIssueId:issueId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->cancelIssue: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 

### Return type

[**SWGCommonResponse***](SWGCommonResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelIssueSchedule**
```objc
-(NSURLSessionTask*) cancelIssueScheduleWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Cancel an Issue appointment for a Customer

Transitions an *Issue* from 'Scheduled' to 'Scheduling' status in the workflow.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Cancel an Issue appointment for a Customer
[apiInstance cancelIssueScheduleWithIssueId:issueId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->cancelIssueSchedule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 

### Return type

[**SWGCommonResponse***](SWGCommonResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createIssueLog**
```objc
-(NSURLSessionTask*) createIssueLogWithIssueId: (NSString*) issueId
    notes: (NSString*) notes
        completionHandler: (void (^)(SWGIssueLogsResponse* output, NSError* error)) handler;
```

Add an entry to an Issue's log

Creates a new log entry related to an *Issue* object.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*
NSString* notes = @"notes_example"; // Notes to log against the *Issue*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Add an entry to an Issue's log
[apiInstance createIssueLogWithIssueId:issueId
              notes:notes
          completionHandler: ^(SWGIssueLogsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->createIssueLog: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 
 **notes** | **NSString***| Notes to log against the *Issue* | 

### Return type

[**SWGIssueLogsResponse***](SWGIssueLogsResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIssueFile**
```objc
-(NSURLSessionTask*) deleteIssueFileWithIssueId: (NSString*) issueId
    fileId: (NSString*) fileId
        completionHandler: (void (^)(SWGFilesResponse* output, NSError* error)) handler;
```

Removes a file from the Issue's file list

Removes an existing file entry related to an *Issue* object.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*
NSString* fileId = @"fileId_example"; // The primary key of the *Upload File*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Removes a file from the Issue's file list
[apiInstance deleteIssueFileWithIssueId:issueId
              fileId:fileId
          completionHandler: ^(SWGFilesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->deleteIssueFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 
 **fileId** | **NSString***| The primary key of the *Upload File* | 

### Return type

[**SWGFilesResponse***](SWGFilesResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIssueLog**
```objc
-(NSURLSessionTask*) deleteIssueLogWithIssueId: (NSString*) issueId
    issueLogId: (NSString*) issueLogId
        completionHandler: (void (^)(SWGIssueLogsResponse* output, NSError* error)) handler;
```

Removes log entry with id {issue_log_id} on issue {issue_id}

Removes an existing log entry related to an *Issue* object.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*
NSString* issueLogId = @"issueLogId_example"; // The primary key of the *Issue Log* to update

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Removes log entry with id {issue_log_id} on issue {issue_id}
[apiInstance deleteIssueLogWithIssueId:issueId
              issueLogId:issueLogId
          completionHandler: ^(SWGIssueLogsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->deleteIssueLog: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 
 **issueLogId** | **NSString***| The primary key of the *Issue Log* to update | 

### Return type

[**SWGIssueLogsResponse***](SWGIssueLogsResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssue**
```objc
-(NSURLSessionTask*) getIssueWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler;
```

Get an Issue

Returns an *Issue* object.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get an Issue
[apiInstance getIssueWithIssueId:issueId
          completionHandler: ^(SWGIssueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssue: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 

### Return type

[**SWGIssueResponse***](SWGIssueResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssueChatHistory**
```objc
-(NSURLSessionTask*) getIssueChatHistoryWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGIssueChatHistoryResponse* output, NSError* error)) handler;
```

Retrieves a chat history for a closed issue with issue id {issue_id}

Returns a collection of Chat Items with their Transcripts.

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


NSString* issueId = @"issueId_example"; // The issue id associated with the *Chat*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Retrieves a chat history for a closed issue with issue id {issue_id}
[apiInstance getIssueChatHistoryWithIssueId:issueId
          completionHandler: ^(SWGIssueChatHistoryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssueChatHistory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The issue id associated with the *Chat* | 

### Return type

[**SWGIssueChatHistoryResponse***](SWGIssueChatHistoryResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssueFiles**
```objc
-(NSURLSessionTask*) getIssueFilesWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGFilesResponse* output, NSError* error)) handler;
```

Return a list of files related to the Issue

Returns a list of files related to an *Issue* object.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Return a list of files related to the Issue
[apiInstance getIssueFilesWithIssueId:issueId
          completionHandler: ^(SWGFilesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssueFiles: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 

### Return type

[**SWGFilesResponse***](SWGFilesResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssueLogs**
```objc
-(NSURLSessionTask*) getIssueLogsWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGIssueLogsResponse* output, NSError* error)) handler;
```

Get a collection of all Issue changes

Returns a paginated collection of all changes for an *Issue* object.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get a collection of all Issue changes
[apiInstance getIssueLogsWithIssueId:issueId
          completionHandler: ^(SWGIssueLogsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssueLogs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 

### Return type

[**SWGIssueLogsResponse***](SWGIssueLogsResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssueMetaCategories**
```objc
-(NSURLSessionTask*) getIssueMetaCategoriesWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Category' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Category' keys to labels on *Issue* objects.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];



SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get 'Category' dictionary for mapping keys to labels
[apiInstance getIssueMetaCategoriesWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssueMetaCategories: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGEnumerationItemResponse***](SWGEnumerationItemResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssueMetaFileTags**
```objc
-(NSURLSessionTask*) getIssueMetaFileTagsWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Tag' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Tag' keys to labels on *Issue File* objects.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];



SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get 'Tag' dictionary for mapping keys to labels
[apiInstance getIssueMetaFileTagsWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssueMetaFileTags: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGEnumerationItemResponse***](SWGEnumerationItemResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssueMetaJobStatuses**
```objc
-(NSURLSessionTask*) getIssueMetaJobStatusesWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Job Status' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Job Status' keys to labels on *Issue* objects.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];



SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get 'Job Status' dictionary for mapping keys to labels
[apiInstance getIssueMetaJobStatusesWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssueMetaJobStatuses: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGEnumerationItemResponse***](SWGEnumerationItemResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssueMetaResolutions**
```objc
-(NSURLSessionTask*) getIssueMetaResolutionsWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Resolution' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Resolution' keys to labels on *Issue* objects.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];



SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get 'Resolution' dictionary for mapping keys to labels
[apiInstance getIssueMetaResolutionsWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssueMetaResolutions: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGEnumerationItemResponse***](SWGEnumerationItemResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssueMetaStatuses**
```objc
-(NSURLSessionTask*) getIssueMetaStatusesWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Status' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Status' keys to labels on *Issue* objects.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];



SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get 'Status' dictionary for mapping keys to labels
[apiInstance getIssueMetaStatusesWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssueMetaStatuses: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGEnumerationItemResponse***](SWGEnumerationItemResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssueMetaTypes**
```objc
-(NSURLSessionTask*) getIssueMetaTypesWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Type' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Type' keys to labels on *Issue* objects.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];



SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get 'Type' dictionary for mapping keys to labels
[apiInstance getIssueMetaTypesWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssueMetaTypes: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGEnumerationItemResponse***](SWGEnumerationItemResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssueStatusHistory**
```objc
-(NSURLSessionTask*) getIssueStatusHistoryWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGIssueStatusesResponse* output, NSError* error)) handler;
```

Get a collection of Issue status changes

Returns a paginated collection of status changes for an *Issue* object.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get a collection of Issue status changes
[apiInstance getIssueStatusHistoryWithIssueId:issueId
          completionHandler: ^(SWGIssueStatusesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssueStatusHistory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 

### Return type

[**SWGIssueStatusesResponse***](SWGIssueStatusesResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssues**
```objc
-(NSURLSessionTask*) getIssuesWithLimit: (NSNumber*) limit
    start: (NSNumber*) start
    customerId: (NSString*) customerId
    customersUsersId: (NSString*) customersUsersId
    customerLocationId: (NSString*) customerLocationId
        completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler;
```

Get a collection of Issues

Returns a paginated collection of *Issue* objects.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSNumber* limit = @56; // Pagination result limit (defaults to 10) (optional)
NSNumber* start = @56; // Pagination starting result number (defaults to 0) (optional)
NSString* customerId = @"customerId_example"; // Optionally limit result to this {customer_id} (optional)
NSString* customersUsersId = @"customersUsersId_example"; // Optionally limit result to this {customers_users_id} (optional)
NSString* customerLocationId = @"customerLocationId_example"; // Optionally limit result to this {customer_location_id} (optional)

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get a collection of Issues
[apiInstance getIssuesWithLimit:limit
              start:start
              customerId:customerId
              customersUsersId:customersUsersId
              customerLocationId:customerLocationId
          completionHandler: ^(SWGIssueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->getIssues: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| Pagination result limit (defaults to 10) | [optional] 
 **start** | **NSNumber***| Pagination starting result number (defaults to 0) | [optional] 
 **customerId** | **NSString***| Optionally limit result to this {customer_id} | [optional] 
 **customersUsersId** | **NSString***| Optionally limit result to this {customers_users_id} | [optional] 
 **customerLocationId** | **NSString***| Optionally limit result to this {customer_location_id} | [optional] 

### Return type

[**SWGIssueResponse***](SWGIssueResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueLookupByExternalId**
```objc
-(NSURLSessionTask*) issueLookupByExternalIdWithExternalId: (NSString*) externalId
        completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler;
```

Get an Issue by external_id

Lookup an `Issues` object by the external_id field, corrolating to the ID in the callee's system

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* externalId = @"externalId_example"; // The Customer's external ID

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Get an Issue by external_id
[apiInstance issueLookupByExternalIdWithExternalId:externalId
          completionHandler: ^(SWGIssueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->issueLookupByExternalId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| The Customer&#39;s external ID | 

### Return type

[**SWGIssueResponse***](SWGIssueResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putIssue**
```objc
-(NSURLSessionTask*) putIssueWithIssues: (SWGIssueCreateRequest*) issues
        completionHandler: (void (^)(SWGIssueResponse* output, NSError* error)) handler;
```

Create/update an Issue for a Customer

Creates an *Issue* object (or updates one if the ID is provided) related to a *Customer* object. To create a new object, supply the data for the new object in the request body with the `id` property set to `NULL` or omitted. To **update** an existing entry, ensure the ID of the object to be updated is set in the `id` parameter of the request, and provide any other fields to update.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


SWGIssueCreateRequest* issues = [[SWGIssueCreateRequest alloc] init]; // The *Issue* to create (optional)

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Create/update an Issue for a Customer
[apiInstance putIssueWithIssues:issues
          completionHandler: ^(SWGIssueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->putIssue: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issues** | [**SWGIssueCreateRequest***](SWGIssueCreateRequest.md)| The *Issue* to create | [optional] 

### Return type

[**SWGIssueResponse***](SWGIssueResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveIssue**
```objc
-(NSURLSessionTask*) resolveIssueWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Resolve an Issue for a Customer

Transitions an *Issue* to a 'Resolved' status in the workflow.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Resolve an Issue for a Customer
[apiInstance resolveIssueWithIssueId:issueId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->resolveIssue: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 

### Return type

[**SWGCommonResponse***](SWGCommonResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scheduleIssue**
```objc
-(NSURLSessionTask*) scheduleIssueWithIssueId: (NSString*) issueId
    scheduledTime: (NSString*) scheduledTime
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Schedule an Issue for a Customer

Transitions an *Issue* from 'Scheduling' to 'Scheduled' status in the workflow.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSString* issueId = @"issueId_example"; // The primary key of the *Issue*
NSString* scheduledTime = @"scheduledTime_example"; // The date-time at which to schedule the *Issue*

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Schedule an Issue for a Customer
[apiInstance scheduleIssueWithIssueId:issueId
              scheduledTime:scheduledTime
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->scheduleIssue: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| The primary key of the *Issue* | 
 **scheduledTime** | **NSString***| The date-time at which to schedule the *Issue* | 

### Return type

[**SWGCommonResponse***](SWGCommonResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadIssueFile**
```objc
-(NSURLSessionTask*) uploadIssueFileWithFile: (NSURL*) file
    issueId: (NSString*) issueId
    fileTag: (NSString*) fileTag
        completionHandler: (void (^)(SWGFilesResponse* output, NSError* error)) handler;
```

Add a file to the Issue's file list

Uploads a new file entry related to an *Issue* object.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: X-Boomtown-Date)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Date"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Date"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Signature)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Signature"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Signature"];

// Configure API key authorization: (authentication scheme: X-Boomtown-Token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Boomtown-Token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Boomtown-Token"];


NSURL* file = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // The uploaded file data
NSString* issueId = @"issueId_example"; // The primary key of the *Issue*
NSString* fileTag = @"fileTag_example"; // The file tag of the file being uploaded

SWGIssuesApi*apiInstance = [[SWGIssuesApi alloc] init];

// Add a file to the Issue's file list
[apiInstance uploadIssueFileWithFile:file
              issueId:issueId
              fileTag:fileTag
          completionHandler: ^(SWGFilesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGIssuesApi->uploadIssueFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **NSURL***| The uploaded file data | 
 **issueId** | **NSString***| The primary key of the *Issue* | 
 **fileTag** | **NSString***| The file tag of the file being uploaded | 

### Return type

[**SWGFilesResponse***](SWGFilesResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

