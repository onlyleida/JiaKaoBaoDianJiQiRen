using System.Collections;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace System.Data.Design;

[Serializable]
public class TypedDataSetGeneratorException : DataException
{
	private IList errorList;

	public IList ErrorList => errorList;

	public TypedDataSetGeneratorException()
		: base(global::Locale.GetText("System error."))
	{
	}

	public TypedDataSetGeneratorException(IList list)
		: base(global::Locale.GetText("System error."))
	{
		errorList = list;
	}

	protected TypedDataSetGeneratorException(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		int @int = info.GetInt32("KEY_ARRAYCOUNT");
		errorList = new ArrayList(@int);
		for (int i = 0; i < @int; i++)
		{
			errorList.Add(info.GetString("KEY_ARRAYVALUES" + i));
		}
	}

	public TypedDataSetGeneratorException(string message)
		: base(message)
	{
	}

	public TypedDataSetGeneratorException(string message, Exception innerException)
		: base(message, innerException)
	{
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		int num = ((errorList != null) ? ErrorList.Count : 0);
		info.AddValue("KEY_ARRAYCOUNT", num);
		for (int i = 0; i < num; i++)
		{
			info.AddValue("KEY_ARRAYVALUES" + i, ErrorList[i]);
		}
	}
}
