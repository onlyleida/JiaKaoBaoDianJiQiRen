namespace System.Xml.Xsl.Qil;

internal class QilInvokeLateBound : QilBinary
{
	public QilName Name
	{
		get
		{
			return (QilName)Left;
		}
		set
		{
			Left = value;
		}
	}

	public QilList Arguments
	{
		get
		{
			return (QilList)Right;
		}
		set
		{
			Right = value;
		}
	}

	public QilInvokeLateBound(QilNodeType nodeType, QilNode name, QilNode arguments)
		: base(nodeType, name, arguments)
	{
	}
}
