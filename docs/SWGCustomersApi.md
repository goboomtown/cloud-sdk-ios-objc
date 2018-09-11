# SWGCustomersApi

All URIs are relative to *https://api.goboomtown.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkCustomerUserEmail**](SWGCustomersApi.md#checkcustomeruseremail) | **GET** /customers/user_check | Check if an email address is in use by a Customer User
[**customerLocationLookupByIssueId**](SWGCustomersApi.md#customerlocationlookupbyissueid) | **GET** /customers/location/lookupByIssueId | Get a Customer Location by Issue Id
[**customerLocationLookupByUserEmail**](SWGCustomersApi.md#customerlocationlookupbyuseremail) | **GET** /customers/location/lookupByEmail | Get a Customer Location byemail address
[**customerLocationsLookupByExternalId**](SWGCustomersApi.md#customerlocationslookupbyexternalid) | **GET** /customers/location/lookupByExternalId | Get a Customer Location by external_id
[**customerLookup**](SWGCustomersApi.md#customerlookup) | **GET** /customers/lookup | Get a Customer by their login info
[**customerLookupByExternalId**](SWGCustomersApi.md#customerlookupbyexternalid) | **GET** /customers/lookupByExternalId | Get a Customer by external_id
[**customerLookupByIssueId**](SWGCustomersApi.md#customerlookupbyissueid) | **GET** /customers/lookupByIssueId | Get a Customer by Issue Id
[**customerLookupByUserEmail**](SWGCustomersApi.md#customerlookupbyuseremail) | **GET** /customers/lookupByEmail | Get a Customer by a User&#39;s Email
[**customerLookupByUserId**](SWGCustomersApi.md#customerlookupbyuserid) | **GET** /customers/lookupById | Get a Customer by a User Id
[**customerUserLookupByIssueId**](SWGCustomersApi.md#customeruserlookupbyissueid) | **GET** /customers/users/lookupByIssueId | Get a Customer User by Issue Id
[**customerUsersLookupByExternalId**](SWGCustomersApi.md#customeruserslookupbyexternalid) | **GET** /customers/users/lookupByExternalId | Get a Customer User by external_id
[**customerUsersLookupByUserEmail**](SWGCustomersApi.md#customeruserslookupbyuseremail) | **GET** /customers/users/lookupByEmail | Get a Customer User by a User&#39;s Email
[**getCustomer**](SWGCustomersApi.md#getcustomer) | **GET** /customers/get/{customer_id} | Get a Customer
[**getCustomerLocationUsers**](SWGCustomersApi.md#getcustomerlocationusers) | **GET** /customers/location/users/{customer_id} | Get a collection of Users for a Customer Location
[**getCustomerLocations**](SWGCustomersApi.md#getcustomerlocations) | **GET** /customers/location/get/{customer_id} | Get a collection of Locations for a Customer
[**getCustomerMetaCustomForms**](SWGCustomersApi.md#getcustomermetacustomforms) | **GET** /customers/meta/customForms | List available custom forms for locations
[**getCustomerMetaIndustries**](SWGCustomersApi.md#getcustomermetaindustries) | **GET** /customers/meta/industries | Get &#39;Industry&#39; dictionary for mapping keys to labels
[**getCustomerMetaStatuses**](SWGCustomersApi.md#getcustomermetastatuses) | **GET** /customers/meta/statuses | Get &#39;Status&#39; dictionary for mapping keys to labels
[**getCustomerTechnology**](SWGCustomersApi.md#getcustomertechnology) | **GET** /customers/technology/get/{customer_id} | Get a collection of technology for a Customer
[**getCustomerUsers**](SWGCustomersApi.md#getcustomerusers) | **GET** /customers/user/get/{customer_id} | Get a collection of Users for a Customer
[**putCustomer**](SWGCustomersApi.md#putcustomer) | **POST** /customers/put | Create/update a Customer, Location, and User
[**putCustomerLocation**](SWGCustomersApi.md#putcustomerlocation) | **POST** /customers/location/put | Create/update a Customer Location
[**putCustomerUsers**](SWGCustomersApi.md#putcustomerusers) | **POST** /customers/user/put | Create/update a Customer User
[**resetCustomerUserPassword**](SWGCustomersApi.md#resetcustomeruserpassword) | **POST** /customers/password_reset | Reset a Customer User&#39;s password
[**smsInvite**](SWGCustomersApi.md#smsinvite) | **POST** /customers/sms_invite | Invite an individual (via SMS) to download the App


# **checkCustomerUserEmail**
```objc
-(NSURLSessionTask*) checkCustomerUserEmailWithEmail: (NSString*) email
        completionHandler: (void (^)(SWGExistsResponse* output, NSError* error)) handler;
```

Check if an email address is in use by a Customer User

Returns whether a Customer User with the email address exists or not

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


NSString* email = @"email_example"; // Email Address to check

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Check if an email address is in use by a Customer User
[apiInstance checkCustomerUserEmailWithEmail:email
          completionHandler: ^(SWGExistsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->checkCustomerUserEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***| Email Address to check | 

### Return type

[**SWGExistsResponse***](SWGExistsResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerLocationLookupByIssueId**
```objc
-(NSURLSessionTask*) customerLocationLookupByIssueIdWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGCustomerLocationResponse* output, NSError* error)) handler;
```

Get a Customer Location by Issue Id

Lookup a Customer Location by an Issue Id

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


NSString* issueId = @"issueId_example"; // An Issue Id

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer Location by Issue Id
[apiInstance customerLocationLookupByIssueIdWithIssueId:issueId
          completionHandler: ^(SWGCustomerLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerLocationLookupByIssueId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| An Issue Id | 

### Return type

[**SWGCustomerLocationResponse***](SWGCustomerLocationResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerLocationLookupByUserEmail**
```objc
-(NSURLSessionTask*) customerLocationLookupByUserEmailWithEmail: (NSString*) email
        completionHandler: (void (^)(SWGCustomerLocationResponse* output, NSError* error)) handler;
```

Get a Customer Location byemail address

Lookup a Location by the value of the email field

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


NSString* email = @"email_example"; // The Customer Location's email address

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer Location byemail address
[apiInstance customerLocationLookupByUserEmailWithEmail:email
          completionHandler: ^(SWGCustomerLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerLocationLookupByUserEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***| The Customer Location&#39;s email address | 

### Return type

[**SWGCustomerLocationResponse***](SWGCustomerLocationResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerLocationsLookupByExternalId**
```objc
-(NSURLSessionTask*) customerLocationsLookupByExternalIdWithExternalId: (NSString*) externalId
        completionHandler: (void (^)(SWGCustomerLocationResponse* output, NSError* error)) handler;
```

Get a Customer Location by external_id

Lookup a Customer Location by the external_id field, corrolating to the ID in the callee's system

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

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer Location by external_id
[apiInstance customerLocationsLookupByExternalIdWithExternalId:externalId
          completionHandler: ^(SWGCustomerLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerLocationsLookupByExternalId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| The Customer&#39;s external ID | 

### Return type

[**SWGCustomerLocationResponse***](SWGCustomerLocationResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerLookup**
```objc
-(NSURLSessionTask*) customerLookupWithLogin: (NSString*) login
    password: (NSString*) password
        completionHandler: (void (^)(SWGCustomerResponse* output, NSError* error)) handler;
```

Get a Customer by their login info

Lookup a Customer by their username and password

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


NSString* login = @"login_example"; // The Customer's login name
NSString* password = @"password_example"; // The Customer's login password

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer by their login info
[apiInstance customerLookupWithLogin:login
              password:password
          completionHandler: ^(SWGCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerLookup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **NSString***| The Customer&#39;s login name | 
 **password** | **NSString***| The Customer&#39;s login password | 

### Return type

[**SWGCustomerResponse***](SWGCustomerResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerLookupByExternalId**
```objc
-(NSURLSessionTask*) customerLookupByExternalIdWithExternalId: (NSString*) externalId
        completionHandler: (void (^)(SWGCustomerResponse* output, NSError* error)) handler;
```

Get a Customer by external_id

Lookup a Customer by the external_id field, corrolating to the ID in the callee's system

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

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer by external_id
[apiInstance customerLookupByExternalIdWithExternalId:externalId
          completionHandler: ^(SWGCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerLookupByExternalId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| The Customer&#39;s external ID | 

### Return type

[**SWGCustomerResponse***](SWGCustomerResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerLookupByIssueId**
```objc
-(NSURLSessionTask*) customerLookupByIssueIdWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGCustomerResponse* output, NSError* error)) handler;
```

Get a Customer by Issue Id

Lookup a Customer by an Issue Id

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


NSString* issueId = @"issueId_example"; // An Issue Id

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer by Issue Id
[apiInstance customerLookupByIssueIdWithIssueId:issueId
          completionHandler: ^(SWGCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerLookupByIssueId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| An Issue Id | 

### Return type

[**SWGCustomerResponse***](SWGCustomerResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerLookupByUserEmail**
```objc
-(NSURLSessionTask*) customerLookupByUserEmailWithCustomerUserEmail: (NSString*) customerUserEmail
        completionHandler: (void (^)(SWGCustomerResponse* output, NSError* error)) handler;
```

Get a Customer by a User's Email

Lookup a Customer by a User Email

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


NSString* customerUserEmail = @"customerUserEmail_example"; // The Customer User's email address

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer by a User's Email
[apiInstance customerLookupByUserEmailWithCustomerUserEmail:customerUserEmail
          completionHandler: ^(SWGCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerLookupByUserEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerUserEmail** | **NSString***| The Customer User&#39;s email address | 

### Return type

[**SWGCustomerResponse***](SWGCustomerResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerLookupByUserId**
```objc
-(NSURLSessionTask*) customerLookupByUserIdWithCustomerUserId: (NSString*) customerUserId
        completionHandler: (void (^)(SWGCustomerResponse* output, NSError* error)) handler;
```

Get a Customer by a User Id

Lookup a Customer by a User Id

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


NSString* customerUserId = @"customerUserId_example"; // The Customer User's Id

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer by a User Id
[apiInstance customerLookupByUserIdWithCustomerUserId:customerUserId
          completionHandler: ^(SWGCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerLookupByUserId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerUserId** | **NSString***| The Customer User&#39;s Id | 

### Return type

[**SWGCustomerResponse***](SWGCustomerResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerUserLookupByIssueId**
```objc
-(NSURLSessionTask*) customerUserLookupByIssueIdWithIssueId: (NSString*) issueId
        completionHandler: (void (^)(SWGCustomerUserResponse* output, NSError* error)) handler;
```

Get a Customer User by Issue Id

Lookup a `CustomersUsers` by an Issue Id

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


NSString* issueId = @"issueId_example"; // An Issue Id

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer User by Issue Id
[apiInstance customerUserLookupByIssueIdWithIssueId:issueId
          completionHandler: ^(SWGCustomerUserResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerUserLookupByIssueId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **NSString***| An Issue Id | 

### Return type

[**SWGCustomerUserResponse***](SWGCustomerUserResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerUsersLookupByExternalId**
```objc
-(NSURLSessionTask*) customerUsersLookupByExternalIdWithExternalId: (NSString*) externalId
        completionHandler: (void (^)(SWGCustomerUserResponse* output, NSError* error)) handler;
```

Get a Customer User by external_id

Lookup a Customer User by the external_id field, corrolating to the ID in the callee's system

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


NSString* externalId = @"externalId_example"; // The Customer User's external ID

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer User by external_id
[apiInstance customerUsersLookupByExternalIdWithExternalId:externalId
          completionHandler: ^(SWGCustomerUserResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerUsersLookupByExternalId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **NSString***| The Customer User&#39;s external ID | 

### Return type

[**SWGCustomerUserResponse***](SWGCustomerUserResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerUsersLookupByUserEmail**
```objc
-(NSURLSessionTask*) customerUsersLookupByUserEmailWithCustomerUserEmail: (NSString*) customerUserEmail
        completionHandler: (void (^)(SWGCustomerUsersResponse* output, NSError* error)) handler;
```

Get a Customer User by a User's Email

Lookup a Customer User by a User Email

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


NSString* customerUserEmail = @"customerUserEmail_example"; // The Customer User's email address

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer User by a User's Email
[apiInstance customerUsersLookupByUserEmailWithCustomerUserEmail:customerUserEmail
          completionHandler: ^(SWGCustomerUsersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->customerUsersLookupByUserEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerUserEmail** | **NSString***| The Customer User&#39;s email address | 

### Return type

[**SWGCustomerUsersResponse***](SWGCustomerUsersResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomer**
```objc
-(NSURLSessionTask*) getCustomerWithCustomerId: (NSString*) customerId
        completionHandler: (void (^)(SWGCustomerResponse* output, NSError* error)) handler;
```

Get a Customer

Returns a `Customer` object.

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


NSString* customerId = @"customerId_example"; // The primary key of the `Customer`

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a Customer
[apiInstance getCustomerWithCustomerId:customerId
          completionHandler: ^(SWGCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->getCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The primary key of the &#x60;Customer&#x60; | 

### Return type

[**SWGCustomerResponse***](SWGCustomerResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerLocationUsers**
```objc
-(NSURLSessionTask*) getCustomerLocationUsersWithCustomerId: (NSString*) customerId
    customerLocationId: (NSString*) customerLocationId
        completionHandler: (void (^)(SWGCustomerUserResponse* output, NSError* error)) handler;
```

Get a collection of Users for a Customer Location

Returns a paginated collection of *Customer User* objects related to a *Customer Location* object.

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


NSString* customerId = @"customerId_example"; // The primary key of the *Customer*
NSString* customerLocationId = @"customerLocationId_example"; // The primary key of the *Customer Location*

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a collection of Users for a Customer Location
[apiInstance getCustomerLocationUsersWithCustomerId:customerId
              customerLocationId:customerLocationId
          completionHandler: ^(SWGCustomerUserResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->getCustomerLocationUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The primary key of the *Customer* | 
 **customerLocationId** | **NSString***| The primary key of the *Customer Location* | 

### Return type

[**SWGCustomerUserResponse***](SWGCustomerUserResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerLocations**
```objc
-(NSURLSessionTask*) getCustomerLocationsWithCustomerId: (NSString*) customerId
    customerLocationId: (NSString*) customerLocationId
        completionHandler: (void (^)(SWGCustomerLocationResponse* output, NSError* error)) handler;
```

Get a collection of Locations for a Customer

Returns a paginated collection of *Customer Location* objects related to a *Customer* object.

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


NSString* customerId = @"customerId_example"; // The primary key of the *Customer*
NSString* customerLocationId = @"customerLocationId_example"; // An optional customer_location_id to filter the results with (optional)

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a collection of Locations for a Customer
[apiInstance getCustomerLocationsWithCustomerId:customerId
              customerLocationId:customerLocationId
          completionHandler: ^(SWGCustomerLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->getCustomerLocations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The primary key of the *Customer* | 
 **customerLocationId** | **NSString***| An optional customer_location_id to filter the results with | [optional] 

### Return type

[**SWGCustomerLocationResponse***](SWGCustomerLocationResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerMetaCustomForms**
```objc
-(NSURLSessionTask*) getCustomerMetaCustomFormsWithOrgTeamId: (NSString*) orgTeamId
        completionHandler: (void (^)(SWGCustomFormsResponse* output, NSError* error)) handler;
```

List available custom forms for locations

Returns a paginated collection of `CustomForm` objects that are associated with `CustomerLocation` objects. A Custom Form is a list of additional custom fields which can apply to all Customer Location objects. Custom Forms are created and managed using Relay and may be associated with a specific Org Team

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


NSString* orgTeamId = @"orgTeamId_example"; // An optional org_team_id to filter the results with (optional)

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// List available custom forms for locations
[apiInstance getCustomerMetaCustomFormsWithOrgTeamId:orgTeamId
          completionHandler: ^(SWGCustomFormsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->getCustomerMetaCustomForms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgTeamId** | **NSString***| An optional org_team_id to filter the results with | [optional] 

### Return type

[**SWGCustomFormsResponse***](SWGCustomFormsResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerMetaIndustries**
```objc
-(NSURLSessionTask*) getCustomerMetaIndustriesWithCompletionHandler: 
        (void (^)(SWGHashMapResponse* output, NSError* error)) handler;
```

Get 'Industry' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Industry' keys to labels on `Customer` objects. Note that the actual return value might be an array, but it should be treated as a dictionary. (Provide array indexes as keys to API methods which require an Industry) 

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



SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get 'Industry' dictionary for mapping keys to labels
[apiInstance getCustomerMetaIndustriesWithCompletionHandler: 
          ^(SWGHashMapResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->getCustomerMetaIndustries: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGHashMapResponse***](SWGHashMapResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerMetaStatuses**
```objc
-(NSURLSessionTask*) getCustomerMetaStatusesWithCompletionHandler: 
        (void (^)(SWGHashMapResponse* output, NSError* error)) handler;
```

Get 'Status' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Status' keys to labels on `Customer` / `CustomerUser` objects. Note that the actual return value might be an array, but it should be treated as a dictionary. (Provide array indexes as keys to API methods which require a Status)

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



SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get 'Status' dictionary for mapping keys to labels
[apiInstance getCustomerMetaStatusesWithCompletionHandler: 
          ^(SWGHashMapResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->getCustomerMetaStatuses: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGHashMapResponse***](SWGHashMapResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerTechnology**
```objc
-(NSURLSessionTask*) getCustomerTechnologyWithCustomerId: (NSString*) customerId
    customerLocationId: (NSString*) customerLocationId
    customersTechnologyId: (NSString*) customersTechnologyId
        completionHandler: (void (^)(SWGCustomerTechnologyResponse* output, NSError* error)) handler;
```

Get a collection of technology for a Customer

Returns a paginated collection of *CustomerTechnology* objects related to a *Customer Location* object.

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


NSString* customerId = @"customerId_example"; // The primary key of the *Customer*
NSString* customerLocationId = @"customerLocationId_example"; // The primaru key of the *Customer Location*
NSString* customersTechnologyId = @"customersTechnologyId_example"; // An optional customers_technology_id to filter the results with (optional)

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a collection of technology for a Customer
[apiInstance getCustomerTechnologyWithCustomerId:customerId
              customerLocationId:customerLocationId
              customersTechnologyId:customersTechnologyId
          completionHandler: ^(SWGCustomerTechnologyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->getCustomerTechnology: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The primary key of the *Customer* | 
 **customerLocationId** | **NSString***| The primaru key of the *Customer Location* | 
 **customersTechnologyId** | **NSString***| An optional customers_technology_id to filter the results with | [optional] 

### Return type

[**SWGCustomerTechnologyResponse***](SWGCustomerTechnologyResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerUsers**
```objc
-(NSURLSessionTask*) getCustomerUsersWithCustomerId: (NSString*) customerId
    userId: (NSString*) userId
        completionHandler: (void (^)(SWGCustomerUserResponse* output, NSError* error)) handler;
```

Get a collection of Users for a Customer

Returns a paginated collection of *Customer User* objects related to a *Customer* object.

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


NSString* customerId = @"customerId_example"; // The primary key of the *Customer*
NSString* userId = @"userId_example"; // Optional user_id to filter the results with (optional)

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Get a collection of Users for a Customer
[apiInstance getCustomerUsersWithCustomerId:customerId
              userId:userId
          completionHandler: ^(SWGCustomerUserResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->getCustomerUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The primary key of the *Customer* | 
 **userId** | **NSString***| Optional user_id to filter the results with | [optional] 

### Return type

[**SWGCustomerUserResponse***](SWGCustomerUserResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putCustomer**
```objc
-(NSURLSessionTask*) putCustomerWithBody: (SWGCustomerCreateRequest*) body
        completionHandler: (void (^)(SWGCustomerCreateResponse* output, NSError* error)) handler;
```

Create/update a Customer, Location, and User

Creates/updates a `Customer` object, `CustomerLocation` object, and `CustomerUser` object in a single atomic transaction.

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


SWGCustomerCreateRequest* body = [[SWGCustomerCreateRequest alloc] init]; // The *Customer*, *Customer Location* and *Customer User* data to create/update

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Create/update a Customer, Location, and User
[apiInstance putCustomerWithBody:body
          completionHandler: ^(SWGCustomerCreateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->putCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGCustomerCreateRequest***](SWGCustomerCreateRequest.md)| The *Customer*, *Customer Location* and *Customer User* data to create/update | 

### Return type

[**SWGCustomerCreateResponse***](SWGCustomerCreateResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putCustomerLocation**
```objc
-(NSURLSessionTask*) putCustomerLocationWithBody: (SWGCustomerLocationPutRequest*) body
        completionHandler: (void (^)(SWGCustomerCreateResponse* output, NSError* error)) handler;
```

Create/update a Customer Location

Creates/updates a `CustomerLocation` object

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


SWGCustomerLocationPutRequest* body = [[SWGCustomerLocationPutRequest alloc] init]; // The *Customer Location* data to create/update

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Create/update a Customer Location
[apiInstance putCustomerLocationWithBody:body
          completionHandler: ^(SWGCustomerCreateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->putCustomerLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGCustomerLocationPutRequest***](SWGCustomerLocationPutRequest.md)| The *Customer Location* data to create/update | 

### Return type

[**SWGCustomerCreateResponse***](SWGCustomerCreateResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putCustomerUsers**
```objc
-(NSURLSessionTask*) putCustomerUsersWithBody: (SWGCustomerUserPutRequest*) body
        completionHandler: (void (^)(SWGCustomerCreateResponse* output, NSError* error)) handler;
```

Create/update a Customer User

Creates/updates a `CustomerUser` object

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


SWGCustomerUserPutRequest* body = [[SWGCustomerUserPutRequest alloc] init]; // The *Customer User* data to create/update

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Create/update a Customer User
[apiInstance putCustomerUsersWithBody:body
          completionHandler: ^(SWGCustomerCreateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->putCustomerUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGCustomerUserPutRequest***](SWGCustomerUserPutRequest.md)| The *Customer User* data to create/update | 

### Return type

[**SWGCustomerCreateResponse***](SWGCustomerCreateResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetCustomerUserPassword**
```objc
-(NSURLSessionTask*) resetCustomerUserPasswordWithLogin: (NSString*) login
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Reset a Customer User's password

Reset a Customer User's password, a password reset email will be sent.

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


NSString* login = @"login_example"; // E-mail address of the Customer User's account

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Reset a Customer User's password
[apiInstance resetCustomerUserPasswordWithLogin:login
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->resetCustomerUserPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **NSString***| E-mail address of the Customer User&#39;s account | 

### Return type

[**SWGCommonResponse***](SWGCommonResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsInvite**
```objc
-(NSURLSessionTask*) smsInviteWithSmsNumber: (NSString*) smsNumber
    orgTeamId: (NSString*) orgTeamId
        completionHandler: (void (^)(SWGSmsInviteResponse* output, NSError* error)) handler;
```

Invite an individual (via SMS) to download the App

Sends an SMS to an individual (creating a new *Customer User* for that user, if none exists) with instructions for downloading the Connect app. Creates an *Issue* for this user. Returns *Invitation*, *Customer User* and *Issue* IDs. 

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


NSString* smsNumber = @"smsNumber_example"; // The SMS number to send the Invitation to.
NSString* orgTeamId = @"orgTeamId_example"; // Optional Org Team ID to use (Default team is used if no team ID is provided) (optional)

SWGCustomersApi*apiInstance = [[SWGCustomersApi alloc] init];

// Invite an individual (via SMS) to download the App
[apiInstance smsInviteWithSmsNumber:smsNumber
              orgTeamId:orgTeamId
          completionHandler: ^(SWGSmsInviteResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCustomersApi->smsInvite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsNumber** | **NSString***| The SMS number to send the Invitation to. | 
 **orgTeamId** | **NSString***| Optional Org Team ID to use (Default team is used if no team ID is provided) | [optional] 

### Return type

[**SWGSmsInviteResponse***](SWGSmsInviteResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

