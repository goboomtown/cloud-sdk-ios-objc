# SWGTechnologyApi

All URIs are relative to *https://api.goboomtown.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteTechnology**](SWGTechnologyApi.md#deletetechnology) | **POST** /technology/delete/{technology_id} | Delete Technology
[**getTechnology**](SWGTechnologyApi.md#gettechnology) | **GET** /technology/get/{technology_id} | Get Technology by ID
[**listTechnologyDictionary**](SWGTechnologyApi.md#listtechnologydictionary) | **GET** /technology/meta/dictionary | List technology types
[**listTechnologyTemplates**](SWGTechnologyApi.md#listtechnologytemplates) | **GET** /technology/meta/templates | List technology templates
[**putTechnology**](SWGTechnologyApi.md#puttechnology) | **POST** /technology/put | Create/update a Technology object


# **deleteTechnology**
```objc
-(NSURLSessionTask*) deleteTechnologyWithTechnologyId: (NSString*) technologyId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete Technology

Deletes the `CustomerTechnology` object referenced by the object's Primary Key (id)

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


NSString* technologyId = @"technologyId_example"; // The primary key of the `CustomerTechnology` object

SWGTechnologyApi*apiInstance = [[SWGTechnologyApi alloc] init];

// Delete Technology
[apiInstance deleteTechnologyWithTechnologyId:technologyId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGTechnologyApi->deleteTechnology: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **technologyId** | **NSString***| The primary key of the &#x60;CustomerTechnology&#x60; object | 

### Return type

void (empty response body)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTechnology**
```objc
-(NSURLSessionTask*) getTechnologyWithTechnologyId: (NSString*) technologyId
        completionHandler: (void (^)(SWGCustomerTechnologyResponse* output, NSError* error)) handler;
```

Get Technology by ID

Returns a `CustomerTechnology` object by the object's Primary Key (id)

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


NSString* technologyId = @"technologyId_example"; // The primary key of the `CustomerTechnology` object

SWGTechnologyApi*apiInstance = [[SWGTechnologyApi alloc] init];

// Get Technology by ID
[apiInstance getTechnologyWithTechnologyId:technologyId
          completionHandler: ^(SWGCustomerTechnologyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTechnologyApi->getTechnology: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **technologyId** | **NSString***| The primary key of the &#x60;CustomerTechnology&#x60; object | 

### Return type

[**SWGCustomerTechnologyResponse***](SWGCustomerTechnologyResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTechnologyDictionary**
```objc
-(NSURLSessionTask*) listTechnologyDictionaryWithCompletionHandler: 
        (void (^)(SWGTechnologyDictionaryResponse* output, NSError* error)) handler;
```

List technology types

Returns a list of the available technology device types (used for the `type` field of Technology objects)

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



SWGTechnologyApi*apiInstance = [[SWGTechnologyApi alloc] init];

// List technology types
[apiInstance listTechnologyDictionaryWithCompletionHandler: 
          ^(SWGTechnologyDictionaryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTechnologyApi->listTechnologyDictionary: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGTechnologyDictionaryResponse***](SWGTechnologyDictionaryResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTechnologyTemplates**
```objc
-(NSURLSessionTask*) listTechnologyTemplatesWithCompletionHandler: 
        (void (^)(SWGCustomerTechnologyResponse* output, NSError* error)) handler;
```

List technology templates

Returns a list of the available device / technology templates

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



SWGTechnologyApi*apiInstance = [[SWGTechnologyApi alloc] init];

// List technology templates
[apiInstance listTechnologyTemplatesWithCompletionHandler: 
          ^(SWGCustomerTechnologyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTechnologyApi->listTechnologyTemplates: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGCustomerTechnologyResponse***](SWGCustomerTechnologyResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putTechnology**
```objc
-(NSURLSessionTask*) putTechnologyWithBody: (SWGTechnologyCreateRequest*) body
        completionHandler: (void (^)(SWGTechnologyCreateResponse* output, NSError* error)) handler;
```

Create/update a Technology object

Creates/updates a `CustomerTechnology` object. To create a new object, supply the data for the new object in the request body with the `id` property set to `NULL` or omitted. To **update** an existing entry, ensure the ID of the object to be updated is set in the `id` parameter of the request, and provide any other fields to update.

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


SWGTechnologyCreateRequest* body = [[SWGTechnologyCreateRequest alloc] init]; // The *Technology*  data to create/update

SWGTechnologyApi*apiInstance = [[SWGTechnologyApi alloc] init];

// Create/update a Technology object
[apiInstance putTechnologyWithBody:body
          completionHandler: ^(SWGTechnologyCreateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTechnologyApi->putTechnology: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGTechnologyCreateRequest***](SWGTechnologyCreateRequest.md)| The *Technology*  data to create/update | 

### Return type

[**SWGTechnologyCreateResponse***](SWGTechnologyCreateResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

