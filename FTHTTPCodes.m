//
//  FTHTTPCodes.m
//
//  Created by Ondrej Rafaj on 07/10/2013.
//  Copyright (c) 2013 Fuerte Internationsl. All rights reserved.
//
//  Codes and copy taken from: http://en.wikipedia.org/wiki/List_of_HTTP_status_codes
//
//  Published under MIT license
//

#import "FTHTTPCodes.h"


@implementation FTHTTPCodes


#pragma mark Code descriptions

+ (NSString *)descriptionForCode:(FTHTTPCodesNo)code {
    switch (code) {
            
        // 1XX Informational
        case FTHTTPCodesNo1XXInformationalUnknown:
            return @"Undefined 1XX status code";
            break;
            
        case FTHTTPCodesNo100Continue:
            return @"This means that the server has received the request headers, and that the client should proceed to send the request body (in the case of a request for which a body needs to be sent; for example, a POST request). If the request body is large, sending it to a server when a request has already been rejected based upon inappropriate headers is inefficient. To have a server check if the request could be accepted based on the request's headers alone, a client must send Expect: 100-continue as a header in its initial request and check if a 100 Continue status code is received in response before continuing (or receive 417 Expectation Failed and not continue).";
            break;
            
        case FTHTTPCodesNo101SwitchingProtocols:
            return @"This means the requester has asked the server to switch protocols and the server is acknowledging that it will do so.";
            break;
            
        case FTHTTPCodesNo102Processing:
            return @"As a WebDAV request may contain many sub-requests involving file operations, it may take a long time to complete the request. This code indicates that the server has received and is processing the request, but no response is available yet. This prevents the client from timing out and assuming the request was lost.";
            break;
            
        // 2XX Success
        case FTHTTPCodesNo2XXSuccessUnknown:
            return @"Undefined 2XX status code";
            break;
            
        case FTHTTPCodesNo200OK:
            return @"Standard response for successful HTTP requests. The actual response will depend on the request method used. In a GET request, the response will contain an entity corresponding to the requested resource. In a POST request the response will contain an entity describing or containing the result of the action.";
            break;
            
            
        case FTHTTPCodesNo201Created:
            return @"The request has been fulfilled and resulted in a new resource being created.";
            break;
            
            
        case FTHTTPCodesNo202Accepted:
            return @"The request has been accepted for processing, but the processing has not been completed. The request might or might not eventually be acted upon, as it might be disallowed when processing actually takes place.";
            break;
            
            
        case FTHTTPCodesNo203NonAuthoritativeInformation:
            return @"The server successfully processed the request, but is returning information that may be from another source.";
            break;
            
            
        case FTHTTPCodesNo204NoContent:
            return @"The server successfully processed the request, but is not returning any content. Usually used as a response to a successful delete request.";
            break;
            
            
        case FTHTTPCodesNo205ResetContent:
            return @"The server successfully processed the request, but is not returning any content. Unlike a 204 response, this response requires that the requester reset the document view.";
            break;
            
            
        case FTHTTPCodesNo206PartialContent:
            return @"The server is delivering only part of the resource due to a range header sent by the client. The range header is used by tools like wget to enable resuming of interrupted downloads, or split a download into multiple simultaneous streams.";
            break;
            
            
        case FTHTTPCodesNo207MultiStatus:
            return @"The message body that follows is an XML message and can contain a number of separate response codes, depending on how many sub-requests were made.";
            break;
            
            
        case FTHTTPCodesNo208AlreadyReported:
            return @"The members of a DAV binding have already been enumerated in a previous reply to this request, and are not being included again.";
            break;
            
            
        case FTHTTPCodesNo209IMUsed:
            return @"The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.";
            break;
            
            
        // 3XX Success
        case FTHTTPCodesNo3XXSuccessUnknown:
            return @"Undefined 3XX status code";
            break;
            
        case FTHTTPCodesNo300MultipleChoices:
            return @"Indicates multiple options for the resource that the client may follow. It, for instance, could be used to present different format options for video, list files with different extensions, or word sense disambiguation.";
            break;
            
            
        case FTHTTPCodesNo301MovedPermanently:
            return @"This and all future requests should be directed to the given URI.";
            break;
            
            
        case FTHTTPCodesNo302Found:
            return @"This is an example of industry practice contradicting the standard. The HTTP/1.0 specification (RFC 1945) required the client to perform a temporary redirect (the original describing phrase was \"Moved Temporarily\"), but popular browsers implemented 302 with the functionality of a 303 See Other. Therefore, HTTP/1.1 added status codes 303 and 307 to distinguish between the two behaviours. However, some Web applications and frameworks use the 302 status code as if it were the 303.";
            break;
            
            
        case FTHTTPCodesNo303SeeOther:
            return @"The response to the request can be found under another URI using a GET method. When received in response to a POST (or PUT/DELETE), it should be assumed that the server has received the data and the redirect should be issued with a separate GET message.";
            break;
            
            
        case FTHTTPCodesNo304NotModified:
            return @"Indicates that the resource has not been modified since the version specified by the request headers If-Modified-Since or If-Match. This means that there is no need to retransmit the resource, since the client still has a previously-downloaded copy.";
            break;
            
            
        case FTHTTPCodesNo305UseProxy:
            return @"The requested resource is only available through a proxy, whose address is provided in the response. Many HTTP clients (such as Mozilla and Internet Explorer) do not correctly handle responses with this status code, primarily for security reasons.";
            break;
            
            
        case FTHTTPCodesNo306SwitchProxy:
            return @"No longer used. Originally meant \"Subsequent requests should use the specified proxy.\"";
            break;
            
            
        case FTHTTPCodesNo307TemporaryRedirect:
            return @"In this case, the request should be repeated with another URI; however, future requests should still use the original URI. In contrast to how 302 was historically implemented, the request method is not allowed to be changed when reissuing the original request. For instance, a POST request should be repeated using another POST request.";
            break;
            
            
        case FTHTTPCodesNo308PermanentRedirect:
            return @"The request, and all future requests should be repeated using another URI. 307 and 308 (as proposed) parallel the behaviours of 302 and 301, but do not allow the HTTP method to change. So, for example, submitting a form to a permanently redirected resource may continue smoothly.";
            break;
            
        
        // 4XX Success
        case FTHTTPCodesNo4XXSuccessUnknown:
            return @"Undefined 4XX status code";
            break;
            
        case FTHTTPCodesNo400BadRequest:
            return @"The request cannot be fulfilled due to bad syntax.";
            break;
            
        case FTHTTPCodesNo401Unauthorised:
            return @"Similar to 403 Forbidden, but specifically for use when authentication is required and has failed or has not yet been provided. The response must include a WWW-Authenticate header field containing a challenge applicable to the requested resource. See Basic access authentication and Digest access authentication.";
            break;
            
        case FTHTTPCodesNo402PaymentRequired:
            return @"Reserved for future use. The original intention was that this code might be used as part of some form of digital cash or micropayment scheme, but that has not happened, and this code is not usually used.";
            break;
            
        case FTHTTPCodesNo403Forbidden:
            return @"The request was a valid request, but the server is refusing to respond to it. Unlike a 401 Unauthorized response, authenticating will make no difference. On servers where authentication is required, this commonly means that the provided credentials were successfully authenticated but that the credentials still do not grant the client permission to access the resource (e.g., a recognized user attempting to access restricted content).";
            break;
            
        case FTHTTPCodesNo404NotFound:
            return @"The requested resource could not be found but may be available again in the future. Subsequent requests by the client are permissible.";
            break;
            
        case FTHTTPCodesNo405MethodNotAllowed:
            return @"A request was made of a resource using a request method not supported by that resource; for example, using GET on a form which requires data to be presented via POST, or using PUT on a read-only resource.";
            break;
            
        case FTHTTPCodesNo406NotAcceptable:
            return @"The requested resource is only capable of generating content not acceptable according to the Accept headers sent in the request.";
            break;
            
        case FTHTTPCodesNo407ProxyAuthenticationRequired:
            return @"The client must first authenticate itself with the proxy.";
            break;
            
        case FTHTTPCodesNo408RequestTimeout:
            return @"The client did not produce a request within the time that the server was prepared to wait. The client MAY repeat the request without modifications at any later time.";
            break;
            
        case FTHTTPCodesNo409Conflict:
            return @"Indicates that the request could not be processed because of conflict in the request, such as an edit conflict in the case of multiple updates.";
            break;
            
        case FTHTTPCodesNo410Gone:
            return @"Indicates that the resource requested is no longer available and will not be available again. This should be used when a resource has been intentionally removed and the resource should be purged. Upon receiving a 410 status code, the client should not request the resource again in the future. Clients such as search engines should remove the resource from their indices. Most use cases do not require clients and search engines to purge the resource, and a \"404 Not Found\" may be used instead.";
            break;
            
        case FTHTTPCodesNo411LengthRequired:
            return @"The request did not specify the length of its content, which is required by the requested resource.";
            break;
            
        case FTHTTPCodesNo412PreconditionFailed:
            return @"The server does not meet one of the preconditions that the requester put on the request.";
            break;
            
        case FTHTTPCodesNo413RequestEntityTooLarge:
            return @"The request is larger than the server is willing or able to process.";
            break;
            
        case FTHTTPCodesNo414RequestURITooLong:
            return @"The URI provided was too long for the server to process. Often the result of too much data being encoded as a query-string of a GET request, in which case it should be converted to a POST request.";
            break;
            
        case FTHTTPCodesNo415UnsupportedMediaType:
            return @"The request entity has a media type which the server or resource does not support. For example, the client uploads an image as image/svg+xml, but the server requires that images use a different format.";
            break;
            
        case FTHTTPCodesNo416RequestedRangeNotSatisfiable:
            return @"The client has asked for a portion of the file, but the server cannot supply that portion. For example, if the client asked for a part of the file that lies beyond the end of the file.";
            break;
            
        case FTHTTPCodesNo417ExpectationFailed:
            return @"The server cannot meet the requirements of the Expect request-header field.";
            break;
            
        case FTHTTPCodesNo418IamATeapot:
            return @"This code was defined in 1998 as one of the traditional IETF April Fools' jokes, in RFC 2324, Hyper Text Coffee Pot Control Protocol, and is not expected to be implemented by actual HTTP servers.";
            break;
            
        case FTHTTPCodesNo419AuthenticationTimeout:
            return @"Not a part of the HTTP standard, 419 Authentication Timeout denotes that previously valid authentication has expired. It is used as an alternative to 401 Unauthorized in order to differentiate from otherwise authenticated clients being denied access to specific server resources";
            break;
            
        case FTHTTPCodesNo420MethodFailureSpringFramework:
            return @"Not part of the HTTP standard, but defined by Spring in the HttpStatus class to be used when a method failed.";
            break;
            
        case FTHTTPCodesNo420EnhanceYourCalmTwitter:
            return @"Not part of the HTTP standard, but returned by the Twitter Search and Trends API when the client is being rate limited. Other services may wish to implement the 429 Too Many Requests response code instead.";
            break;
            
        case FTHTTPCodesNo422UnprocessableEntity:
            return @"The request was well-formed but was unable to be followed due to semantic errors.";
            break;
            
        case FTHTTPCodesNo423Locked:
            return @"The resource that is being accessed is locked.";
            break;
            
        case FTHTTPCodesNo424FailedDependency:
            return @"The request failed due to failure of a previous request (e.g., a PROPPATCH).";
            break;
            
        case FTHTTPCodesNo424MethodFailureWebDaw:
            return @"Indicates the method was not executed on a particular resource within its scope because some part of the method's execution failed causing the entire method to be aborted.";
            break;
            
        case FTHTTPCodesNo425UnorderedCollection:
            return @"Defined in drafts of \"WebDAV Advanced Collections Protocol\", but not present in \"Web Distributed Authoring and Versioning (WebDAV) Ordered Collections Protocol\".";
            break;
            
        case FTHTTPCodesNo426UpgradeRequired:
            return @"The client should switch to a different protocol such as TLS/1.0.";
            break;
            
        case FTHTTPCodesNo428PreconditionRequired:
            return @"The origin server requires the request to be conditional. Intended to prevent \"the 'lost update' problem, where a client GETs a resource's state, modifies it, and PUTs it back to the server, when meanwhile a third party has modified the state on the server, leading to a conflict.\"";
            break;
            
        case FTHTTPCodesNo429TooManyRequests:
            return @"The user has sent too many requests in a given amount of time. Intended for use with rate limiting schemes.";
            break;
            
        case FTHTTPCodesNo431RequestHeaderFieldsTooLarge:
            return @"The server is unwilling to process the request because either an individual header field, or all the header fields collectively, are too large.";
            break;
            
        case FTHTTPCodesNo444NoResponseNginx:
            return @"Used in Nginx logs to indicate that the server has returned no information to the client and closed the connection (useful as a deterrent for malware).";
            break;
            
        case FTHTTPCodesNo449RetryWithMicrosoft:
            return @"A Microsoft extension. The request should be retried after performing the appropriate action.";
            break;
            
        case FTHTTPCodesNo450BlockedByWindowsParentalControls:
            return @"A Microsoft extension. This error is given when Windows Parental Controls are turned on and are blocking access to the given webpage.";
            break;
            
        case FTHTTPCodesNo451RedirectMicrosoft:
            return @"Used in Exchange ActiveSync if there either is a more efficient server to use or the server can't access the users' mailbox. The client is supposed to re-run the HTTP Autodiscovery protocol to find a better suited server.";
            break;
            
        case FTHTTPCodesNo451UnavailableForLegalReasons:
            return @"Defined in the internet draft \"A New HTTP Status Code for Legally-restricted Resources\". Intended to be used when resource access is denied for legal reasons, e.g. censorship or government-mandated blocked access. A reference to the 1953 dystopian novel Fahrenheit 451, where books are outlawed.";
            break;
            
        case FTHTTPCodesNo494RequestHeaderTooLargeNginx:
            return @"Nginx internal code similar to 431 but it was introduced earlier.";
            break;
            
        case FTHTTPCodesNo495CertErrorNginx:
            return @"Nginx internal code used when SSL client certificate error occurred to distinguish it from 4XX in a log and an error page redirection.";
            break;
            
        case FTHTTPCodesNo496NoCertNginx:
            return @"Nginx internal code used when client didn't provide certificate to distinguish it from 4XX in a log and an error page redirection.";
            break;
            
        case FTHTTPCodesNo497HTTPToHTTPSNginx:
            return @"Nginx internal code used for the plain HTTP requests that are sent to HTTPS port to distinguish it from 4XX in a log and an error page redirection.";
            break;
            
        case FTHTTPCodesNo499ClientClosedRequestNginx:
            return @"Used in Nginx logs to indicate when the connection has been closed by client while the server is still processing its request, making server unable to send a status code back.";
            break;
            
        // 5XX Success
        case FTHTTPCodesNo5XXSuccessUnknown:
            return @"Undefined 5XX status code";
            break;
            
        case FTHTTPCodesNo500InternalServerError:
            return @"A generic error message, given when no more specific message is suitable.";
            break;
            
        case FTHTTPCodesNo501NotImplemented:
            return @"The server either does not recognize the request method, or it lacks the ability to fulfill the request. Usually this implies future availability (e.g., a new feature of a web-service API).";
            break;
            
        case FTHTTPCodesNo502BadGateway:
            return @"The server was acting as a gateway or proxy and received an invalid response from the upstream server.";
            break;
            
        case FTHTTPCodesNo503ServiceUnavailable:
            return @"The server is currently unavailable (because it is overloaded or down for maintenance). Generally, this is a temporary state. Sometimes, this can be permanent as well on test servers.";
            break;
            
        case FTHTTPCodesNo504GatewayTimeout:
            return @"The server was acting as a gateway or proxy and did not receive a timely response from the upstream server.";
            break;
            
        case FTHTTPCodesNo505HTTPVersionNotSupported:
            return @"The server does not support the HTTP protocol version used in the request.";
            break;
            
        case FTHTTPCodesNo506VariantAlsoNegotiates:
            return @"Transparent content negotiation for the request results in a circular reference.";
            break;
            
        case FTHTTPCodesNo507InsufficientStorage:
            return @"The server is unable to store the representation needed to complete the request.";
            break;
            
        case FTHTTPCodesNo508LoopDetected:
            return @"The server detected an infinite loop while processing the request (sent in lieu of 208 Not Reported).";
            break;
            
        case FTHTTPCodesNo509BandwidthLimitExceeded:
            return @"This status code, while used by many servers, is not specified in any RFCs.";
            break;
            
        case FTHTTPCodesNo510NotExtended:
            return @"Further extensions to the request are required for the server to fulfill it.";
            break;
            
        case FTHTTPCodesNo511NetworkAuthenticationRequired:
            return @"The client needs to authenticate to gain network access. Intended for use by intercepting proxies used to control access to the network (e.g., \"captive portals\" used to require agreement to Terms of Service before granting full Internet access via a Wi-Fi hotspot).";
            break;
            
        case FTHTTPCodesNo522ConnectionTimedOut:
            return @"The server connection timed out.";
            break;
            
        case FTHTTPCodesNo598NetworkReadTimeoutErrorUnknown:
            return @"This status code is not specified in any RFCs, but is used by Microsoft HTTP proxies to signal a network read timeout behind the proxy to a client in front of the proxy.";
            break;
            
        case FTHTTPCodesNo599NetworkConnectTimeoutErrorUnknown:
            return @"This status code is not specified in any RFCs, but is used by Microsoft HTTP proxies to signal a network connect timeout behind the proxy to a client in front of the proxy.";
            break;
            
        default:
            break;
    }
}


@end
