using System.Data.Common;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Text;
using Unity;

namespace System.Data.Odbc;

[Serializable]
public sealed class OdbcException : DbException
{
	private OdbcErrorCollection _odbcErrors;

	public OdbcErrorCollection Errors => _odbcErrors;

	public override string Source
	{
		get
		{
			if (0 < Errors.Count)
			{
				string source = Errors[0].Source;
				if (!string.IsNullOrEmpty(source))
				{
					return source;
				}
				return "";
			}
			return "";
		}
	}

	internal static OdbcException CreateException(OdbcErrorCollection errors, ODBC32.RetCode retcode)
	{
		StringBuilder stringBuilder = new StringBuilder();
		foreach (OdbcError error in errors)
		{
			if (stringBuilder.Length > 0)
			{
				stringBuilder.Append(Environment.NewLine);
			}
			stringBuilder.Append(SR.GetString("{0} [{1}] {2}", ODBC32.RetcodeToString(retcode), error.SQLState, error.Message));
		}
		return new OdbcException(stringBuilder.ToString(), errors);
	}

	internal OdbcException(string message, OdbcErrorCollection errors)
	{
		_odbcErrors = new OdbcErrorCollection();
		base._002Ector(message);
		_odbcErrors = errors;
		HResult = -2146232009;
	}

	[SecurityPermission(SecurityAction.LinkDemand, Flags = SecurityPermissionFlag.SerializationFormatter)]
	public override void GetObjectData(SerializationInfo si, StreamingContext context)
	{
		base.GetObjectData(si, context);
	}

	internal OdbcException()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
