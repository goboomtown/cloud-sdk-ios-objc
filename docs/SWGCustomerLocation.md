# SWGCustomerLocation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | Primary key | [optional] 
**customerId** | **NSString*** | The primary key of the related *Customer* | [optional] 
**street1** | **NSString*** | Address 1 | 
**street2** | **NSString*** | Address 2 | [optional] 
**city** | **NSString*** | City | 
**state** | **NSString*** | State/Province (2 char code) | 
**zipcode** | **NSString*** | ZIP/Postal Code | 
**latitude** | **NSNumber*** | Latitude | [optional] 
**longitude** | **NSNumber*** | Longitude | [optional] 
**phone** | **NSString*** | Phone | [optional] 
**siteName** | **NSString*** | Informal reference, an alias | [optional] 
**externalId** | **NSString*** | Unique ID / Primary Key of this object within a third-party system, used to correlate with the callee&#39;s data | [optional] 
**notes** | **NSString*** | Notes | [optional] 
**customForms** | [**SWGCustomFormDataList***](SWGCustomFormDataList.md) |  | [optional] 
**files** | [**NSArray&lt;NSArray&lt;SWGUploadFile&gt;*&gt;***](NSArray.md) | File attachments by category | [optional] 
**customerIds** | **NSArray&lt;NSString*&gt;*** | Customer Identification Number(s) (MIDs) | [optional] 
**metadataValues** | [**SWGCustomerLocationMetadata***](SWGCustomerLocationMetadata.md) |  | [optional] 
**technology** | [**SWGCustomerTechnologySummary***](SWGCustomerTechnologySummary.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


