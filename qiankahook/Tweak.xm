/*
UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AngelFaceViewController postJson" message:@"postJson" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
			[alertView show];
*/

%hook AFHTTPRequestOperationManager

+ (id)manager
{
	NSLog(@"AFHTTPRequestOperationManager manager %@",[NSThread callStackSymbols]);
    return %orig;
}

- (id)HTTPRequestOperationWithHTTPMethod:(NSString *)method
                                                     URLString:(NSString *)URLString
                                                    parameters:(id)parameters
                                                       success:(id)success
                                                       failure:(id)failure
{
    NSLog(@"HTTPRequestOperationWithHTTPMethod method is %@ URLString is %@ parameters is %@ callStackSymbols is %@",method,URLString,parameters,[NSThread callStackSymbols]);
    return %orig;
}

/*
- (id)init
{
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AFHTTPRequestOperationManager init" message:@"init" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
			[alertView show];
    return  %orig;
}

- (id)initWithBaseURL:(NSURL *)url
{
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AFHTTPRequestOperationManager initWithBaseURL" message:url.absoluteString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
			[alertView show];
	return %orig;
}

*/

%end

%hook UIDevice

- (BOOL)QK_isJailBreak
{
    %orig;
    return NO;
}

%end



%hook JSWebSocketManager

- (void)serverDidStart:(id)server {
	
    NSLog(@"Server did start… callStackSymbols is %@",[NSThread callStackSymbols]);
    return %orig;
}

- (BOOL)server:(id)server acceptWebSocketWithRequest:(NSURLRequest *)request {

    NSLog(@"Server should accept request: %@ callStackSymbols is %@", request,[NSThread callStackSymbols]);
    return %orig;
}
- (void)server:(id)server webSocket:(id)webSocket didReceiveMessage:(id)message {
    NSLog(@"Server websocket did receive message: %@ callStackSymbols is %@", message,[NSThread callStackSymbols]);
    return %orig;
}


- (void)sendWSMessage:(id)arg1
{
  NSLog(@"sendWSMessage arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}

- (void)prepareForWebSocket
{
  NSLog(@"prepareForWebSocket callStackSymbols is %@",[NSThread callStackSymbols]);
  return %orig;
}

- (void)taski9DoneWithResponse:(id)arg1
{
  NSLog(@"taski9DoneWithResponse arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}

- (void)taski9StartWithModel:(id)arg1
{
  NSLog(@"taski9StartWithModel arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}

- (void)reportTaskRunTimeInQianKaKey:(id)arg1
{
  NSLog(@"reportTaskRunTimeInQianKaKey arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}
- (void)reportTaskRunTime:(id)arg1
{
  NSLog(@"reportTaskRunTime arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}
- (void)taski9VerifyWithParams:(id)arg1
{
  NSLog(@"taski9VerifyWithParams arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}
- (void)checkTask:(id)arg1 withParams:(id)arg2 untilDone:(BOOL)arg3
{
  NSLog(@"checkTask arg1 is %@ withParams is %@ untilDone is %d callStackSymbols is %@",arg1,arg2,arg3,[NSThread callStackSymbols]);
  return %orig;
}
- (void)checkZSTask:(id)arg1 withParams:(id)arg2 untilDone:(BOOL)arg3
{
  NSLog(@"checkZSTask arg1 is %@ withParams is %@ untilDone is %d callStackSymbols is %@",arg1,arg2,arg3,[NSThread callStackSymbols]);
  return %orig;
}
- (void)webSocketZSTaskVerify:(id)arg1
{
  NSLog(@"webSocketZSTaskVerify arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}
- (void)webSocketTaskVerify:(id)arg1
{
  NSLog(@"webSocketTaskVerify arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}
- (void)webSocketLPPAWith:(id)arg1
{
  NSLog(@"webSocketLPPAWith arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}
- (void)webSocketLoginWith:(id)arg1
{
  NSLog(@"webSocketLoginWith arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}
- (void)webSocketTaskStartedWith:(id)arg1
{
  NSLog(@"webSocketTaskStartedWith arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}
- (void)webSocketNLMTaskStartedWith:(id)arg1
{
  NSLog(@"webSocketNLMTaskStartedWith arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}
- (void)webSocketZSTaskStartedWith:(id)arg1
{
  NSLog(@"webSocketZSTaskStartedWith arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}
- (void)defaltRequestForWebSocket:(id)arg1 params:(id)arg2
{
  NSLog(@"defaltRequestForWebSocket arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
  return %orig;
}

%end


%hook PSWebSocket

- (void)send:(id)message
{
  NSLog(@"send message is %@ callStackSymbols is %@",message,[NSThread callStackSymbols]);
	return %orig;
}

%end

/*
%hook UIApplication

- (BOOL)openURL:(NSURL*)url
{
  UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"UIApplication" message:url.absoluteString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
  [alertView show];
  NSLog(@"UIApplication url is %@ callStackSymbols is %@",url,[NSThread callStackSymbols]);

  return %orig;
}

%end

*/

