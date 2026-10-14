using System.Web.UI.WebControls;

namespace System.Web.UI;

public class FileLevelPageControlBuilder : RootBuilder
{
	private bool hasContentControls;

	private bool hasLiteralControls;

	private bool hasOtherControls;

	public override void AppendLiteralString(string text)
	{
		bool flag = text == null || text.Trim().Length == 0;
		if (hasContentControls && !flag)
		{
			throw new HttpException("Literal strings cannot be appended to Content pages.");
		}
		if (!flag)
		{
			hasLiteralControls = true;
		}
		base.AppendLiteralString(text);
	}

	public override void AppendSubBuilder(ControlBuilder subBuilder)
	{
		if (subBuilder == null)
		{
			base.AppendSubBuilder(subBuilder);
			return;
		}
		if (typeof(ContentBuilderInternal).IsAssignableFrom(subBuilder.GetType()))
		{
			if (hasOtherControls)
			{
				throw new HttpException("Only Content controls are supported on content pages.");
			}
			hasContentControls = true;
			if (hasLiteralControls)
			{
				throw new HttpParseException("Only Content controls are supported on content pages.");
			}
		}
		else
		{
			hasOtherControls = true;
		}
		base.AppendSubBuilder(subBuilder);
	}
}
