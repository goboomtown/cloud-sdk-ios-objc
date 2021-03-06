#import "SWGTechnologyDictionaryResponse.h"

@implementation SWGTechnologyDictionaryResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"success": @"success", @"currentServerTime": @"current_server_time", @"totalCount": @"totalCount", @"returned": @"returned", @"pages": @"pages", @"message": @"message", @"results": @"results" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"success", @"currentServerTime", @"totalCount", @"returned", @"pages", @"message", @"results"];
  return [optionalProperties containsObject:propertyName];
}

@end
