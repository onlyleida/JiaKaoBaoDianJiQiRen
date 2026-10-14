using System.Reflection;

namespace System.Xml.Xsl.Qil;

internal class QilInvokeEarlyBound : QilTernary
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

	public MethodInfo ClrMethod
	{
		get
		{
			return (MethodInfo)((QilLiteral)Center).Value;
		}
		set
		{
			((QilLiteral)Center).Value = value;
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

	public QilInvokeEarlyBound(QilNodeType nodeType, QilNode name, QilNode method, QilNode arguments, XmlQueryType resultType)
		: base(nodeType, name, method, arguments)
	{
		xmlType = resultType;
	}
}
