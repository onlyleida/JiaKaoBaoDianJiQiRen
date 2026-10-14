using System.Collections;
using System.Collections.Specialized;
using System.Text;

namespace System.Web.Mail;

[Obsolete("The recommended alternative is System.Net.Mail.MailMessage. http://go.microsoft.com/fwlink/?linkid=14202")]
public class MailMessage
{
	private ArrayList attachments;

	private string bcc;

	private string body = string.Empty;

	private Encoding bodyEncoding;

	private MailFormat bodyFormat;

	private string cc;

	private string from;

	private ListDictionary headers;

	private MailPriority priority;

	private string subject = string.Empty;

	private string to;

	private string urlContentBase;

	private string urlContentLocation;

	private Hashtable fields;

	public IList Attachments => attachments;

	public string Bcc
	{
		get
		{
			return bcc;
		}
		set
		{
			bcc = value;
		}
	}

	public string Body
	{
		get
		{
			return body;
		}
		set
		{
			body = value;
		}
	}

	public Encoding BodyEncoding
	{
		get
		{
			return bodyEncoding;
		}
		set
		{
			bodyEncoding = value;
		}
	}

	public MailFormat BodyFormat
	{
		get
		{
			return bodyFormat;
		}
		set
		{
			bodyFormat = value;
		}
	}

	public string Cc
	{
		get
		{
			return cc;
		}
		set
		{
			cc = value;
		}
	}

	public string From
	{
		get
		{
			return from;
		}
		set
		{
			from = value;
		}
	}

	public IDictionary Headers => headers;

	public MailPriority Priority
	{
		get
		{
			return priority;
		}
		set
		{
			priority = value;
		}
	}

	public string Subject
	{
		get
		{
			return subject;
		}
		set
		{
			subject = value;
		}
	}

	public string To
	{
		get
		{
			return to;
		}
		set
		{
			to = value;
		}
	}

	public string UrlContentBase
	{
		get
		{
			return urlContentBase;
		}
		set
		{
			urlContentBase = value;
		}
	}

	public string UrlContentLocation
	{
		get
		{
			return urlContentLocation;
		}
		set
		{
			urlContentLocation = value;
		}
	}

	public IDictionary Fields => fields;

	public MailMessage()
	{
		attachments = new ArrayList(8);
		headers = new ListDictionary();
		bodyEncoding = Encoding.Default;
		fields = new Hashtable();
	}
}
