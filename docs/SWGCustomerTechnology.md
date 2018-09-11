# SWGCustomerTechnology

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | Primary key | [optional] 
**parentId** | **NSString*** | The primary key of the related *CustomerTechnology* | [optional] 
**customerId** | **NSString*** | The primary key of the related *Customer* | [optional] 
**customerLocationId** | **NSString*** | The primary key of the related *CustomerLocation* | [optional] 
**orgId** | **NSString*** | The primary key of the related *Org* | [optional] 
**nickname** | **NSString*** | chat nickname | [optional] 
**type** | **NSString*** | technology type | [optional] 
**critical** | **NSNumber*** | Is device in critical status | [optional] 
**active** | **NSNumber*** | is active | [optional] 
**label** | **NSString*** | friendly label | [optional] 
**make** | **NSString*** | device make | [optional] 
**model** | **NSString*** | device model | [optional] 
**serialNumber** | **NSString*** | device serial | [optional] 
**version** | **NSString*** | firmware version | [optional] 
**ipAddress** | **NSString*** | ip address | [optional] 
**macAdddress** | **NSString*** | mac address | [optional] 
**externalId** | **NSString*** | Unique ID / Primary Key of this object within a third-party system, used to correlate with the callee&#39;s data | [optional] 
**notes** | **NSString*** | technology notes | [optional] 
**location** | **NSString*** | device location relative to location | [optional] 
**statusDetail** | **NSString*** | extended status details | [optional] 
**created** | **NSDate*** | Created | [optional] 
**updated** | **NSDate*** | Updated | [optional] 
**lastChecked** | **NSDate*** | Last time contact with device was attempted | [optional] 
**lastSeen** | **NSDate*** | Last time contact with the device was made | [optional] 
**lastChanged** | **NSDate*** | Last time a change was recorded | [optional] 
**pciSscRefNo** | **NSString*** | Refernce number | [optional] 
**ptsDeviceDependencies** | **NSString*** | dependencies | [optional] 
**appPaDssListed** | **NSNumber*** | list | [optional] 
**paDdsExpireDate** | **NSDate*** | expiration | [optional] 
**metadataValues** | [**SWGCustomerTechnologyMetadata***](SWGCustomerTechnologyMetadata.md) |  | [optional] 
**pciCompliant** | **NSString*** | PCI compliance status | [optional] 
**policy** | **NSString*** | Monitoring policy | [optional] 
**status** | **NSString*** | Status | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


