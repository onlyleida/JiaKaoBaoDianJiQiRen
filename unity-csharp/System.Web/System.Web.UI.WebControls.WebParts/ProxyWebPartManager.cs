using System.ComponentModel;
using Unity;

namespace System.Web.UI.WebControls.WebParts;

[PersistChildren(false)]
[ParseChildren(true)]
[NonVisualControl]
[Designer("System.Web.UI.Design.WebControls.WebParts.ProxyWebPartManagerDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
[Bindable(false)]
public class ProxyWebPartManager : Control
{
	public ProxyWebPartConnectionCollection StaticConnections
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ProxyWebPartManager()
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
