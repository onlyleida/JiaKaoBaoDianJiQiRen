using System.CodeDom;
using System.Reflection;

namespace System.Windows.Forms.Design;

public class AxParameterData
{
	private bool isByRef;

	private bool isIn;

	private bool isOptional;

	private bool isOut;

	private string name;

	private Type type;

	public FieldDirection Direction
	{
		get
		{
			if (IsOut)
			{
				return FieldDirection.Out;
			}
			if (IsByRef)
			{
				return FieldDirection.Ref;
			}
			return FieldDirection.In;
		}
	}

	public bool IsByRef => isByRef;

	public bool IsIn => isIn;

	public bool IsOptional => isOptional;

	public bool IsOut => isOut;

	public string Name
	{
		get
		{
			return name;
		}
		[System.MonoTODO]
		set
		{
			throw new NotImplementedException();
		}
	}

	public Type ParameterType => type;

	[System.MonoTODO]
	public string TypeName
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public AxParameterData(ParameterInfo info)
		: this(info, ignoreByRefs: false)
	{
	}

	[System.MonoTODO]
	public AxParameterData(ParameterInfo info, bool ignoreByRefs)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public AxParameterData(string inname, string typeName)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public AxParameterData(string inname, Type type)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static AxParameterData[] Convert(ParameterInfo[] infos)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static AxParameterData[] Convert(ParameterInfo[] infos, bool ignoreByRefs)
	{
		throw new NotImplementedException();
	}
}
