using System.IO;
using System.Security.Permissions;

namespace System.Web.Security;

[Serializable]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class FormsAuthenticationTicket
{
	private int version;

	private bool persistent;

	private DateTime issue_date;

	private DateTime expiration;

	private string name;

	private string cookie_path;

	private string user_data;

	public string CookiePath => cookie_path;

	public DateTime Expiration => expiration;

	public bool Expired => DateTime.Now > expiration;

	public bool IsPersistent => persistent;

	public DateTime IssueDate => issue_date;

	public string Name => name;

	public string UserData => user_data;

	public int Version => version;

	internal byte[] ToByteArray()
	{
		MemoryStream memoryStream = new MemoryStream();
		BinaryWriter binaryWriter = new BinaryWriter(memoryStream);
		binaryWriter.Write(version);
		binaryWriter.Write(persistent);
		binaryWriter.Write(issue_date.Ticks);
		binaryWriter.Write(expiration.Ticks);
		binaryWriter.Write(name != null);
		if (name != null)
		{
			binaryWriter.Write(name);
		}
		binaryWriter.Write(cookie_path != null);
		if (cookie_path != null)
		{
			binaryWriter.Write(cookie_path);
		}
		binaryWriter.Write(user_data != null);
		if (user_data != null)
		{
			binaryWriter.Write(user_data);
		}
		binaryWriter.Flush();
		return memoryStream.ToArray();
	}

	internal static FormsAuthenticationTicket FromByteArray(byte[] bytes)
	{
		if (bytes == null)
		{
			throw new ArgumentNullException("bytes");
		}
		BinaryReader binaryReader = new BinaryReader(new MemoryStream(bytes));
		FormsAuthenticationTicket formsAuthenticationTicket = new FormsAuthenticationTicket();
		formsAuthenticationTicket.version = binaryReader.ReadInt32();
		formsAuthenticationTicket.persistent = binaryReader.ReadBoolean();
		formsAuthenticationTicket.issue_date = new DateTime(binaryReader.ReadInt64());
		formsAuthenticationTicket.expiration = new DateTime(binaryReader.ReadInt64());
		if (binaryReader.ReadBoolean())
		{
			formsAuthenticationTicket.name = binaryReader.ReadString();
		}
		if (binaryReader.ReadBoolean())
		{
			formsAuthenticationTicket.cookie_path = binaryReader.ReadString();
		}
		if (binaryReader.ReadBoolean())
		{
			formsAuthenticationTicket.user_data = binaryReader.ReadString();
		}
		return formsAuthenticationTicket;
	}

	private FormsAuthenticationTicket()
	{
	}

	public FormsAuthenticationTicket(int version, string name, DateTime issueDate, DateTime expiration, bool isPersistent, string userData)
	{
		this.version = version;
		this.name = name;
		issue_date = issueDate;
		this.expiration = expiration;
		persistent = isPersistent;
		user_data = userData;
		cookie_path = "/";
	}

	public FormsAuthenticationTicket(int version, string name, DateTime issueDate, DateTime expiration, bool isPersistent, string userData, string cookiePath)
	{
		this.version = version;
		this.name = name;
		issue_date = issueDate;
		this.expiration = expiration;
		persistent = isPersistent;
		user_data = userData;
		cookie_path = cookiePath;
	}

	public FormsAuthenticationTicket(string name, bool isPersistent, int timeout)
	{
		version = 1;
		this.name = name;
		issue_date = DateTime.Now;
		persistent = isPersistent;
		if (persistent)
		{
			expiration = issue_date.AddYears(50);
		}
		else
		{
			expiration = issue_date.AddMinutes(timeout);
		}
		user_data = "";
		cookie_path = "/";
	}

	internal void SetDates(DateTime issue_date, DateTime expiration)
	{
		this.issue_date = issue_date;
		this.expiration = expiration;
	}

	internal FormsAuthenticationTicket Clone()
	{
		return new FormsAuthenticationTicket(version, name, issue_date, expiration, persistent, user_data, cookie_path);
	}
}
