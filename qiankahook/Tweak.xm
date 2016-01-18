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

/*

%hook JSWebSocketManager

- (void)sendWSMessage:(id)arg1
{
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"JSWebSocketManager" message:arg1 delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alertView show];
	return %orig;
}

- (void)serverDidStart:(id)server {
	
    NSLog(@"Server did start…");
    return %orig;
}
- (void)serverDidStop:(id)server {
	
    NSLog(@"Server did stop…");
    return %orig;
}
- (BOOL)server:(id)server acceptWebSocketWithRequest:(NSURLRequest *)request {

    NSLog(@"Server should accept request: %@", request);
    return %orig;
}
- (void)server:(id)server webSocket:(id)webSocket didReceiveMessage:(id)message {
    NSLog(@"Server websocket did receive message: %@", message);
    return %orig;
}
- (void)server:(id)server webSocketDidOpen:(id)webSocket {
    NSLog(@"Server websocket did open");
    return %orig;
}
- (void)server:(id)server webSocket:(id)webSocket didCloseWithCode:(NSInteger)code reason:(NSString *)reason wasClean:(BOOL)wasClean {
    NSLog(@"Server websocket did close with code: %@, reason: %@, wasClean: %@", @(code), reason, @(wasClean));
    return %orig;
}
- (void)server:(id)server webSocket:(id)webSocket didFailWithError:(NSError *)error {
    NSLog(@"Server websocket did fail with error: %@", error);
    return %orig;
}


%end


%hook PSWebSocket

- (void)send:(id)message
{
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AngelFaceViewController postJson" message:@"postJson" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alertView show];

	return %orig;
}

%end

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