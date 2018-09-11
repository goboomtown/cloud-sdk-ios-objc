# SWGOrgsApi

All URIs are relative to *https://api.goboomtown.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteOrgTeam**](SWGOrgsApi.md#deleteorgteam) | **POST** /orgs/team/delete/{team_id} | Delete Org Team {team_id}
[**deleteOrgUser**](SWGOrgsApi.md#deleteorguser) | **POST** /orgs/user/delete/{user_id} | Delete Org User {user_id}
[**getOrg**](SWGOrgsApi.md#getorg) | **GET** /orgs/get | Get your Org
[**getOrgCustomers**](SWGOrgsApi.md#getorgcustomers) | **GET** /orgs/customers | Get a collection of Customers for your Org
[**getOrgTeam**](SWGOrgsApi.md#getorgteam) | **GET** /orgs/team/get/{org_team_id} | Get an Org Team
[**getOrgTeamMetaStatuses**](SWGOrgsApi.md#getorgteammetastatuses) | **GET** /orgs/team/meta_statuses | Get &#39;Status&#39; dictionary for mapping keys to labels
[**getOrgTeamMetaTrainingTypes**](SWGOrgsApi.md#getorgteammetatrainingtypes) | **GET** /orgs/team/meta_training_types | Get &#39;TrainingType&#39; dictionary for mapping keys to labels
[**getOrgTeamMetaTypes**](SWGOrgsApi.md#getorgteammetatypes) | **GET** /orgs/team/meta_types | Get &#39;Type&#39; dictionary for mapping keys to labels
[**getOrgTeams**](SWGOrgsApi.md#getorgteams) | **GET** /orgs/team/list | Get a collection of all Teams for your Org
[**getOrgUser**](SWGOrgsApi.md#getorguser) | **GET** /orgs/user/get/{user_id} | Get Org User {user_id}
[**getOrgUserMetaStatuses**](SWGOrgsApi.md#getorgusermetastatuses) | **GET** /orgs/users/meta_statuses | Get &#39;Status&#39; dictionary for mapping keys to labels
[**getOrgUsers**](SWGOrgsApi.md#getorgusers) | **GET** /orgs/users | Get a collection of Users for your Org
[**getTeamUsers**](SWGOrgsApi.md#getteamusers) | **GET** /orgs/team/users/{team_id} | Get a collection of Users for Team {team_id}
[**mapTeamCustomer**](SWGOrgsApi.md#mapteamcustomer) | **POST** /orgs/team/map_customer/{team_id} | Adds a mapping between Customer {customer_id} and Org Team {team_id}
[**mapTeamCustomerLocation**](SWGOrgsApi.md#mapteamcustomerlocation) | **POST** /orgs/team/map_location/{team_id} | Adds a mapping between Location and Org Team
[**mapTeamUser**](SWGOrgsApi.md#mapteamuser) | **POST** /orgs/team/map_user/{team_id} | Adds a mapping between Org User {user_id} and Org Team {team_id}
[**orgLookupByExternalId**](SWGOrgsApi.md#orglookupbyexternalid) | **GET** /orgs/lookupByExternalId | Get an Org by external_id
[**orgTeamLookupByExternalId**](SWGOrgsApi.md#orgteamlookupbyexternalid) | **GET** /orgs/team/lookupByExternalId | Get a Team by external_id
[**orgUserLookupByExternalId**](SWGOrgsApi.md#orguserlookupbyexternalid) | **GET** /orgs/user/lookupByExternalId | Get an Org User by external_id
[**putOrgTeam**](SWGOrgsApi.md#putorgteam) | **POST** /orgs/team/put | Create/update a Team for this Org
[**putOrgUser**](SWGOrgsApi.md#putorguser) | **POST** /orgs/users/put | Create/update a User for this Org
[**unmapTeamCustomer**](SWGOrgsApi.md#unmapteamcustomer) | **POST** /orgs/team/unmap_customer/{team_id} | Removes the mapping between Customer {customer_id} and Org Team {team_id}
[**unmapTeamCustomerLocation**](SWGOrgsApi.md#unmapteamcustomerlocation) | **POST** /orgs/team/unmap_location/{team_id} | Removes a mapping between Location and Org Team
[**unmapTeamUser**](SWGOrgsApi.md#unmapteamuser) | **POST** /orgs/team/unmap_user/{team_id} | Removes the mapping between Org User {user_id} and Org Team {team_id}
[**updateOrgUser**](SWGOrgsApi.md#updateorguser) | **POST** /orgs/user/update/{user_id} | Update Org User {user_id}


# **deleteOrgTeam**
```objc
-(NSURLSessionTask*) deleteOrgTeamWithTeamId: (NSString*) teamId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete Org Team {team_id}

Deletes the *Org Team* object from this Org.

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


NSString* teamId = @"teamId_example"; // The primary key of the OrgTeam

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Delete Org Team {team_id}
[apiInstance deleteOrgTeamWithTeamId:teamId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->deleteOrgTeam: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **NSString***| The primary key of the OrgTeam | 

### Return type

void (empty response body)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrgUser**
```objc
-(NSURLSessionTask*) deleteOrgUserWithUserId: (NSString*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete Org User {user_id}

Removes all team mappings, and deletes the *Org User* object from this Org.

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


NSString* userId = @"userId_example"; // The primary key of the OrgUser

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Delete Org User {user_id}
[apiInstance deleteOrgUserWithUserId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->deleteOrgUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| The primary key of the OrgUser | 

### Return type

void (empty response body)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrg**
```objc
-(NSURLSessionTask*) getOrgWithCompletionHandler: 
        (void (^)(SWGOrgResponse* output, NSError* error)) handler;
```

Get your Org

Returns a *Org* object.

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



SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get your Org
[apiInstance getOrgWithCompletionHandler: 
          ^(SWGOrgResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getOrg: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGOrgResponse***](SWGOrgResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgCustomers**
```objc
-(NSURLSessionTask*) getOrgCustomersWithCompletionHandler: 
        (void (^)(SWGCustomerResponse* output, NSError* error)) handler;
```

Get a collection of Customers for your Org

Returns a paginated collection of *Customer* objects related to your *Org* object.

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



SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get a collection of Customers for your Org
[apiInstance getOrgCustomersWithCompletionHandler: 
          ^(SWGCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getOrgCustomers: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGCustomerResponse***](SWGCustomerResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgTeam**
```objc
-(NSURLSessionTask*) getOrgTeamWithOrgTeamId: (NSString*) orgTeamId
        completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;
```

Get an Org Team

Returns a *Org Team* object.

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


NSString* orgTeamId = @"orgTeamId_example"; // The primary key of the OrgTeam

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get an Org Team
[apiInstance getOrgTeamWithOrgTeamId:orgTeamId
          completionHandler: ^(SWGOrgTeamResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getOrgTeam: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgTeamId** | **NSString***| The primary key of the OrgTeam | 

### Return type

[**SWGOrgTeamResponse***](SWGOrgTeamResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgTeamMetaStatuses**
```objc
-(NSURLSessionTask*) getOrgTeamMetaStatusesWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Status' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Status' keys to labels on *Org Team* objects.

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



SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get 'Status' dictionary for mapping keys to labels
[apiInstance getOrgTeamMetaStatusesWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getOrgTeamMetaStatuses: %@", error);
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

# **getOrgTeamMetaTrainingTypes**
```objc
-(NSURLSessionTask*) getOrgTeamMetaTrainingTypesWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'TrainingType' dictionary for mapping keys to labels

Returns a dictionary for mapping 'TrainingType' keys to labels on *Org Team* objects.

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



SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get 'TrainingType' dictionary for mapping keys to labels
[apiInstance getOrgTeamMetaTrainingTypesWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getOrgTeamMetaTrainingTypes: %@", error);
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

# **getOrgTeamMetaTypes**
```objc
-(NSURLSessionTask*) getOrgTeamMetaTypesWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Type' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Type' keys to labels on *Org Team* objects.

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



SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get 'Type' dictionary for mapping keys to labels
[apiInstance getOrgTeamMetaTypesWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getOrgTeamMetaTypes: %@", error);
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

# **getOrgTeams**
```objc
-(NSURLSessionTask*) getOrgTeamsWithCompletionHandler: 
        (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;
```

Get a collection of all Teams for your Org

Returns a paginated collection of *Org Team* objects related to your *Org* object.

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



SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get a collection of all Teams for your Org
[apiInstance getOrgTeamsWithCompletionHandler: 
          ^(SWGOrgTeamResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getOrgTeams: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGOrgTeamResponse***](SWGOrgTeamResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgUser**
```objc
-(NSURLSessionTask*) getOrgUserWithUserId: (NSString*) userId
        completionHandler: (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;
```

Get Org User {user_id}

Returns a *Org User* object.

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


NSString* userId = @"userId_example"; // The primary key of the OrgUser

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get Org User {user_id}
[apiInstance getOrgUserWithUserId:userId
          completionHandler: ^(SWGOrgUserResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getOrgUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| The primary key of the OrgUser | 

### Return type

[**SWGOrgUserResponse***](SWGOrgUserResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgUserMetaStatuses**
```objc
-(NSURLSessionTask*) getOrgUserMetaStatusesWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Status' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Status' keys to labels on *Org User* objects.

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



SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get 'Status' dictionary for mapping keys to labels
[apiInstance getOrgUserMetaStatusesWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getOrgUserMetaStatuses: %@", error);
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

# **getOrgUsers**
```objc
-(NSURLSessionTask*) getOrgUsersWithCompletionHandler: 
        (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;
```

Get a collection of Users for your Org

Returns a paginated collection of *Org User* objects related to your *Org* object.

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



SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get a collection of Users for your Org
[apiInstance getOrgUsersWithCompletionHandler: 
          ^(SWGOrgUserResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getOrgUsers: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGOrgUserResponse***](SWGOrgUserResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamUsers**
```objc
-(NSURLSessionTask*) getTeamUsersWithTeamId: (NSString*) teamId
        completionHandler: (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;
```

Get a collection of Users for Team {team_id}

Returns a paginated collection of *Org User* objects related the specified *Team* object.

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


NSString* teamId = @"teamId_example"; // The primary key of the OrgTeam

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get a collection of Users for Team {team_id}
[apiInstance getTeamUsersWithTeamId:teamId
          completionHandler: ^(SWGOrgUserResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->getTeamUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **NSString***| The primary key of the OrgTeam | 

### Return type

[**SWGOrgUserResponse***](SWGOrgUserResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapTeamCustomer**
```objc
-(NSURLSessionTask*) mapTeamCustomerWithTeamId: (NSString*) teamId
    customerId: (NSString*) customerId
        completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;
```

Adds a mapping between Customer {customer_id} and Org Team {team_id}

Returns a *Org Team* object.

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


NSString* teamId = @"teamId_example"; // The primary key of the OrgTeam
NSString* customerId = @"customerId_example"; // The primary key of the Customer

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Adds a mapping between Customer {customer_id} and Org Team {team_id}
[apiInstance mapTeamCustomerWithTeamId:teamId
              customerId:customerId
          completionHandler: ^(SWGOrgTeamResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->mapTeamCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **NSString***| The primary key of the OrgTeam | 
 **customerId** | **NSString***| The primary key of the Customer | 

### Return type

[**SWGOrgTeamResponse***](SWGOrgTeamResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapTeamCustomerLocation**
```objc
-(NSURLSessionTask*) mapTeamCustomerLocationWithTeamId: (NSString*) teamId
    customerId: (NSString*) customerId
        completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;
```

Adds a mapping between Location and Org Team

Adds a mapping between the `CustomerLocation` identified `{location_id}` and the Org Team identified by `{team_id}`. Returns the `OrgTeam` object.

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


NSString* teamId = @"teamId_example"; // The primary key of the OrgTeam
NSString* customerId = @"customerId_example"; // The primary key of the Customer

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Adds a mapping between Location and Org Team
[apiInstance mapTeamCustomerLocationWithTeamId:teamId
              customerId:customerId
          completionHandler: ^(SWGOrgTeamResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->mapTeamCustomerLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **NSString***| The primary key of the OrgTeam | 
 **customerId** | **NSString***| The primary key of the Customer | 

### Return type

[**SWGOrgTeamResponse***](SWGOrgTeamResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mapTeamUser**
```objc
-(NSURLSessionTask*) mapTeamUserWithTeamId: (NSString*) teamId
    userId: (NSString*) userId
        completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;
```

Adds a mapping between Org User {user_id} and Org Team {team_id}

Returns a *Org Team* object.

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


NSString* teamId = @"teamId_example"; // The primary key of the OrgTeam
NSString* userId = @"userId_example"; // The primary key of the OrgUser

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Adds a mapping between Org User {user_id} and Org Team {team_id}
[apiInstance mapTeamUserWithTeamId:teamId
              userId:userId
          completionHandler: ^(SWGOrgTeamResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->mapTeamUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **NSString***| The primary key of the OrgTeam | 
 **userId** | **NSString***| The primary key of the OrgUser | 

### Return type

[**SWGOrgTeamResponse***](SWGOrgTeamResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgLookupByExternalId**
```objc
-(NSURLSessionTask*) orgLookupByExternalIdWithExternalId: (NSString*) externalId
        completionHandler: (void (^)(SWGOrgResponse* output, NSError* error)) handler;
```

Get an Org by external_id

Lookup an `Orgs` object by the external_id field, corrolating to the ID in the callee's system

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


NSString* externalId = @"externalId_example"; // The Org's external ID

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get an Org by external_id
[apiInstance orgLookupByExternalIdWithExternalId:externalId
          completionHandler: ^(SWGOrgResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->orgLookupByExternalId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| The Org&#39;s external ID | 

### Return type

[**SWGOrgResponse***](SWGOrgResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgTeamLookupByExternalId**
```objc
-(NSURLSessionTask*) orgTeamLookupByExternalIdWithExternalId: (NSString*) externalId
        completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;
```

Get a Team by external_id

Lookup an `OrgTeam` object by the external_id field, corrolating to the ID in the callee's system

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


NSString* externalId = @"externalId_example"; // The team's external ID

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get a Team by external_id
[apiInstance orgTeamLookupByExternalIdWithExternalId:externalId
          completionHandler: ^(SWGOrgTeamResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->orgTeamLookupByExternalId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| The team&#39;s external ID | 

### Return type

[**SWGOrgTeamResponse***](SWGOrgTeamResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgUserLookupByExternalId**
```objc
-(NSURLSessionTask*) orgUserLookupByExternalIdWithExternalId: (NSString*) externalId
        completionHandler: (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;
```

Get an Org User by external_id

Lookup a `OrgsUsers` by the external_id field, corrolating to the ID in the callee's system

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


NSString* externalId = @"externalId_example"; // The User's external ID

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Get an Org User by external_id
[apiInstance orgUserLookupByExternalIdWithExternalId:externalId
          completionHandler: ^(SWGOrgUserResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->orgUserLookupByExternalId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| The User&#39;s external ID | 

### Return type

[**SWGOrgUserResponse***](SWGOrgUserResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putOrgTeam**
```objc
-(NSURLSessionTask*) putOrgTeamWithBody: (SWGOrgTeamCreateRequest*) body
        completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;
```

Create/update a Team for this Org

Creates or updates, and returns, an `OrgTeam` object. To create a new team, supply the data for the new team in the request body with the `id` property set to `NULL` or omitted. To **update** an existing team, ensure the team ID to update is set in the `id` parameter of the request, and provide any other fields to update.

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


SWGOrgTeamCreateRequest* body = [[SWGOrgTeamCreateRequest alloc] init]; // The `OrgTeam` data

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Create/update a Team for this Org
[apiInstance putOrgTeamWithBody:body
          completionHandler: ^(SWGOrgTeamResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->putOrgTeam: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGOrgTeamCreateRequest***](SWGOrgTeamCreateRequest.md)| The &#x60;OrgTeam&#x60; data | 

### Return type

[**SWGOrgTeamResponse***](SWGOrgTeamResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putOrgUser**
```objc
-(NSURLSessionTask*) putOrgUserWithBody: (SWGOrgUserCreateRequest*) body
        completionHandler: (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;
```

Create/update a User for this Org

Creates or updates, and returns, an *Org User* object. To create a new object, supply the data for the new object in the request body with the `id` property set to `NULL` or omitted. To **update** an existing entry, ensure the ID of the object to be updated is set in the `id` parameter of the request, and provide any other fields to update.

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


SWGOrgUserCreateRequest* body = [[SWGOrgUserCreateRequest alloc] init]; // The *Org User* to create

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Create/update a User for this Org
[apiInstance putOrgUserWithBody:body
          completionHandler: ^(SWGOrgUserResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->putOrgUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGOrgUserCreateRequest***](SWGOrgUserCreateRequest.md)| The *Org User* to create | 

### Return type

[**SWGOrgUserResponse***](SWGOrgUserResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unmapTeamCustomer**
```objc
-(NSURLSessionTask*) unmapTeamCustomerWithTeamId: (NSString*) teamId
    customerId: (NSString*) customerId
        completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;
```

Removes the mapping between Customer {customer_id} and Org Team {team_id}

Returns a *Org Team* object.

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


NSString* teamId = @"teamId_example"; // The primary key of the OrgTeam
NSString* customerId = @"customerId_example"; // The primary key of the Customer

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Removes the mapping between Customer {customer_id} and Org Team {team_id}
[apiInstance unmapTeamCustomerWithTeamId:teamId
              customerId:customerId
          completionHandler: ^(SWGOrgTeamResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->unmapTeamCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **NSString***| The primary key of the OrgTeam | 
 **customerId** | **NSString***| The primary key of the Customer | 

### Return type

[**SWGOrgTeamResponse***](SWGOrgTeamResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unmapTeamCustomerLocation**
```objc
-(NSURLSessionTask*) unmapTeamCustomerLocationWithTeamId: (NSString*) teamId
    locationId: (NSString*) locationId
        completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;
```

Removes a mapping between Location and Org Team

Removes a mapping between th `CustomerLocation` identified `{location_id}` and the Org Team identified by `{team_id}`. Returns the `OrgTeam` object.

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


NSString* teamId = @"teamId_example"; // The primary key of the OrgTeam
NSString* locationId = @"locationId_example"; // The primary key of the Customer Location

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Removes a mapping between Location and Org Team
[apiInstance unmapTeamCustomerLocationWithTeamId:teamId
              locationId:locationId
          completionHandler: ^(SWGOrgTeamResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->unmapTeamCustomerLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **NSString***| The primary key of the OrgTeam | 
 **locationId** | **NSString***| The primary key of the Customer Location | 

### Return type

[**SWGOrgTeamResponse***](SWGOrgTeamResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unmapTeamUser**
```objc
-(NSURLSessionTask*) unmapTeamUserWithTeamId: (NSString*) teamId
    userId: (NSString*) userId
        completionHandler: (void (^)(SWGOrgTeamResponse* output, NSError* error)) handler;
```

Removes the mapping between Org User {user_id} and Org Team {team_id}

Returns a *Org Team* object.

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


NSString* teamId = @"teamId_example"; // The primary key of the OrgTeam
NSString* userId = @"userId_example"; // The primary key of the OrgUser

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Removes the mapping between Org User {user_id} and Org Team {team_id}
[apiInstance unmapTeamUserWithTeamId:teamId
              userId:userId
          completionHandler: ^(SWGOrgTeamResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->unmapTeamUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **NSString***| The primary key of the OrgTeam | 
 **userId** | **NSString***| The primary key of the OrgUser | 

### Return type

[**SWGOrgTeamResponse***](SWGOrgTeamResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrgUser**
```objc
-(NSURLSessionTask*) updateOrgUserWithUserId: (NSString*) userId
    body: (SWGOrgUserCreateRequest*) body
        completionHandler: (void (^)(SWGOrgUserResponse* output, NSError* error)) handler;
```

Update Org User {user_id}

Updates and returns the *Org User* object.

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


NSString* userId = @"userId_example"; // The primary key of the OrgUser
SWGOrgUserCreateRequest* body = [[SWGOrgUserCreateRequest alloc] init]; // The *Org User* to update

SWGOrgsApi*apiInstance = [[SWGOrgsApi alloc] init];

// Update Org User {user_id}
[apiInstance updateOrgUserWithUserId:userId
              body:body
          completionHandler: ^(SWGOrgUserResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrgsApi->updateOrgUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| The primary key of the OrgUser | 
 **body** | [**SWGOrgUserCreateRequest***](SWGOrgUserCreateRequest.md)| The *Org User* to update | 

### Return type

[**SWGOrgUserResponse***](SWGOrgUserResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

