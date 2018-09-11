#import "SWGIssueChatHistoryTranscript.h"

@implementation SWGIssueChatHistoryTranscript

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"chatId": @"chat_id", @"participant": @"participant", @"participantId": @"participant_id", @"timestamp": @"timestamp", @"hadPayload": @"hadPayload", @"text": @"text", @"user": @"user", @"chat": @"chat" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"chatId", @"participant", @"participantId", @"timestamp", @"hadPayload", @"text", @"user", @"chat"];
  return [optionalProperties containsObject:propertyName];
}

@end
