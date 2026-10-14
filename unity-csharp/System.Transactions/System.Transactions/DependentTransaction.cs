using System.Runtime.Serialization;
using Unity;

namespace System.Transactions;

[Serializable]
[MonoTODO("Not supported yet")]
public sealed class DependentTransaction : Transaction, ISerializable
{
	private bool completed;

	internal bool Completed => completed;

	internal DependentTransaction(Transaction parent, DependentCloneOption option)
	{
	}

	[MonoTODO]
	public void Complete()
	{
		throw new NotImplementedException();
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		completed = info.GetBoolean("completed");
	}

	internal DependentTransaction()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
