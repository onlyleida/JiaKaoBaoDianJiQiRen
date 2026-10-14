using System.ComponentModel;
using System.Configuration;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.Configuration;

public sealed class HttpRuntimeSection : ConfigurationSection
{
	private static ConfigurationProperty apartmentThreadingProp;

	private static ConfigurationProperty appRequestQueueLimitProp;

	private static ConfigurationProperty delayNotificationTimeoutProp;

	private static ConfigurationProperty enableProp;

	private static ConfigurationProperty enableHeaderCheckingProp;

	private static ConfigurationProperty enableKernelOutputCacheProp;

	private static ConfigurationProperty enableVersionHeaderProp;

	private static ConfigurationProperty executionTimeoutProp;

	private static ConfigurationProperty maxRequestLengthProp;

	private static ConfigurationProperty maxWaitChangeNotificationProp;

	private static ConfigurationProperty minFreeThreadsProp;

	private static ConfigurationProperty minLocalRequestFreeThreadsProp;

	private static ConfigurationProperty requestLengthDiskThresholdProp;

	private static ConfigurationProperty requireRootedSaveAsPathProp;

	private static ConfigurationProperty sendCacheControlHeaderProp;

	private static ConfigurationProperty shutdownTimeoutProp;

	private static ConfigurationProperty useFullyQualifiedRedirectUrlProp;

	private static ConfigurationProperty waitChangeNotificationProp;

	private static ConfigurationProperty requestPathInvalidCharactersProp;

	private static ConfigurationProperty requestValidationTypeProp;

	private static ConfigurationProperty requestValidationModeProp;

	private static ConfigurationProperty maxQueryStringLengthProp;

	private static ConfigurationProperty maxUrlLengthProp;

	private static ConfigurationProperty encoderTypeProp;

	private static ConfigurationProperty relaxedUrlToFileSystemMappingProp;

	private static ConfigurationProperty targetFrameworkProp;

	private static ConfigurationProperty allowDynamicModuleRegistrationProp;

	private static ConfigurationPropertyCollection properties;

	[ConfigurationProperty("apartmentThreading", DefaultValue = "False")]
	public bool ApartmentThreading
	{
		get
		{
			return (bool)base[apartmentThreadingProp];
		}
		set
		{
			base[apartmentThreadingProp] = value;
		}
	}

	[ConfigurationProperty("appRequestQueueLimit", DefaultValue = "5000")]
	[IntegerValidator(MinValue = 1, MaxValue = int.MaxValue)]
	public int AppRequestQueueLimit
	{
		get
		{
			return (int)base[appRequestQueueLimitProp];
		}
		set
		{
			base[appRequestQueueLimitProp] = value;
		}
	}

	[ConfigurationProperty("delayNotificationTimeout", DefaultValue = "00:00:05")]
	[TypeConverter(typeof(TimeSpanSecondsConverter))]
	public TimeSpan DelayNotificationTimeout
	{
		get
		{
			return (TimeSpan)base[delayNotificationTimeoutProp];
		}
		set
		{
			base[delayNotificationTimeoutProp] = value;
		}
	}

	[ConfigurationProperty("enable", DefaultValue = "True")]
	public bool Enable
	{
		get
		{
			return (bool)base[enableProp];
		}
		set
		{
			base[enableProp] = value;
		}
	}

	[ConfigurationProperty("enableHeaderChecking", DefaultValue = "True")]
	public bool EnableHeaderChecking
	{
		get
		{
			return (bool)base[enableHeaderCheckingProp];
		}
		set
		{
			base[enableHeaderCheckingProp] = value;
		}
	}

	[ConfigurationProperty("enableKernelOutputCache", DefaultValue = "True")]
	public bool EnableKernelOutputCache
	{
		get
		{
			return (bool)base[enableKernelOutputCacheProp];
		}
		set
		{
			base[enableKernelOutputCacheProp] = value;
		}
	}

	[ConfigurationProperty("enableVersionHeader", DefaultValue = "True")]
	public bool EnableVersionHeader
	{
		get
		{
			return (bool)base[enableVersionHeaderProp];
		}
		set
		{
			base[enableVersionHeaderProp] = value;
		}
	}

	[TimeSpanValidator(MinValueString = "00:00:00")]
	[ConfigurationProperty("executionTimeout", DefaultValue = "00:01:50")]
	[TypeConverter(typeof(TimeSpanSecondsConverter))]
	public TimeSpan ExecutionTimeout
	{
		get
		{
			return (TimeSpan)base[executionTimeoutProp];
		}
		set
		{
			base[executionTimeoutProp] = value;
		}
	}

	[IntegerValidator(MinValue = 0, MaxValue = int.MaxValue)]
	[ConfigurationProperty("maxRequestLength", DefaultValue = "4096")]
	public int MaxRequestLength
	{
		get
		{
			return (int)base[maxRequestLengthProp];
		}
		set
		{
			base[maxRequestLengthProp] = value;
		}
	}

	[IntegerValidator(MinValue = 0, MaxValue = int.MaxValue)]
	[ConfigurationProperty("maxWaitChangeNotification", DefaultValue = "0")]
	public int MaxWaitChangeNotification
	{
		get
		{
			return (int)base[maxWaitChangeNotificationProp];
		}
		set
		{
			base[maxWaitChangeNotificationProp] = value;
		}
	}

	[IntegerValidator(MinValue = 0, MaxValue = int.MaxValue)]
	[ConfigurationProperty("minFreeThreads", DefaultValue = "8")]
	public int MinFreeThreads
	{
		get
		{
			return (int)base[minFreeThreadsProp];
		}
		set
		{
			base[minFreeThreadsProp] = value;
		}
	}

	[IntegerValidator(MinValue = 0, MaxValue = int.MaxValue)]
	[ConfigurationProperty("minLocalRequestFreeThreads", DefaultValue = "4")]
	public int MinLocalRequestFreeThreads
	{
		get
		{
			return (int)base[minLocalRequestFreeThreadsProp];
		}
		set
		{
			base[minLocalRequestFreeThreadsProp] = value;
		}
	}

	[IntegerValidator(MinValue = 1, MaxValue = int.MaxValue)]
	[ConfigurationProperty("requestLengthDiskThreshold", DefaultValue = "80")]
	public int RequestLengthDiskThreshold
	{
		get
		{
			return (int)base[requestLengthDiskThresholdProp];
		}
		set
		{
			base[requestLengthDiskThresholdProp] = value;
		}
	}

	[ConfigurationProperty("requireRootedSaveAsPath", DefaultValue = "True")]
	public bool RequireRootedSaveAsPath
	{
		get
		{
			return (bool)base[requireRootedSaveAsPathProp];
		}
		set
		{
			base[requireRootedSaveAsPathProp] = value;
		}
	}

	[ConfigurationProperty("sendCacheControlHeader", DefaultValue = "True")]
	public bool SendCacheControlHeader
	{
		get
		{
			return (bool)base[sendCacheControlHeaderProp];
		}
		set
		{
			base[sendCacheControlHeaderProp] = value;
		}
	}

	[ConfigurationProperty("shutdownTimeout", DefaultValue = "00:01:30")]
	[TypeConverter(typeof(TimeSpanSecondsConverter))]
	public TimeSpan ShutdownTimeout
	{
		get
		{
			return (TimeSpan)base[shutdownTimeoutProp];
		}
		set
		{
			base[shutdownTimeoutProp] = value;
		}
	}

	[ConfigurationProperty("useFullyQualifiedRedirectUrl", DefaultValue = "False")]
	public bool UseFullyQualifiedRedirectUrl
	{
		get
		{
			return (bool)base[useFullyQualifiedRedirectUrlProp];
		}
		set
		{
			base[useFullyQualifiedRedirectUrlProp] = value;
		}
	}

	[IntegerValidator(MinValue = 0, MaxValue = int.MaxValue)]
	[ConfigurationProperty("waitChangeNotification", DefaultValue = "0")]
	public int WaitChangeNotification
	{
		get
		{
			return (int)base[waitChangeNotificationProp];
		}
		set
		{
			base[waitChangeNotificationProp] = value;
		}
	}

	[ConfigurationProperty("requestPathInvalidCharacters", DefaultValue = ",*,%,&,:,\\,?")]
	public string RequestPathInvalidCharacters
	{
		get
		{
			return (string)base[requestPathInvalidCharactersProp];
		}
		set
		{
			base[requestPathInvalidCharactersProp] = value;
		}
	}

	[ConfigurationProperty("requestValidationType", DefaultValue = "System.Web.Util.RequestValidator")]
	[StringValidator(MinLength = 1)]
	public string RequestValidationType
	{
		get
		{
			return (string)base[requestValidationTypeProp];
		}
		set
		{
			base[requestValidationTypeProp] = value;
		}
	}

	[ConfigurationProperty("requestValidationMode", DefaultValue = "4.0")]
	[TypeConverter("System.Web.Configuration.VersionConverter")]
	public Version RequestValidationMode
	{
		get
		{
			return (Version)base[requestValidationModeProp];
		}
		set
		{
			base[requestValidationModeProp] = value;
		}
	}

	[ConfigurationProperty("maxQueryStringLength", DefaultValue = "2048")]
	[IntegerValidator(MinValue = 0)]
	public int MaxQueryStringLength
	{
		get
		{
			return (int)base[maxQueryStringLengthProp];
		}
		set
		{
			base[maxQueryStringLengthProp] = value;
		}
	}

	[IntegerValidator(MinValue = 0)]
	[ConfigurationProperty("maxUrlLength", DefaultValue = "260")]
	public int MaxUrlLength
	{
		get
		{
			return (int)base[maxUrlLengthProp];
		}
		set
		{
			base[maxUrlLengthProp] = value;
		}
	}

	[StringValidator(MinLength = 1)]
	[ConfigurationProperty("encoderType", DefaultValue = "System.Web.Util.HttpEncoder")]
	public string EncoderType
	{
		get
		{
			return (string)base[encoderTypeProp];
		}
		set
		{
			base[encoderTypeProp] = value;
		}
	}

	[ConfigurationProperty("relaxedUrlToFileSystemMapping", DefaultValue = "False")]
	public bool RelaxedUrlToFileSystemMapping
	{
		get
		{
			return (bool)base[relaxedUrlToFileSystemMappingProp];
		}
		set
		{
			base[relaxedUrlToFileSystemMappingProp] = value;
		}
	}

	[TypeConverter("System.Web.Configuration.VersionConverter")]
	[ConfigurationProperty("targetFramework", DefaultValue = "4.0")]
	public Version TargetFramework
	{
		get
		{
			return (Version)base[targetFrameworkProp];
		}
		set
		{
			base[targetFrameworkProp] = value;
		}
	}

	protected override ConfigurationPropertyCollection Properties
	{
		protected internal get
		{
			return properties;
		}
	}

	[ConfigurationProperty("allowDynamicModuleRegistration", DefaultValue = "True")]
	public bool AllowDynamicModuleRegistration
	{
		get
		{
			return (bool)base[allowDynamicModuleRegistrationProp];
		}
		set
		{
			base[allowDynamicModuleRegistrationProp] = value;
		}
	}

	public AsyncPreloadModeFlags AsyncPreloadMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public TimeSpan DefaultRegexMatchTimeout
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public FcnMode FcnMode
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	static HttpRuntimeSection()
	{
		apartmentThreadingProp = new ConfigurationProperty("apartmentThreading", typeof(bool), false);
		appRequestQueueLimitProp = new ConfigurationProperty("appRequestQueueLimit", typeof(int), 5000, TypeDescriptor.GetConverter(typeof(int)), new IntegerValidator(1, int.MaxValue), ConfigurationPropertyOptions.None);
		delayNotificationTimeoutProp = new ConfigurationProperty("delayNotificationTimeout", typeof(TimeSpan), TimeSpan.FromSeconds(5.0), PropertyHelper.TimeSpanSecondsConverter, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		enableProp = new ConfigurationProperty("enable", typeof(bool), true);
		enableHeaderCheckingProp = new ConfigurationProperty("enableHeaderChecking", typeof(bool), true);
		enableKernelOutputCacheProp = new ConfigurationProperty("enableKernelOutputCache", typeof(bool), true);
		enableVersionHeaderProp = new ConfigurationProperty("enableVersionHeader", typeof(bool), true);
		executionTimeoutProp = new ConfigurationProperty("executionTimeout", typeof(TimeSpan), TimeSpan.FromSeconds(110.0), PropertyHelper.TimeSpanSecondsConverter, PropertyHelper.PositiveTimeSpanValidator, ConfigurationPropertyOptions.None);
		maxRequestLengthProp = new ConfigurationProperty("maxRequestLength", typeof(int), 4096, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		maxWaitChangeNotificationProp = new ConfigurationProperty("maxWaitChangeNotification", typeof(int), 0, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		minFreeThreadsProp = new ConfigurationProperty("minFreeThreads", typeof(int), 8, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		minLocalRequestFreeThreadsProp = new ConfigurationProperty("minLocalRequestFreeThreads", typeof(int), 4, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		requestLengthDiskThresholdProp = new ConfigurationProperty("requestLengthDiskThreshold", typeof(int), 80, TypeDescriptor.GetConverter(typeof(int)), new IntegerValidator(1, int.MaxValue), ConfigurationPropertyOptions.None);
		requireRootedSaveAsPathProp = new ConfigurationProperty("requireRootedSaveAsPath", typeof(bool), true);
		sendCacheControlHeaderProp = new ConfigurationProperty("sendCacheControlHeader", typeof(bool), true);
		shutdownTimeoutProp = new ConfigurationProperty("shutdownTimeout", typeof(TimeSpan), TimeSpan.FromSeconds(90.0), PropertyHelper.TimeSpanSecondsConverter, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		useFullyQualifiedRedirectUrlProp = new ConfigurationProperty("useFullyQualifiedRedirectUrl", typeof(bool), false);
		waitChangeNotificationProp = new ConfigurationProperty("waitChangeNotification", typeof(int), 0, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		requestPathInvalidCharactersProp = new ConfigurationProperty("requestPathInvalidCharacters", typeof(string), "<,>,*,%,&,:,\\,?");
		requestValidationTypeProp = new ConfigurationProperty("requestValidationType", typeof(string), "System.Web.Util.RequestValidator", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		requestValidationModeProp = new ConfigurationProperty("requestValidationMode", typeof(Version), new Version(4, 0), PropertyHelper.VersionConverter, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		maxQueryStringLengthProp = new ConfigurationProperty("maxQueryStringLength", typeof(int), 2048, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		maxUrlLengthProp = new ConfigurationProperty("maxUrlLength", typeof(int), 260, TypeDescriptor.GetConverter(typeof(int)), PropertyHelper.IntFromZeroToMaxValidator, ConfigurationPropertyOptions.None);
		encoderTypeProp = new ConfigurationProperty("encoderType", typeof(string), "System.Web.Util.HttpEncoder", TypeDescriptor.GetConverter(typeof(string)), PropertyHelper.NonEmptyStringValidator, ConfigurationPropertyOptions.None);
		relaxedUrlToFileSystemMappingProp = new ConfigurationProperty("relaxedUrlToFileSystemMapping", typeof(bool), false);
		targetFrameworkProp = new ConfigurationProperty("targetFramework", typeof(Version), new Version(4, 0), PropertyHelper.VersionConverter, PropertyHelper.DefaultValidator, ConfigurationPropertyOptions.None);
		allowDynamicModuleRegistrationProp = new ConfigurationProperty("allowDynamicModuleRegistration", typeof(bool), true, ConfigurationPropertyOptions.None);
		properties = new ConfigurationPropertyCollection();
		properties.Add(apartmentThreadingProp);
		properties.Add(appRequestQueueLimitProp);
		properties.Add(delayNotificationTimeoutProp);
		properties.Add(enableProp);
		properties.Add(enableHeaderCheckingProp);
		properties.Add(enableKernelOutputCacheProp);
		properties.Add(enableVersionHeaderProp);
		properties.Add(executionTimeoutProp);
		properties.Add(maxRequestLengthProp);
		properties.Add(maxWaitChangeNotificationProp);
		properties.Add(minFreeThreadsProp);
		properties.Add(minLocalRequestFreeThreadsProp);
		properties.Add(requestLengthDiskThresholdProp);
		properties.Add(requireRootedSaveAsPathProp);
		properties.Add(sendCacheControlHeaderProp);
		properties.Add(shutdownTimeoutProp);
		properties.Add(useFullyQualifiedRedirectUrlProp);
		properties.Add(waitChangeNotificationProp);
		properties.Add(requestPathInvalidCharactersProp);
		properties.Add(requestValidationTypeProp);
		properties.Add(requestValidationModeProp);
		properties.Add(maxQueryStringLengthProp);
		properties.Add(maxUrlLengthProp);
		properties.Add(encoderTypeProp);
		properties.Add(relaxedUrlToFileSystemMappingProp);
		properties.Add(targetFrameworkProp);
		properties.Add(allowDynamicModuleRegistrationProp);
	}

	[SpecialName]
	public void set_TargetFramework(string value)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
