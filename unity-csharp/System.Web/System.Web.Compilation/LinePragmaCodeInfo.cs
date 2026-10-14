using Unity;

namespace System.Web.Compilation;

[Serializable]
public sealed class LinePragmaCodeInfo
{
	[MonoTODO("Not implemented")]
	public int CodeLength
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public bool IsCodeNugget
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public int StartColumn
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public int StartGeneratedColumn
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[MonoTODO("Not implemented")]
	public int StartLine
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	public LinePragmaCodeInfo()
	{
	}

	public LinePragmaCodeInfo(int startLine, int startColumn, int startGeneratedColumn, int codeLength, bool isCodeNugget)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
