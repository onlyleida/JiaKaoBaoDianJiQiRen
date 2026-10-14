using System.ComponentModel;
using System.Security.Permissions;
using System.Text;

namespace System.Web.UI;

[ToolboxItem(false)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class DataBoundLiteralControl : Control, ITextControl
{
	private int staticLiteralsCount;

	private string[] staticLiterals;

	private string[] dataBoundLiterals;

	public string Text
	{
		get
		{
			StringBuilder stringBuilder = new StringBuilder();
			int num = ((staticLiterals != null) ? staticLiterals.Length : 0);
			int num2 = dataBoundLiterals.Length;
			int num3 = ((num > num2) ? num : num2);
			for (int i = 0; i < num3; i++)
			{
				if (i < num)
				{
					stringBuilder.Append(staticLiterals[i]);
				}
				if (i < num2)
				{
					stringBuilder.Append(dataBoundLiterals[i]);
				}
			}
			return stringBuilder.ToString();
		}
	}

	string ITextControl.Text
	{
		get
		{
			return Text;
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	public DataBoundLiteralControl(int staticLiteralsCount, int dataBoundLiteralCount)
	{
		this.staticLiteralsCount = staticLiteralsCount;
		dataBoundLiterals = new string[dataBoundLiteralCount];
		AutoID = false;
	}

	protected override ControlCollection CreateControlCollection()
	{
		return new EmptyControlCollection(this);
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState != null)
		{
			Array array = (Array)savedState;
			if (array.Length == dataBoundLiterals.Length)
			{
				array.CopyTo(dataBoundLiterals, 0);
			}
		}
	}

	protected internal override void Render(HtmlTextWriter output)
	{
		int num = ((staticLiterals != null) ? staticLiterals.Length : 0);
		int num2 = dataBoundLiterals.Length;
		int num3 = ((num > num2) ? num : num2);
		for (int i = 0; i < num3; i++)
		{
			if (i < num)
			{
				output.Write(staticLiterals[i]);
			}
			if (i < num2)
			{
				output.Write(dataBoundLiterals[i]);
			}
		}
	}

	protected override object SaveViewState()
	{
		if (dataBoundLiterals.Length == 0)
		{
			return null;
		}
		return dataBoundLiterals;
	}

	public void SetDataBoundString(int index, string s)
	{
		dataBoundLiterals[index] = s;
	}

	public void SetStaticString(int index, string s)
	{
		if (staticLiterals == null)
		{
			staticLiterals = new string[staticLiteralsCount];
		}
		staticLiterals[index] = s;
	}
}
