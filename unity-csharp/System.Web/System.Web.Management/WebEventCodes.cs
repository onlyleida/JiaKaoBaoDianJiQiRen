namespace System.Web.Management;

public sealed class WebEventCodes
{
	public const int InvalidEventCode = -1;

	public const int UndefinedEventCode = 0;

	public const int UndefinedEventDetailCode = 0;

	public const int ApplicationCodeBase = 1000;

	public const int ApplicationStart = 1001;

	public const int ApplicationShutdown = 1002;

	public const int ApplicationCompilationStart = 1003;

	public const int ApplicationCompilationEnd = 1004;

	public const int ApplicationHeartbeat = 1005;

	public const int RequestCodeBase = 2000;

	public const int RequestTransactionComplete = 2001;

	public const int RequestTransactionAbort = 2002;

	public const int ErrorCodeBase = 3000;

	public const int RuntimeErrorRequestAbort = 3001;

	public const int RuntimeErrorViewStateFailure = 3002;

	public const int RuntimeErrorValidationFailure = 3003;

	public const int RuntimeErrorPostTooLarge = 3004;

	public const int RuntimeErrorUnhandledException = 3005;

	public const int WebErrorParserError = 3006;

	public const int WebErrorCompilationError = 3007;

	public const int WebErrorConfigurationError = 3008;

	public const int WebErrorOtherError = 3009;

	public const int WebErrorPropertyDeserializationError = 3010;

	public const int WebErrorObjectStateFormatterDeserializationError = 3011;

	public const int AuditCodeBase = 4000;

	public const int AuditFormsAuthenticationSuccess = 4001;

	public const int AuditMembershipAuthenticationSuccess = 4002;

	public const int AuditUrlAuthorizationSuccess = 4003;

	public const int AuditFileAuthorizationSuccess = 4004;

	public const int AuditFormsAuthenticationFailure = 4005;

	public const int AuditMembershipAuthenticationFailure = 4006;

	public const int AuditUrlAuthorizationFailure = 4007;

	public const int AuditFileAuthorizationFailure = 4008;

	public const int AuditInvalidViewStateFailure = 4009;

	public const int AuditUnhandledSecurityException = 4010;

	public const int AuditUnhandledAccessException = 4011;

	public const int MiscCodeBase = 6000;

	public const int WebEventProviderInformation = 6001;

	public const int ApplicationDetailCodeBase = 50000;

	public const int ApplicationShutdownUnknown = 50001;

	public const int ApplicationShutdownHostingEnvironment = 50002;

	public const int ApplicationShutdownChangeInGlobalAsax = 50003;

	public const int ApplicationShutdownConfigurationChange = 50004;

	public const int ApplicationShutdownUnloadAppDomainCalled = 50005;

	public const int ApplicationShutdownChangeInSecurityPolicyFile = 50006;

	public const int ApplicationShutdownBinDirChangeOrDirectoryRename = 50007;

	public const int ApplicationShutdownBrowsersDirChangeOrDirectoryRename = 50008;

	public const int ApplicationShutdownCodeDirChangeOrDirectoryRename = 50009;

	public const int ApplicationShutdownResourcesDirChangeOrDirectoryRename = 50010;

	public const int ApplicationShutdownIdleTimeout = 50011;

	public const int ApplicationShutdownPhysicalApplicationPathChanged = 50012;

	public const int ApplicationShutdownHttpRuntimeClose = 50013;

	public const int ApplicationShutdownInitializationError = 50014;

	public const int ApplicationShutdownMaxRecompilationsReached = 50015;

	public const int StateServerConnectionError = 50016;

	public const int AuditDetailCodeBase = 50200;

	public const int InvalidTicketFailure = 50201;

	public const int ExpiredTicketFailure = 50202;

	public const int InvalidViewStateMac = 50203;

	public const int InvalidViewState = 50204;

	public const int WebEventDetailCodeBase = 50300;

	public const int SqlProviderEventsDropped = 50301;

	public const int WebExtendedBase = 100000;

	public const int ApplicationShutdownBuildManagerChange = 50017;

	public const int RuntimeErrorWebResourceFailure = 3012;
}
