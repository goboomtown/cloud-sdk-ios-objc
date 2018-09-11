# SWGShipmentsApi

All URIs are relative to *https://api.goboomtown.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShipment**](SWGShipmentsApi.md#createshipment) | **POST** /shipments/put | Create a Shipment for a Customer
[**getShipment**](SWGShipmentsApi.md#getshipment) | **GET** /shipments/get/{shipment_id} | Get a Shipment
[**getShipmentMetaCarriers**](SWGShipmentsApi.md#getshipmentmetacarriers) | **GET** /shipments/meta/carriers | Get &#39;Carrier&#39; dictionary for mapping keys to labels
[**getShipmentMetaStatuses**](SWGShipmentsApi.md#getshipmentmetastatuses) | **GET** /shipments/meta/statuses | Get &#39;Status&#39; dictionary for mapping keys to labels
[**getShipments**](SWGShipmentsApi.md#getshipments) | **GET** /shipments/get | Get a collection of Shipments


# **createShipment**
```objc
-(NSURLSessionTask*) createShipmentWithShipments: (SWGShipmentCreateRequest*) shipments
        completionHandler: (void (^)(SWGShipmentResponse* output, NSError* error)) handler;
```

Create a Shipment for a Customer

Creates a *Shipment* object

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


SWGShipmentCreateRequest* shipments = [[SWGShipmentCreateRequest alloc] init]; // The *Shipment* to create (optional)

SWGShipmentsApi*apiInstance = [[SWGShipmentsApi alloc] init];

// Create a Shipment for a Customer
[apiInstance createShipmentWithShipments:shipments
          completionHandler: ^(SWGShipmentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGShipmentsApi->createShipment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipments** | [**SWGShipmentCreateRequest***](SWGShipmentCreateRequest.md)| The *Shipment* to create | [optional] 

### Return type

[**SWGShipmentResponse***](SWGShipmentResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShipment**
```objc
-(NSURLSessionTask*) getShipmentWithShipmentId: (NSString*) shipmentId
        completionHandler: (void (^)(SWGShipmentResponse* output, NSError* error)) handler;
```

Get a Shipment

Returns an *Shipment* object.

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


NSString* shipmentId = @"shipmentId_example"; // The primary key of the *Shipment*

SWGShipmentsApi*apiInstance = [[SWGShipmentsApi alloc] init];

// Get a Shipment
[apiInstance getShipmentWithShipmentId:shipmentId
          completionHandler: ^(SWGShipmentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGShipmentsApi->getShipment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipmentId** | **NSString***| The primary key of the *Shipment* | 

### Return type

[**SWGShipmentResponse***](SWGShipmentResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShipmentMetaCarriers**
```objc
-(NSURLSessionTask*) getShipmentMetaCarriersWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Carrier' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Carrier' keys to labels on *Shipment* objects.

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



SWGShipmentsApi*apiInstance = [[SWGShipmentsApi alloc] init];

// Get 'Carrier' dictionary for mapping keys to labels
[apiInstance getShipmentMetaCarriersWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGShipmentsApi->getShipmentMetaCarriers: %@", error);
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

# **getShipmentMetaStatuses**
```objc
-(NSURLSessionTask*) getShipmentMetaStatusesWithCompletionHandler: 
        (void (^)(SWGEnumerationItemResponse* output, NSError* error)) handler;
```

Get 'Status' dictionary for mapping keys to labels

Returns a dictionary for mapping 'Status' keys to labels on *Shipment* objects. 

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



SWGShipmentsApi*apiInstance = [[SWGShipmentsApi alloc] init];

// Get 'Status' dictionary for mapping keys to labels
[apiInstance getShipmentMetaStatusesWithCompletionHandler: 
          ^(SWGEnumerationItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGShipmentsApi->getShipmentMetaStatuses: %@", error);
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

# **getShipments**
```objc
-(NSURLSessionTask*) getShipmentsWithLimit: (NSNumber*) limit
    start: (NSNumber*) start
        completionHandler: (void (^)(SWGShipmentResponse* output, NSError* error)) handler;
```

Get a collection of Shipments

Returns a paginated collection of *Shipment* objects.

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

SWGShipmentsApi*apiInstance = [[SWGShipmentsApi alloc] init];

// Get a collection of Shipments
[apiInstance getShipmentsWithLimit:limit
              start:start
          completionHandler: ^(SWGShipmentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGShipmentsApi->getShipments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| Pagination result limit (defaults to 10) | [optional] 
 **start** | **NSNumber***| Pagination starting result number (defaults to 0) | [optional] 

### Return type

[**SWGShipmentResponse***](SWGShipmentResponse.md)

### Authorization

[X-Boomtown-Date](../README.md#X-Boomtown-Date), [X-Boomtown-Signature](../README.md#X-Boomtown-Signature), [X-Boomtown-Token](../README.md#X-Boomtown-Token)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

