namespace System.ComponentModel.Design.Serialization;

public sealed class SerializeAbsoluteContext
{
	private MemberDescriptor _member;

	public MemberDescriptor Member => _member;

	public SerializeAbsoluteContext()
	{
	}

	public SerializeAbsoluteContext(MemberDescriptor member)
	{
		_member = member;
	}

	public bool ShouldSerialize(MemberDescriptor member)
	{
		return member == _member;
	}
}
