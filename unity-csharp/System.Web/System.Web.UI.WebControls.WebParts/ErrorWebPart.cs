using System.ComponentModel;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[ToolboxItem(false)]
public class ErrorWebPart : ProxyWebPart, ITrackingPersonalizable
{
	public string ErrorMessage
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public ErrorWebPart(string originalID, string originalTypeName, string originalPath, string genericWebPartID)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	[SpecialName]
	bool ITrackingPersonalizable.get_TracksChanges()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual void EndLoadPersonalization()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void ITrackingPersonalizable.BeginLoad()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void ITrackingPersonalizable.BeginSave()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void ITrackingPersonalizable.EndLoad()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	void ITrackingPersonalizable.EndSave()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
