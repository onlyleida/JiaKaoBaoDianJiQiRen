using System.CodeDom;
using System.Runtime.Serialization;

namespace System.ComponentModel.Design.Serialization;

[Serializable]
public class CodeDomSerializerException : SystemException
{
	private CodeLinePragma linePragma;

	public CodeLinePragma LinePragma => linePragma;

	public CodeDomSerializerException(Exception ex, CodeLinePragma linePragma)
		: base(string.Empty, ex)
	{
		this.linePragma = linePragma;
	}

	public CodeDomSerializerException(string message, CodeLinePragma linePragma)
		: base(message)
	{
		this.linePragma = linePragma;
	}

	[System.MonoTODO]
	protected CodeDomSerializerException(SerializationInfo info, StreamingContext context)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public CodeDomSerializerException(string message, IDesignerSerializationManager manager)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public CodeDomSerializerException(Exception ex, IDesignerSerializationManager manager)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		throw new NotImplementedException();
	}
}
