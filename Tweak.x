%hook ISURLBag

- (BOOL)urlIsTrusted:(NSURL*)url {
	if (![url respondsToSelector:@selector(scheme)]) {
		return NO;
	}

	if ([url.scheme.lowercaseString isEqualToString:@"data"]) {
		return NO;
	}

	return %orig;
}

%end
