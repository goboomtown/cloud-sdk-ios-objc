#import "SWGUploadFile.h"

@implementation SWGUploadFile

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"object": @"object", @"objectId": @"object_id", @"type": @"type", @"file": @"file", @"size": @"size", @"name": @"name", @"tag": @"tag", @"notes": @"notes", @"thumbnail": @"thumbnail", @"created": @"created" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"object", @"objectId", @"type", @"file", @"size", @"name", @"tag", @"notes", @"thumbnail", @"created"];
  return [optionalProperties containsObject:propertyName];
}

@end
