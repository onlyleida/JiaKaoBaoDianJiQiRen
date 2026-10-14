using System.EnterpriseServices;

namespace System.Web.Services;

[AttributeUsage(AttributeTargets.Method)]
public sealed class WebMethodAttribute : Attribute
{
	private int transactionOption;

	private bool enableSession;

	private int cacheDuration;

	private bool bufferResponse;

	private string description;

	private string messageName;

	private bool transactionOptionSpecified;

	private bool enableSessionSpecified;

	private bool cacheDurationSpecified;

	private bool bufferResponseSpecified;

	private bool descriptionSpecified;

	private bool messageNameSpecified;

	public string Description
	{
		get
		{
			if (description != null)
			{
				return description;
			}
			return string.Empty;
		}
		set
		{
			description = value;
			descriptionSpecified = true;
		}
	}

	internal bool DescriptionSpecified => descriptionSpecified;

	public bool EnableSession
	{
		get
		{
			return enableSession;
		}
		set
		{
			enableSession = value;
			enableSessionSpecified = true;
		}
	}

	internal bool EnableSessionSpecified => enableSessionSpecified;

	public int CacheDuration
	{
		get
		{
			return cacheDuration;
		}
		set
		{
			cacheDuration = value;
			cacheDurationSpecified = true;
		}
	}

	internal bool CacheDurationSpecified => cacheDurationSpecified;

	public bool BufferResponse
	{
		get
		{
			return bufferResponse;
		}
		set
		{
			bufferResponse = value;
			bufferResponseSpecified = true;
		}
	}

	internal bool BufferResponseSpecified => bufferResponseSpecified;

	public TransactionOption TransactionOption
	{
		get
		{
			return (TransactionOption)transactionOption;
		}
		set
		{
			transactionOption = (int)value;
			transactionOptionSpecified = true;
		}
	}

	internal bool TransactionOptionSpecified => transactionOptionSpecified;

	internal bool TransactionEnabled => transactionOption != 0;

	public string MessageName
	{
		get
		{
			if (messageName != null)
			{
				return messageName;
			}
			return string.Empty;
		}
		set
		{
			messageName = value;
			messageNameSpecified = true;
		}
	}

	internal bool MessageNameSpecified => messageNameSpecified;

	public WebMethodAttribute()
	{
		enableSession = false;
		transactionOption = 0;
		cacheDuration = 0;
		bufferResponse = true;
	}

	public WebMethodAttribute(bool enableSession)
		: this()
	{
		EnableSession = enableSession;
	}

	public WebMethodAttribute(bool enableSession, TransactionOption transactionOption)
		: this()
	{
		EnableSession = enableSession;
		this.transactionOption = (int)transactionOption;
		transactionOptionSpecified = true;
	}

	public WebMethodAttribute(bool enableSession, TransactionOption transactionOption, int cacheDuration)
	{
		EnableSession = enableSession;
		this.transactionOption = (int)transactionOption;
		transactionOptionSpecified = true;
		CacheDuration = cacheDuration;
		BufferResponse = true;
	}

	public WebMethodAttribute(bool enableSession, TransactionOption transactionOption, int cacheDuration, bool bufferResponse)
	{
		EnableSession = enableSession;
		this.transactionOption = (int)transactionOption;
		transactionOptionSpecified = true;
		CacheDuration = cacheDuration;
		BufferResponse = bufferResponse;
	}
}
