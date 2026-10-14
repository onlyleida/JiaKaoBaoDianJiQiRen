using System.Collections.Generic;
using Unity;

namespace System.Web.Compilation;

[Serializable]
public class ClientBuildManagerParameter
{
	private PrecompilationFlags precompilationFlags;

	private string strongNameKeyContainer;

	private string strongNameKeyFile;

	public PrecompilationFlags PrecompilationFlags
	{
		get
		{
			return precompilationFlags;
		}
		set
		{
			precompilationFlags = value;
		}
	}

	public string StrongNameKeyContainer
	{
		get
		{
			return strongNameKeyContainer;
		}
		set
		{
			strongNameKeyContainer = value;
		}
	}

	public string StrongNameKeyFile
	{
		get
		{
			return strongNameKeyFile;
		}
		set
		{
			strongNameKeyFile = value;
		}
	}

	public List<string> ExcludedVirtualPaths
	{
		get
		{
			//IL_0007: Expected Obj, but got I4
			ThrowStub.ThrowNotSupportedException();
			return (List<string>)0;
		}
	}
}
