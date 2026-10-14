using System.Diagnostics;
using System.Security.Permissions;

namespace System.Web.UI.WebControls;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class RepeatInfo
{
	private bool outer_table_implied;

	private int repeat_cols;

	private RepeatDirection dir = RepeatDirection.Vertical;

	private RepeatLayout layout;

	private string caption = string.Empty;

	private TableCaptionAlign captionAlign;

	private bool useAccessibleHeader;

	public bool OuterTableImplied
	{
		get
		{
			return outer_table_implied;
		}
		set
		{
			outer_table_implied = value;
		}
	}

	public int RepeatColumns
	{
		get
		{
			return repeat_cols;
		}
		set
		{
			repeat_cols = value;
		}
	}

	public RepeatDirection RepeatDirection
	{
		get
		{
			return dir;
		}
		set
		{
			if (value != RepeatDirection.Horizontal && value != RepeatDirection.Vertical)
			{
				throw new ArgumentOutOfRangeException();
			}
			dir = value;
		}
	}

	public RepeatLayout RepeatLayout
	{
		get
		{
			return layout;
		}
		set
		{
			if (value < RepeatLayout.Table || value > RepeatLayout.OrderedList)
			{
				throw new ArgumentOutOfRangeException();
			}
			layout = value;
		}
	}

	[WebSysDescription("")]
	[WebCategory("Accessibility")]
	public string Caption
	{
		get
		{
			return caption;
		}
		set
		{
			caption = value;
		}
	}

	[WebCategory("Accessibility")]
	[WebSysDescription("")]
	public TableCaptionAlign CaptionAlign
	{
		get
		{
			return captionAlign;
		}
		set
		{
			captionAlign = value;
		}
	}

	[WebCategory("Accessibility")]
	[WebSysDescription("")]
	public bool UseAccessibleHeader
	{
		get
		{
			return useAccessibleHeader;
		}
		set
		{
			useAccessibleHeader = value;
		}
	}

	public void RenderRepeater(HtmlTextWriter writer, IRepeatInfoUser user, Style controlStyle, WebControl baseControl)
	{
		RepeatLayout repeatLayout = RepeatLayout;
		bool flag = repeatLayout == RepeatLayout.OrderedList || repeatLayout == RepeatLayout.UnorderedList;
		if (flag)
		{
			if (user != null && (user.HasHeader || user.HasFooter || user.HasSeparators))
			{
				throw new InvalidOperationException("The UnorderedList and OrderedList layouts do not support headers, footers or separators.");
			}
			if (OuterTableImplied)
			{
				throw new InvalidOperationException("The UnorderedList and OrderedList layouts do not support implied outer tables.");
			}
			if (RepeatColumns > 1)
			{
				throw new InvalidOperationException("The UnorderedList and OrderedList layouts do not support multi-column layouts.");
			}
		}
		if (RepeatDirection == RepeatDirection.Vertical)
		{
			if (flag)
			{
				RenderList(writer, user, controlStyle, baseControl);
			}
			else
			{
				RenderVert(writer, user, controlStyle, baseControl);
			}
			return;
		}
		if (flag)
		{
			throw new InvalidOperationException("The UnorderedList and OrderedList layouts only support vertical layout.");
		}
		RenderHoriz(writer, user, controlStyle, baseControl);
	}

	private void RenderBr(HtmlTextWriter w)
	{
		w.Write("<br />");
	}

	private void RenderList(HtmlTextWriter w, IRepeatInfoUser user, Style controlStyle, WebControl baseControl)
	{
		int repeatedItemCount = user.RepeatedItemCount;
		RenderBeginTag(w, controlStyle, baseControl);
		for (int i = 0; i < repeatedItemCount; i++)
		{
			w.RenderBeginTag(HtmlTextWriterTag.Li);
			user.RenderItem(ListItemType.Item, i, this, w);
			w.RenderEndTag();
			w.WriteLine();
		}
		w.RenderEndTag();
	}

	private void RenderVert(HtmlTextWriter w, IRepeatInfoUser user, Style controlStyle, WebControl baseControl)
	{
		int repeatedItemCount = user.RepeatedItemCount;
		int num = ((RepeatColumns == 0) ? 1 : RepeatColumns);
		int num2 = (repeatedItemCount + num - 1) / num;
		bool hasSeparators = user.HasSeparators;
		bool outerTableImplied = OuterTableImplied;
		int num3 = num * ((!hasSeparators || num == 1) ? 1 : 2);
		bool flag = RepeatLayout == RepeatLayout.Table && !outerTableImplied;
		bool flag2 = true;
		bool flag3 = true;
		if (!outerTableImplied)
		{
			RenderBeginTag(w, controlStyle, baseControl);
		}
		if (Caption.Length > 0)
		{
			if (CaptionAlign != TableCaptionAlign.NotSet)
			{
				w.AddAttribute(HtmlTextWriterAttribute.Align, CaptionAlign.ToString());
			}
			w.RenderBeginTag(HtmlTextWriterTag.Caption);
			w.Write(Caption);
			w.RenderEndTag();
		}
		if (user.HasHeader)
		{
			if (outerTableImplied)
			{
				user.RenderItem(ListItemType.Header, -1, this, w);
			}
			else if (flag)
			{
				w.RenderBeginTag(HtmlTextWriterTag.Tr);
				if (num3 != 1)
				{
					w.AddAttribute(HtmlTextWriterAttribute.Colspan, num3.ToString(), fEncode: false);
				}
				if (UseAccessibleHeader)
				{
					w.AddAttribute("scope", "col", fEndode: false);
				}
				user.GetItemStyle(ListItemType.Header, -1)?.AddAttributesToRender(w);
				if (UseAccessibleHeader)
				{
					w.RenderBeginTag(HtmlTextWriterTag.Th);
				}
				else
				{
					w.RenderBeginTag(HtmlTextWriterTag.Td);
				}
				user.RenderItem(ListItemType.Header, -1, this, w);
				w.RenderEndTag();
				w.RenderEndTag();
			}
			else
			{
				user.RenderItem(ListItemType.Header, -1, this, w);
				RenderBr(w);
			}
		}
		for (int i = 0; i < num2; i++)
		{
			if (flag)
			{
				w.RenderBeginTag(HtmlTextWriterTag.Tr);
			}
			for (int j = 0; j < num; j++)
			{
				int num4 = index_vert(num2, num, i, j, repeatedItemCount);
				if (!flag2 && num4 >= repeatedItemCount)
				{
					continue;
				}
				if (flag)
				{
					Style style = null;
					if (num4 < repeatedItemCount)
					{
						style = user.GetItemStyle(ListItemType.Item, num4);
					}
					style?.AddAttributesToRender(w);
					w.RenderBeginTag(HtmlTextWriterTag.Td);
				}
				if (num4 < repeatedItemCount)
				{
					user.RenderItem(ListItemType.Item, num4, this, w);
				}
				if (flag)
				{
					w.RenderEndTag();
				}
				if (!hasSeparators || num == 1)
				{
					continue;
				}
				if (flag)
				{
					if (num4 < repeatedItemCount - 1)
					{
						user.GetItemStyle(ListItemType.Separator, num4)?.AddAttributesToRender(w);
					}
					if ((num4 < repeatedItemCount - 1) | flag3)
					{
						w.RenderBeginTag(HtmlTextWriterTag.Td);
					}
				}
				if (num4 < repeatedItemCount - 1)
				{
					user.RenderItem(ListItemType.Separator, num4, this, w);
				}
				if (flag && ((num4 < repeatedItemCount - 1) | flag3))
				{
					w.RenderEndTag();
				}
			}
			if (!outerTableImplied)
			{
				if (flag)
				{
					w.RenderEndTag();
				}
				else if (i != num2 - 1)
				{
					RenderBr(w);
				}
			}
			if (hasSeparators && i != num2 - 1 && num == 1)
			{
				if (flag)
				{
					w.RenderBeginTag(HtmlTextWriterTag.Tr);
					user.GetItemStyle(ListItemType.Separator, i)?.AddAttributesToRender(w);
					w.RenderBeginTag(HtmlTextWriterTag.Td);
				}
				user.RenderItem(ListItemType.Separator, i, this, w);
				if (flag)
				{
					w.RenderEndTag();
					w.RenderEndTag();
				}
				else if (!outerTableImplied)
				{
					RenderBr(w);
				}
			}
		}
		if (user.HasFooter)
		{
			if (outerTableImplied)
			{
				user.RenderItem(ListItemType.Footer, -1, this, w);
			}
			else if (flag)
			{
				w.RenderBeginTag(HtmlTextWriterTag.Tr);
				if (num3 != 1)
				{
					w.AddAttribute(HtmlTextWriterAttribute.Colspan, num3.ToString(), fEncode: false);
				}
				user.GetItemStyle(ListItemType.Footer, -1)?.AddAttributesToRender(w);
				w.RenderBeginTag(HtmlTextWriterTag.Td);
				user.RenderItem(ListItemType.Footer, -1, this, w);
				w.RenderEndTag();
				w.RenderEndTag();
			}
			else
			{
				if (repeatedItemCount != 0)
				{
					RenderBr(w);
				}
				user.RenderItem(ListItemType.Footer, -1, this, w);
			}
		}
		if (!outerTableImplied)
		{
			w.RenderEndTag();
		}
	}

	private void RenderHoriz(HtmlTextWriter w, IRepeatInfoUser user, Style controlStyle, WebControl baseControl)
	{
		int repeatedItemCount = user.RepeatedItemCount;
		int num = ((RepeatColumns == 0) ? repeatedItemCount : RepeatColumns);
		int num2 = ((num != 0) ? ((repeatedItemCount + num - 1) / num) : 0);
		bool hasSeparators = user.HasSeparators;
		int num3 = num * ((!hasSeparators) ? 1 : 2);
		bool flag = RepeatLayout == RepeatLayout.Table;
		bool flag2 = true;
		bool flag3 = true;
		RenderBeginTag(w, controlStyle, baseControl);
		if (Caption.Length > 0)
		{
			if (CaptionAlign != TableCaptionAlign.NotSet)
			{
				w.AddAttribute(HtmlTextWriterAttribute.Align, CaptionAlign.ToString());
			}
			w.RenderBeginTag(HtmlTextWriterTag.Caption);
			w.Write(Caption);
			w.RenderEndTag();
		}
		if (user.HasHeader)
		{
			if (flag)
			{
				w.RenderBeginTag(HtmlTextWriterTag.Tr);
				if (num3 != 1)
				{
					w.AddAttribute(HtmlTextWriterAttribute.Colspan, num3.ToString(), fEncode: false);
				}
				if (UseAccessibleHeader)
				{
					w.AddAttribute("scope", "col", fEndode: false);
				}
				user.GetItemStyle(ListItemType.Header, -1)?.AddAttributesToRender(w);
				if (UseAccessibleHeader)
				{
					w.RenderBeginTag(HtmlTextWriterTag.Th);
				}
				else
				{
					w.RenderBeginTag(HtmlTextWriterTag.Td);
				}
				user.RenderItem(ListItemType.Header, -1, this, w);
				w.RenderEndTag();
				w.RenderEndTag();
			}
			else
			{
				user.RenderItem(ListItemType.Header, -1, this, w);
				if (!flag && RepeatColumns != 0 && repeatedItemCount != 0)
				{
					RenderBr(w);
				}
			}
		}
		for (int i = 0; i < num2; i++)
		{
			if (flag)
			{
				w.RenderBeginTag(HtmlTextWriterTag.Tr);
			}
			for (int j = 0; j < num; j++)
			{
				int num4 = i * num + j;
				if (!flag2 && num4 >= repeatedItemCount)
				{
					continue;
				}
				if (flag)
				{
					Style style = null;
					if (num4 < repeatedItemCount)
					{
						style = user.GetItemStyle(ListItemType.Item, num4);
					}
					style?.AddAttributesToRender(w);
					w.RenderBeginTag(HtmlTextWriterTag.Td);
				}
				if (num4 < repeatedItemCount)
				{
					user.RenderItem(ListItemType.Item, num4, this, w);
				}
				if (flag)
				{
					w.RenderEndTag();
				}
				if (!hasSeparators)
				{
					continue;
				}
				if (flag)
				{
					if (num4 < repeatedItemCount - 1)
					{
						user.GetItemStyle(ListItemType.Separator, num4)?.AddAttributesToRender(w);
					}
					if ((num4 < repeatedItemCount - 1) | flag3)
					{
						w.RenderBeginTag(HtmlTextWriterTag.Td);
					}
				}
				if (num4 < repeatedItemCount - 1)
				{
					user.RenderItem(ListItemType.Separator, num4, this, w);
				}
				if (flag && ((num4 < repeatedItemCount - 1) | flag3))
				{
					w.RenderEndTag();
				}
			}
			if (flag)
			{
				w.RenderEndTag();
			}
			else if (i != num2 - 1 || RepeatColumns != 0)
			{
				RenderBr(w);
			}
		}
		if (user.HasFooter)
		{
			if (flag)
			{
				w.RenderBeginTag(HtmlTextWriterTag.Tr);
				if (num3 != 1)
				{
					w.AddAttribute(HtmlTextWriterAttribute.Colspan, num3.ToString(), fEncode: false);
				}
				user.GetItemStyle(ListItemType.Footer, -1)?.AddAttributesToRender(w);
				w.RenderBeginTag(HtmlTextWriterTag.Td);
				user.RenderItem(ListItemType.Footer, -1, this, w);
				w.RenderEndTag();
				w.RenderEndTag();
			}
			else
			{
				user.RenderItem(ListItemType.Footer, -1, this, w);
			}
		}
		w.RenderEndTag();
	}

	private int index_vert(int rows, int cols, int r, int c, int items)
	{
		int num = items % cols;
		if (num == 0)
		{
			num = cols;
		}
		if (r == rows - 1 && c >= num)
		{
			return items;
		}
		if (c > num)
		{
			return num * rows + (c - num) * (rows - 1) + r;
		}
		return rows * c + r;
	}

	private void RenderBeginTag(HtmlTextWriter w, Style s, WebControl wc)
	{
		WebControl webControl = RepeatLayout switch
		{
			RepeatLayout.Table => new Table(), 
			RepeatLayout.Flow => new Label(), 
			RepeatLayout.OrderedList => new WebControl(HtmlTextWriterTag.Ol), 
			RepeatLayout.UnorderedList => new WebControl(HtmlTextWriterTag.Ul), 
			_ => throw new InvalidOperationException($"Unsupported RepeatLayout value '{RepeatLayout}'."), 
		};
		webControl.ID = wc.ClientID;
		webControl.CopyBaseAttributes(wc);
		webControl.ApplyStyle(s);
		webControl.Enabled = wc.IsEnabled;
		webControl.RenderBeginTag(w);
	}

	[Conditional("DEBUG_REPEAT_INFO")]
	internal void PrintValues(IRepeatInfoUser riu)
	{
		string text = string.Format("Layout {0}; Direction {1}; Cols {2}; OuterTableImplied {3}\nUser: itms {4}, hdr {5}; ftr {6}; sep {7}", RepeatLayout, RepeatDirection, RepeatColumns, OuterTableImplied, riu.RepeatedItemCount, riu.HasSeparators, riu.HasHeader, riu.HasFooter, riu.HasSeparators);
		Console.WriteLine(text);
		if (HttpContext.Current != null)
		{
			HttpContext.Current.Trace.Write(text);
		}
	}
}
