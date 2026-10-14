using System.Runtime.CompilerServices;
using System.Web.Compilation;
using Unity;

namespace System.Web.UI;

public class BoundPropertyEntry : PropertyEntry
{
	public string ControlID { get; set; }

	public Type ControlType { get; set; }

	public string Expression { get; set; }

	public ExpressionBuilder ExpressionBuilder { get; set; }

	public string ExpressionPrefix { get; set; }

	public string FieldName { get; set; }

	public string FormatString { get; set; }

	public bool Generated { get; set; }

	public object ParsedExpressionData { get; set; }

	public bool ReadOnlyProperty { get; set; }

	public bool TwoWayBound { get; set; }

	public bool UseSetAttribute { get; set; }

	public bool IsEncoded
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	internal BoundPropertyEntry()
	{
	}
}
