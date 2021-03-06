//
//  IQ_Parse.m
// https://github.com/hackiftekhar/IQParseSDK
// Copyright (c) 2013-14 Iftekhar Qurashi.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "IQ_Parse.h"
#import "IQPFWebService.h"

@implementation IQ_Parse

static NSString *PARSE_APPLICATION_ID;
static NSString *PARSE_REST_API_KEY;

+ (void)setApplicationId:(NSString *)applicationId restAPIKey:(NSString *)restAPIKey;
{
    PARSE_APPLICATION_ID = applicationId;
    PARSE_REST_API_KEY = restAPIKey;
    
    [[IQPFWebService service] addDefaultHeaderValue:[IQ_Parse getApplicationId] forHeaderField:kParse_X_Parse_Application_Id];
    [[IQPFWebService service] addDefaultHeaderValue:[IQ_Parse getRestAPIKey] forHeaderField:kParse_X_Parse_REST_API_Key];
}

+ (NSString *)getApplicationId
{
    return PARSE_APPLICATION_ID;
}

+ (NSString *)getRestAPIKey;
{
    return PARSE_REST_API_KEY;
}

//+ (void)offlineMessagesEnabled:(BOOL)enabled;
//+ (void)errorMessagesEnabled:(BOOL)enabled;

@end
