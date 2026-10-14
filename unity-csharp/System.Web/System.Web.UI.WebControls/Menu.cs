using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Security.Permissions;
using System.Text;
using System.Web.UI.HtmlControls;

namespace System.Web.UI.WebControls;

[SupportsEventValidation]
[DefaultEvent("MenuItemClick")]
[ControlValueProperty("SelectedValue")]
[Designer("System.Web.UI.Design.WebControls.MenuDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
public class Menu : HierarchicalDataBoundControl, IPostBackEventHandler, INamingContainer
{
	private class MenuTemplateWriter : TextWriter
	{
		private char[] _buffer;

		private int _ptr;

		public override Encoding Encoding => Encoding.Unicode;

		public MenuTemplateWriter(char[] buffer)
		{
			_buffer = buffer;
		}

		public override void Write(char value)
		{
			if (_ptr == _buffer.Length)
			{
				EnsureCapacity();
			}
			_buffer[_ptr++] = value;
		}

		public override void Write(string value)
		{
			if (value != null)
			{
				if (_ptr + value.Length >= _buffer.Length)
				{
					EnsureCapacity();
				}
				for (int i = 0; i < value.Length; i++)
				{
					_buffer[_ptr++] = value[i];
				}
			}
		}

		private void EnsureCapacity()
		{
			char[] array = new char[_buffer.Length * 2];
			Array.Copy(_buffer, array, _buffer.Length);
			_buffer = array;
		}
	}

	private class MenuRenderHtmlTemplate
	{
		public const string Marker = "\u093a\u093bॱ";

		private char[] _templateHtml;

		private MenuTemplateWriter _templateWriter;

		private ArrayList idxs = new ArrayList(32);

		public MenuRenderHtmlTemplate()
		{
			_templateHtml = new char[1024];
			_templateWriter = new MenuTemplateWriter(_templateHtml);
		}

		public static string GetMarker(int num)
		{
			char c = (char)(2417 + num);
			return "\u093a\u093bॱ" + c;
		}

		public HtmlTextWriter GetMenuTemplateWriter()
		{
			return new HtmlTextWriter(_templateWriter);
		}

		public void Parse()
		{
			int num = 0;
			for (int i = 0; i < _templateHtml.Length; i++)
			{
				if (_templateHtml[i] == '\0')
				{
					idxs.Add(i);
					break;
				}
				if (_templateHtml[i] != "\u093a\u093bॱ"[num])
				{
					num = 0;
					continue;
				}
				num++;
				if (num == "\u093a\u093bॱ".Length)
				{
					num = 0;
					idxs.Add(i - "\u093a\u093bॱ".Length + 1);
				}
			}
		}

		public void RenderTemplate(HtmlTextWriter writer, string[] dynamicParts, int start, int count)
		{
			if (idxs.Count != 0)
			{
				int num = 0;
				int num2 = ((start == 0) ? (-"\u093a\u093bॱ".Length - 1) : ((int)idxs[start - 1]));
				int num3 = 0;
				int i = start;
				for (int num4 = start + count; i < num4; i++)
				{
					num = num2 + "\u093a\u093bॱ".Length + 1;
					num2 = (int)idxs[i];
					writer.Write(_templateHtml, num, num2 - num);
					num3 = _templateHtml[num2 + "\u093a\u093bॱ".Length] - 2417;
					writer.Write(dynamicParts[num3]);
				}
				num = num2 + "\u093a\u093bॱ".Length + 1;
				num2 = (int)idxs[i];
				writer.Write(_templateHtml, num, num2 - num);
			}
		}
	}

	private IMenuRenderer renderer;

	private MenuItemStyle dynamicMenuItemStyle;

	private SubMenuStyle dynamicMenuStyle;

	private MenuItemStyle dynamicSelectedStyle;

	private MenuItemStyle staticMenuItemStyle;

	private SubMenuStyle staticMenuStyle;

	private MenuItemStyle staticSelectedStyle;

	private Style staticHoverStyle;

	private Style dynamicHoverStyle;

	private MenuItemStyleCollection levelMenuItemStyles;

	private MenuItemStyleCollection levelSelectedStyles;

	private SubMenuStyleCollection levelSubMenuStyles;

	private ITemplate staticItemTemplate;

	private ITemplate dynamicItemTemplate;

	private MenuItemCollection items;

	private MenuItemBindingCollection dataBindings;

	private MenuItem selectedItem;

	private string selectedItemPath;

	private Hashtable bindings;

	private Hashtable _menuItemControls;

	private bool _requiresChildControlsDataBinding;

	private SiteMapNode _currSiteMapNode;

	private Style popOutBoxStyle;

	private Style controlLinkStyle;

	private Style dynamicMenuItemLinkStyle;

	private Style staticMenuItemLinkStyle;

	private Style dynamicSelectedLinkStyle;

	private Style staticSelectedLinkStyle;

	private Style dynamicHoverLinkStyle;

	private Style staticHoverLinkStyle;

	private bool? renderList;

	private bool includeStyleBlock = true;

	private MenuRenderingMode renderingMode;

	private static readonly object MenuItemClickEvent = new object();

	private static readonly object MenuItemDataBoundEvent = new object();

	public static readonly string MenuItemClickCommandName = "Click";

	private MenuRenderHtmlTemplate _dynamicTemplate;

	private IMenuRenderer Renderer
	{
		get
		{
			if (renderer == null)
			{
				renderer = CreateRenderer(null);
			}
			return renderer;
		}
	}

	private bool RenderList
	{
		get
		{
			if (!renderList.HasValue)
			{
				switch (RenderingMode)
				{
				case MenuRenderingMode.List:
					renderList = true;
					break;
				case MenuRenderingMode.Table:
					renderList = false;
					break;
				default:
					if (RenderingCompatibilityLessThan40)
					{
						renderList = false;
					}
					else
					{
						renderList = true;
					}
					break;
				}
			}
			return renderList.Value;
		}
	}

	[DefaultValue(true)]
	[Description("Determines whether or not to render the inline style block (only used in standards compliance mode)")]
	public bool IncludeStyleBlock
	{
		get
		{
			return includeStyleBlock;
		}
		set
		{
			includeStyleBlock = value;
		}
	}

	[DefaultValue(MenuRenderingMode.Default)]
	public MenuRenderingMode RenderingMode
	{
		get
		{
			return renderingMode;
		}
		set
		{
			if (value < MenuRenderingMode.Default || value > MenuRenderingMode.List)
			{
				throw new ArgumentOutOfRangeException("value");
			}
			renderingMode = value;
			renderer = CreateRenderer(renderer);
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Editor("System.Web.UI.Design.WebControls.MenuBindingsEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[MergableProperty(false)]
	[DefaultValue(null)]
	public MenuItemBindingCollection DataBindings
	{
		get
		{
			if (dataBindings == null)
			{
				dataBindings = new MenuItemBindingCollection();
				if (IsTrackingViewState)
				{
					((IStateManager)dataBindings).TrackViewState();
				}
			}
			return dataBindings;
		}
	}

	[DefaultValue(500)]
	[Themeable(false)]
	public int DisappearAfter
	{
		get
		{
			object obj = ViewState["DisappearAfter"];
			if (obj != null)
			{
				return (int)obj;
			}
			return 500;
		}
		set
		{
			ViewState["DisappearAfter"] = value;
		}
	}

	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[Themeable(true)]
	[DefaultValue("")]
	public string DynamicBottomSeparatorImageUrl
	{
		get
		{
			object obj = ViewState["dbsiu"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			ViewState["dbsiu"] = value;
		}
	}

	[DefaultValue("")]
	public string DynamicItemFormatString
	{
		get
		{
			object obj = ViewState["DynamicItemFormatString"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["DynamicItemFormatString"] = value;
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[WebCategory("Appearance")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string DynamicTopSeparatorImageUrl
	{
		get
		{
			object obj = ViewState["dtsiu"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["dtsiu"] = value;
		}
	}

	[WebCategory("Appearance")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public string StaticBottomSeparatorImageUrl
	{
		get
		{
			object obj = ViewState["sbsiu"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["sbsiu"] = value;
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[WebCategory("Appearance")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string StaticTopSeparatorImageUrl
	{
		get
		{
			object obj = ViewState["stsiu"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["stsiu"] = value;
		}
	}

	[DefaultValue(Orientation.Vertical)]
	public Orientation Orientation
	{
		get
		{
			object obj = ViewState["Orientation"];
			if (obj != null)
			{
				return (Orientation)obj;
			}
			return Orientation.Vertical;
		}
		set
		{
			ViewState["Orientation"] = value;
		}
	}

	[DefaultValue(1)]
	[Themeable(true)]
	public int StaticDisplayLevels
	{
		get
		{
			object obj = ViewState["StaticDisplayLevels"];
			if (obj != null)
			{
				return (int)obj;
			}
			return 1;
		}
		set
		{
			if (value < 1)
			{
				throw new ArgumentOutOfRangeException();
			}
			ViewState["StaticDisplayLevels"] = value;
		}
	}

	[DefaultValue("")]
	public string StaticItemFormatString
	{
		get
		{
			object obj = ViewState["StaticItemFormatString"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["StaticItemFormatString"] = value;
		}
	}

	[DefaultValue(typeof(Unit), "16px")]
	[Themeable(true)]
	public Unit StaticSubMenuIndent
	{
		get
		{
			object obj = ViewState["StaticSubMenuIndent"];
			if (obj != null)
			{
				return (Unit)obj;
			}
			return Unit.Empty;
		}
		set
		{
			ViewState["StaticSubMenuIndent"] = value;
		}
	}

	[Themeable(true)]
	[DefaultValue(3)]
	public int MaximumDynamicDisplayLevels
	{
		get
		{
			object obj = ViewState["MaximumDynamicDisplayLevels"];
			if (obj != null)
			{
				return (int)obj;
			}
			return 3;
		}
		set
		{
			if (value < 0)
			{
				throw new ArgumentOutOfRangeException();
			}
			ViewState["MaximumDynamicDisplayLevels"] = value;
		}
	}

	[DefaultValue(0)]
	public int DynamicVerticalOffset
	{
		get
		{
			object obj = ViewState["DynamicVerticalOffset"];
			if (obj != null)
			{
				return (int)obj;
			}
			return 0;
		}
		set
		{
			ViewState["DynamicVerticalOffset"] = value;
		}
	}

	[DefaultValue(0)]
	public int DynamicHorizontalOffset
	{
		get
		{
			object obj = ViewState["DynamicHorizontalOffset"];
			if (obj != null)
			{
				return (int)obj;
			}
			return 0;
		}
		set
		{
			ViewState["DynamicHorizontalOffset"] = value;
		}
	}

	[DefaultValue(true)]
	public bool DynamicEnableDefaultPopOutImage
	{
		get
		{
			object obj = ViewState["dedpoi"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["dedpoi"] = value;
		}
	}

	[DefaultValue(true)]
	public bool StaticEnableDefaultPopOutImage
	{
		get
		{
			object obj = ViewState["sedpoi"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["sedpoi"] = value;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	[MergableProperty(false)]
	[Editor("System.Web.UI.Design.MenuItemCollectionEditor,System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public MenuItemCollection Items
	{
		get
		{
			if (items == null)
			{
				items = new MenuItemCollection(this);
				if (IsTrackingViewState)
				{
					((IStateManager)items).TrackViewState();
				}
			}
			return items;
		}
	}

	[DefaultValue('/')]
	public char PathSeparator
	{
		get
		{
			object obj = ViewState["PathSeparator"];
			if (obj != null)
			{
				return (char)obj;
			}
			return '/';
		}
		set
		{
			ViewState["PathSeparator"] = value;
		}
	}

	[DefaultValue(false)]
	public bool ItemWrap
	{
		get
		{
			object obj = ViewState["ItemWrap"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return false;
		}
		set
		{
			ViewState["ItemWrap"] = value;
		}
	}

	internal Style PopOutBoxStyle
	{
		get
		{
			if (popOutBoxStyle == null)
			{
				popOutBoxStyle = new Style();
				popOutBoxStyle.BackColor = Color.White;
			}
			return popOutBoxStyle;
		}
	}

	internal Style ControlLinkStyle
	{
		get
		{
			if (controlLinkStyle == null)
			{
				controlLinkStyle = new Style();
				controlLinkStyle.AlwaysRenderTextDecoration = true;
			}
			return controlLinkStyle;
		}
	}

	internal Style DynamicMenuItemLinkStyle
	{
		get
		{
			if (dynamicMenuItemLinkStyle == null)
			{
				dynamicMenuItemLinkStyle = new Style();
			}
			return dynamicMenuItemLinkStyle;
		}
	}

	internal Style StaticMenuItemLinkStyle
	{
		get
		{
			if (staticMenuItemLinkStyle == null)
			{
				staticMenuItemLinkStyle = new Style();
			}
			return staticMenuItemLinkStyle;
		}
	}

	internal Style DynamicSelectedLinkStyle
	{
		get
		{
			if (dynamicSelectedLinkStyle == null)
			{
				dynamicSelectedLinkStyle = new Style();
			}
			return dynamicSelectedLinkStyle;
		}
	}

	internal Style StaticSelectedLinkStyle
	{
		get
		{
			if (staticSelectedLinkStyle == null)
			{
				staticSelectedLinkStyle = new Style();
			}
			return staticSelectedLinkStyle;
		}
	}

	internal Style DynamicHoverLinkStyle
	{
		get
		{
			if (dynamicHoverLinkStyle == null)
			{
				dynamicHoverLinkStyle = new Style();
			}
			return dynamicHoverLinkStyle;
		}
	}

	internal Style StaticHoverLinkStyle
	{
		get
		{
			if (staticHoverLinkStyle == null)
			{
				staticHoverLinkStyle = new Style();
			}
			return staticHoverLinkStyle;
		}
	}

	internal MenuItemStyle StaticMenuItemStyleInternal => staticMenuItemStyle;

	internal SubMenuStyle StaticMenuStyleInternal => staticMenuStyle;

	internal MenuItemStyle DynamicMenuItemStyleInternal => dynamicMenuItemStyle;

	internal SubMenuStyle DynamicMenuStyleInternal => dynamicMenuStyle;

	internal MenuItemStyleCollection LevelMenuItemStylesInternal => levelMenuItemStyles;

	internal List<Style> LevelMenuItemLinkStyles => null;

	internal SubMenuStyleCollection LevelSubMenuStylesInternal => levelSubMenuStyles;

	internal MenuItemStyle StaticSelectedStyleInternal => staticSelectedStyle;

	internal MenuItemStyle DynamicSelectedStyleInternal => dynamicSelectedStyle;

	internal MenuItemStyleCollection LevelSelectedStylesInternal => levelSelectedStyles;

	internal List<Style> LevelSelectedLinkStyles => null;

	internal Style StaticHoverStyleInternal => staticHoverStyle;

	internal Style DynamicHoverStyleInternal => dynamicHoverStyle;

	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public MenuItemStyle DynamicMenuItemStyle
	{
		get
		{
			if (dynamicMenuItemStyle == null)
			{
				dynamicMenuItemStyle = new MenuItemStyle();
				if (IsTrackingViewState)
				{
					dynamicMenuItemStyle.TrackViewState();
				}
			}
			return dynamicMenuItemStyle;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	public MenuItemStyle DynamicSelectedStyle
	{
		get
		{
			if (dynamicSelectedStyle == null)
			{
				dynamicSelectedStyle = new MenuItemStyle();
				if (IsTrackingViewState)
				{
					dynamicSelectedStyle.TrackViewState();
				}
			}
			return dynamicSelectedStyle;
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public SubMenuStyle DynamicMenuStyle
	{
		get
		{
			if (dynamicMenuStyle == null)
			{
				dynamicMenuStyle = new SubMenuStyle();
				if (IsTrackingViewState)
				{
					dynamicMenuStyle.TrackViewState();
				}
			}
			return dynamicMenuStyle;
		}
	}

	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	public MenuItemStyle StaticMenuItemStyle
	{
		get
		{
			if (staticMenuItemStyle == null)
			{
				staticMenuItemStyle = new MenuItemStyle();
				if (IsTrackingViewState)
				{
					staticMenuItemStyle.TrackViewState();
				}
			}
			return staticMenuItemStyle;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	public MenuItemStyle StaticSelectedStyle
	{
		get
		{
			if (staticSelectedStyle == null)
			{
				staticSelectedStyle = new MenuItemStyle();
				if (IsTrackingViewState)
				{
					staticSelectedStyle.TrackViewState();
				}
			}
			return staticSelectedStyle;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public SubMenuStyle StaticMenuStyle
	{
		get
		{
			if (staticMenuStyle == null)
			{
				staticMenuStyle = new SubMenuStyle();
				if (IsTrackingViewState)
				{
					staticMenuStyle.TrackViewState();
				}
			}
			return staticMenuStyle;
		}
	}

	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Editor("System.Web.UI.Design.WebControls.MenuItemStyleCollectionEditor,System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public MenuItemStyleCollection LevelMenuItemStyles
	{
		get
		{
			if (levelMenuItemStyles == null)
			{
				levelMenuItemStyles = new MenuItemStyleCollection();
				if (IsTrackingViewState)
				{
					((IStateManager)levelMenuItemStyles).TrackViewState();
				}
			}
			return levelMenuItemStyles;
		}
	}

	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Editor("System.Web.UI.Design.WebControls.MenuItemStyleCollectionEditor,System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public MenuItemStyleCollection LevelSelectedStyles
	{
		get
		{
			if (levelSelectedStyles == null)
			{
				levelSelectedStyles = new MenuItemStyleCollection();
				if (IsTrackingViewState)
				{
					((IStateManager)levelSelectedStyles).TrackViewState();
				}
			}
			return levelSelectedStyles;
		}
	}

	[Editor("System.Web.UI.Design.WebControls.SubMenuStyleCollectionEditor,System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	public SubMenuStyleCollection LevelSubMenuStyles
	{
		get
		{
			if (levelSubMenuStyles == null)
			{
				levelSubMenuStyles = new SubMenuStyleCollection();
				if (IsTrackingViewState)
				{
					((IStateManager)levelSubMenuStyles).TrackViewState();
				}
			}
			return levelSubMenuStyles;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public Style DynamicHoverStyle
	{
		get
		{
			if (dynamicHoverStyle == null)
			{
				dynamicHoverStyle = new Style();
				if (IsTrackingViewState)
				{
					dynamicHoverStyle.TrackViewState();
				}
			}
			return dynamicHoverStyle;
		}
	}

	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public Style StaticHoverStyle
	{
		get
		{
			if (staticHoverStyle == null)
			{
				staticHoverStyle = new Style();
				if (IsTrackingViewState)
				{
					staticHoverStyle.TrackViewState();
				}
			}
			return staticHoverStyle;
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string ScrollDownImageUrl
	{
		get
		{
			object obj = ViewState["sdiu"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["sdiu"] = value;
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string ScrollUpImageUrl
	{
		get
		{
			object obj = ViewState["suiu"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["suiu"] = value;
		}
	}

	[Localizable(true)]
	public string ScrollDownText
	{
		get
		{
			object obj = ViewState["ScrollDownText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Scroll down");
		}
		set
		{
			ViewState["ScrollDownText"] = value;
		}
	}

	[Localizable(true)]
	public string ScrollUpText
	{
		get
		{
			object obj = ViewState["ScrollUpText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Scroll up");
		}
		set
		{
			ViewState["ScrollUpText"] = value;
		}
	}

	public string DynamicPopOutImageTextFormatString
	{
		get
		{
			object obj = ViewState["dpoitf"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Expand {0}");
		}
		set
		{
			ViewState["dpoitf"] = value;
		}
	}

	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	[UrlProperty]
	public string DynamicPopOutImageUrl
	{
		get
		{
			object obj = ViewState["dpoiu"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["dpoiu"] = value;
		}
	}

	public string StaticPopOutImageTextFormatString
	{
		get
		{
			object obj = ViewState["spoitf"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Expand {0}");
		}
		set
		{
			ViewState["spoitf"] = value;
		}
	}

	[UrlProperty]
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public string StaticPopOutImageUrl
	{
		get
		{
			object obj = ViewState["spoiu"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["spoiu"] = value;
		}
	}

	[DefaultValue("")]
	public string Target
	{
		get
		{
			object obj = ViewState["Target"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			ViewState["Target"] = value;
		}
	}

	[DefaultValue(null)]
	[Browsable(false)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[TemplateContainer(typeof(MenuItemTemplateContainer), BindingDirection.OneWay)]
	public ITemplate StaticItemTemplate
	{
		get
		{
			return staticItemTemplate;
		}
		set
		{
			staticItemTemplate = value;
		}
	}

	[DefaultValue(null)]
	[TemplateContainer(typeof(MenuItemTemplateContainer), BindingDirection.OneWay)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	public ITemplate DynamicItemTemplate
	{
		get
		{
			return dynamicItemTemplate;
		}
		set
		{
			dynamicItemTemplate = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public MenuItem SelectedItem
	{
		get
		{
			if (selectedItem == null && selectedItemPath != null)
			{
				selectedItem = FindItemByPos(selectedItemPath);
			}
			return selectedItem;
		}
	}

	[Browsable(false)]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string SelectedValue
	{
		get
		{
			if (selectedItem == null)
			{
				return "";
			}
			return selectedItem.Value;
		}
	}

	[Localizable(true)]
	public string SkipLinkText
	{
		get
		{
			object obj = ViewState["SkipLinkText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "Skip Navigation Links";
		}
		set
		{
			ViewState["SkipLinkText"] = value;
		}
	}

	protected override HtmlTextWriterTag TagKey => Renderer.Tag;

	public override ControlCollection Controls => base.Controls;

	public event MenuEventHandler MenuItemClick
	{
		add
		{
			Events.AddHandler(MenuItemClickEvent, value);
		}
		remove
		{
			Events.RemoveHandler(MenuItemClickEvent, value);
		}
	}

	public event MenuEventHandler MenuItemDataBound
	{
		add
		{
			Events.AddHandler(MenuItemDataBoundEvent, value);
		}
		remove
		{
			Events.RemoveHandler(MenuItemDataBoundEvent, value);
		}
	}

	protected virtual void OnMenuItemClick(MenuEventArgs e)
	{
		if (Events != null)
		{
			((MenuEventHandler)Events[MenuItemClickEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnMenuItemDataBound(MenuEventArgs e)
	{
		if (Events != null)
		{
			((MenuEventHandler)Events[MenuItemDataBoundEvent])?.Invoke(this, e);
		}
	}

	private IMenuRenderer CreateRenderer(IMenuRenderer current)
	{
		Type type = null;
		switch (RenderingMode)
		{
		case MenuRenderingMode.Default:
			type = ((!RenderingCompatibilityLessThan40) ? typeof(MenuListRenderer) : typeof(MenuTableRenderer));
			break;
		case MenuRenderingMode.Table:
			type = typeof(MenuTableRenderer);
			break;
		case MenuRenderingMode.List:
			type = typeof(MenuListRenderer);
			break;
		}
		if (type == null)
		{
			return null;
		}
		if (current == null || current.GetType() != type)
		{
			return Activator.CreateInstance(type, this) as IMenuRenderer;
		}
		return current;
	}

	internal void SetSelectedItem(MenuItem item)
	{
		if (selectedItem != item)
		{
			selectedItem = item;
			selectedItemPath = item.Path;
		}
	}

	public MenuItem FindItem(string valuePath)
	{
		if (valuePath == null)
		{
			throw new ArgumentNullException("valuePath");
		}
		string[] array = valuePath.Split(PathSeparator);
		int num = 0;
		MenuItemCollection childItems = Items;
		bool flag = true;
		while ((childItems.Count > 0) & flag)
		{
			flag = false;
			foreach (MenuItem item in childItems)
			{
				if (item.Value == array[num])
				{
					if (++num == array.Length)
					{
						return item;
					}
					childItems = item.ChildItems;
					flag = true;
					break;
				}
			}
		}
		return null;
	}

	private string GetBindingKey(string dataMember, int depth)
	{
		return dataMember + " " + depth;
	}

	internal MenuItemBinding FindBindingForItem(string type, int depth)
	{
		if (bindings == null)
		{
			return null;
		}
		MenuItemBinding menuItemBinding = (MenuItemBinding)bindings[GetBindingKey(type, depth)];
		if (menuItemBinding != null)
		{
			return menuItemBinding;
		}
		menuItemBinding = (MenuItemBinding)bindings[GetBindingKey(type, -1)];
		if (menuItemBinding != null)
		{
			return menuItemBinding;
		}
		menuItemBinding = (MenuItemBinding)bindings[GetBindingKey("", depth)];
		if (menuItemBinding != null)
		{
			return menuItemBinding;
		}
		return (MenuItemBinding)bindings[GetBindingKey("", -1)];
	}

	protected internal override void PerformDataBinding()
	{
		base.PerformDataBinding();
		if (!IsBoundUsingDataSourceID && DataSource == null)
		{
			EnsureChildControlsDataBound();
			return;
		}
		InitializeDataBindings();
		HierarchicalDataSourceView hierarchicalDataSourceView = GetData("") ?? throw new InvalidOperationException("No view returned by data source control.");
		Items.Clear();
		IHierarchicalEnumerable hEnumerable = hierarchicalDataSourceView.Select();
		FillBoundChildrenRecursive(hEnumerable, Items);
		CreateChildControlsForItems();
		ChildControlsCreated = true;
		EnsureChildControlsDataBound();
	}

	private void FillBoundChildrenRecursive(IHierarchicalEnumerable hEnumerable, MenuItemCollection itemCollection)
	{
		if (hEnumerable == null)
		{
			return;
		}
		foreach (object item in hEnumerable)
		{
			IHierarchyData hierarchyData = hEnumerable.GetHierarchyData(item);
			MenuItem menuItem = new MenuItem();
			itemCollection.Add(menuItem);
			menuItem.Bind(hierarchyData);
			if (hierarchyData is SiteMapNode siteMapNode)
			{
				if (_currSiteMapNode == null)
				{
					_currSiteMapNode = siteMapNode.Provider.CurrentNode;
				}
				if (siteMapNode == _currSiteMapNode)
				{
					menuItem.Selected = true;
				}
			}
			OnMenuItemDataBound(new MenuEventArgs(menuItem));
			if (hierarchyData != null && hierarchyData.HasChildren)
			{
				IHierarchicalEnumerable children = hierarchyData.GetChildren();
				FillBoundChildrenRecursive(children, menuItem.ChildItems);
			}
		}
	}

	protected void SetItemDataBound(MenuItem node, bool dataBound)
	{
		node.SetDataBound(dataBound);
	}

	protected void SetItemDataPath(MenuItem node, string dataPath)
	{
		node.SetDataPath(dataPath);
	}

	protected void SetItemDataItem(MenuItem node, object dataItem)
	{
		node.SetDataItem(dataItem);
	}

	protected internal virtual void RaisePostBackEvent(string eventArgument)
	{
		ValidateEvent(UniqueID, eventArgument);
		if (IsEnabled)
		{
			EnsureChildControls();
			MenuItem menuItem = FindItemByPos(eventArgument);
			if (menuItem != null)
			{
				menuItem.Selected = true;
				OnMenuItemClick(new MenuEventArgs(menuItem));
			}
		}
	}

	void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
	{
		RaisePostBackEvent(eventArgument);
	}

	private MenuItem FindItemByPos(string path)
	{
		string[] array = path.Split('_');
		MenuItem menuItem = null;
		string[] array2 = array;
		for (int i = 0; i < array2.Length; i++)
		{
			int num = int.Parse(array2[i]);
			if (menuItem == null)
			{
				if (num >= Items.Count)
				{
					return null;
				}
				menuItem = Items[num];
			}
			else
			{
				if (num >= menuItem.ChildItems.Count)
				{
					return null;
				}
				menuItem = menuItem.ChildItems[num];
			}
		}
		return menuItem;
	}

	protected override void TrackViewState()
	{
		EnsureDataBound();
		base.TrackViewState();
		if (dataBindings != null)
		{
			((IStateManager)dataBindings).TrackViewState();
		}
		if (items != null)
		{
			((IStateManager)items).TrackViewState();
		}
		if (dynamicMenuItemStyle != null)
		{
			dynamicMenuItemStyle.TrackViewState();
		}
		if (dynamicMenuStyle != null)
		{
			dynamicMenuStyle.TrackViewState();
		}
		if (levelMenuItemStyles != null && levelMenuItemStyles.Count > 0)
		{
			((IStateManager)levelMenuItemStyles).TrackViewState();
		}
		if (levelSelectedStyles != null && levelMenuItemStyles.Count > 0)
		{
			((IStateManager)levelSelectedStyles).TrackViewState();
		}
		if (levelSubMenuStyles != null && levelSubMenuStyles.Count > 0)
		{
			((IStateManager)levelSubMenuStyles).TrackViewState();
		}
		if (dynamicSelectedStyle != null)
		{
			dynamicSelectedStyle.TrackViewState();
		}
		if (staticMenuItemStyle != null)
		{
			staticMenuItemStyle.TrackViewState();
		}
		if (staticMenuStyle != null)
		{
			staticMenuStyle.TrackViewState();
		}
		if (staticSelectedStyle != null)
		{
			staticSelectedStyle.TrackViewState();
		}
		if (staticHoverStyle != null)
		{
			staticHoverStyle.TrackViewState();
		}
		if (dynamicHoverStyle != null)
		{
			dynamicHoverStyle.TrackViewState();
		}
	}

	protected override object SaveViewState()
	{
		object[] array = new object[14]
		{
			base.SaveViewState(),
			(dataBindings == null) ? null : ((IStateManager)dataBindings).SaveViewState(),
			(items == null) ? null : ((IStateManager)items).SaveViewState(),
			(dynamicMenuItemStyle == null) ? null : dynamicMenuItemStyle.SaveViewState(),
			(dynamicMenuStyle == null) ? null : dynamicMenuStyle.SaveViewState(),
			(levelMenuItemStyles == null) ? null : ((IStateManager)levelMenuItemStyles).SaveViewState(),
			(levelSelectedStyles == null) ? null : ((IStateManager)levelSelectedStyles).SaveViewState(),
			(dynamicSelectedStyle == null) ? null : dynamicSelectedStyle.SaveViewState(),
			(staticMenuItemStyle == null) ? null : staticMenuItemStyle.SaveViewState(),
			(staticMenuStyle == null) ? null : staticMenuStyle.SaveViewState(),
			(staticSelectedStyle == null) ? null : staticSelectedStyle.SaveViewState(),
			(staticHoverStyle == null) ? null : staticHoverStyle.SaveViewState(),
			(dynamicHoverStyle == null) ? null : dynamicHoverStyle.SaveViewState(),
			(levelSubMenuStyles == null) ? null : ((IStateManager)levelSubMenuStyles).SaveViewState()
		};
		for (int num = array.Length - 1; num >= 0; num--)
		{
			if (array[num] != null)
			{
				return array;
			}
		}
		return null;
	}

	protected override void LoadViewState(object state)
	{
		if (state != null)
		{
			object[] array = (object[])state;
			base.LoadViewState(array[0]);
			if (array[1] != null)
			{
				((IStateManager)DataBindings).LoadViewState(array[1]);
			}
			if (array[2] != null)
			{
				((IStateManager)Items).LoadViewState(array[2]);
			}
			if (array[3] != null)
			{
				DynamicMenuItemStyle.LoadViewState(array[3]);
			}
			if (array[4] != null)
			{
				DynamicMenuStyle.LoadViewState(array[4]);
			}
			if (array[5] != null)
			{
				((IStateManager)LevelMenuItemStyles).LoadViewState(array[5]);
			}
			if (array[6] != null)
			{
				((IStateManager)LevelSelectedStyles).LoadViewState(array[6]);
			}
			if (array[7] != null)
			{
				DynamicSelectedStyle.LoadViewState(array[7]);
			}
			if (array[8] != null)
			{
				StaticMenuItemStyle.LoadViewState(array[8]);
			}
			if (array[9] != null)
			{
				StaticMenuStyle.LoadViewState(array[9]);
			}
			if (array[10] != null)
			{
				StaticSelectedStyle.LoadViewState(array[10]);
			}
			if (array[11] != null)
			{
				StaticHoverStyle.LoadViewState(array[11]);
			}
			if (array[12] != null)
			{
				DynamicHoverStyle.LoadViewState(array[12]);
			}
			if (array[13] != null)
			{
				((IStateManager)LevelSubMenuStyles).LoadViewState(array[13]);
			}
		}
	}

	protected internal override void OnInit(EventArgs e)
	{
		Page.RegisterRequiresControlState(this);
		base.OnInit(e);
	}

	protected internal override void LoadControlState(object savedState)
	{
		if (savedState != null)
		{
			object[] array = (object[])savedState;
			base.LoadControlState(array[0]);
			selectedItemPath = array[1] as string;
		}
	}

	protected internal override object SaveControlState()
	{
		object obj = base.SaveControlState();
		object obj2 = selectedItemPath;
		if (obj != null || obj2 != null)
		{
			return new object[2] { obj, obj2 };
		}
		return null;
	}

	protected internal override void CreateChildControls()
	{
		if (!IsBoundUsingDataSourceID && DataSource == null)
		{
			CreateChildControlsForItems();
		}
		else
		{
			EnsureDataBound();
		}
	}

	private void CreateChildControlsForItems()
	{
		Controls.Clear();
		if (HasChildViewState)
		{
			ClearChildViewState();
		}
		_menuItemControls = new Hashtable();
		CreateChildControlsForItems(Items);
		_requiresChildControlsDataBinding = true;
	}

	private void CreateChildControlsForItems(MenuItemCollection items)
	{
		IMenuRenderer menuRenderer = Renderer;
		foreach (MenuItem item in items)
		{
			bool flag = menuRenderer.IsDynamicItem(this, item);
			if (flag && dynamicItemTemplate != null)
			{
				MenuItemTemplateContainer menuItemTemplateContainer = new MenuItemTemplateContainer(item.Index, item);
				dynamicItemTemplate.InstantiateIn(menuItemTemplateContainer);
				_menuItemControls[item] = menuItemTemplateContainer;
				Controls.Add(menuItemTemplateContainer);
			}
			else if (!flag && staticItemTemplate != null)
			{
				MenuItemTemplateContainer menuItemTemplateContainer2 = new MenuItemTemplateContainer(item.Index, item);
				staticItemTemplate.InstantiateIn(menuItemTemplateContainer2);
				_menuItemControls[item] = menuItemTemplateContainer2;
				Controls.Add(menuItemTemplateContainer2);
			}
			if (item.HasChildData)
			{
				CreateChildControlsForItems(item.ChildItems);
			}
		}
	}

	protected override void EnsureDataBound()
	{
		base.EnsureDataBound();
		EnsureChildControlsDataBound();
	}

	private void EnsureChildControlsDataBound()
	{
		if (_requiresChildControlsDataBinding)
		{
			DataBindChildren();
			_requiresChildControlsDataBinding = false;
		}
	}

	[MonoTODO("Not implemented")]
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected override IDictionary GetDesignModeState()
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected override void SetDesignModeState(IDictionary data)
	{
		throw new NotImplementedException();
	}

	public sealed override void DataBind()
	{
		base.DataBind();
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (!(e is CommandEventArgs))
		{
			return false;
		}
		if (e is MenuEventArgs e2 && string.Equals(e2.CommandName, MenuItemClickCommandName))
		{
			OnMenuItemClick(e2);
		}
		return true;
	}

	protected override void OnDataBinding(EventArgs e)
	{
		EnsureChildControls();
		base.OnDataBinding(e);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		string cmenu = ClientID + "_data";
		StringBuilder stringBuilder = new StringBuilder();
		Page page = Page;
		HtmlHead head;
		ClientScriptManager clientScriptManager;
		if (page != null)
		{
			head = page.Header;
			clientScriptManager = page.ClientScript;
		}
		else
		{
			head = null;
			clientScriptManager = null;
		}
		Renderer.PreRender(page, head, clientScriptManager, cmenu, stringBuilder);
		if (clientScriptManager != null)
		{
			clientScriptManager.RegisterWebFormClientScript();
			clientScriptManager.RegisterStartupScript(typeof(Menu), ClientID, stringBuilder.ToString(), addScriptTags: true);
		}
	}

	private void InitializeDataBindings()
	{
		if (dataBindings != null && dataBindings.Count > 0)
		{
			bindings = new Hashtable();
			{
				foreach (MenuItemBinding dataBinding in dataBindings)
				{
					string bindingKey = GetBindingKey(dataBinding.DataMember, dataBinding.Depth);
					bindings[bindingKey] = dataBinding;
				}
				return;
			}
		}
		bindings = null;
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		if (Items.Count > 0)
		{
			base.Render(writer);
		}
	}

	protected override void AddAttributesToRender(HtmlTextWriter writer)
	{
		Renderer.AddAttributesToRender(writer);
		base.AddAttributesToRender(writer);
	}

	public override void RenderBeginTag(HtmlTextWriter writer)
	{
		string skipLinkText = SkipLinkText;
		if (!string.IsNullOrEmpty(skipLinkText))
		{
			Renderer.RenderBeginTag(writer, skipLinkText);
		}
		base.RenderBeginTag(writer);
	}

	public override void RenderEndTag(HtmlTextWriter writer)
	{
		base.RenderEndTag(writer);
		Renderer.RenderEndTag(writer);
		if (!string.IsNullOrEmpty(SkipLinkText))
		{
			writer.AddAttribute(HtmlTextWriterAttribute.Id, ClientID + "_SkipLink");
			writer.RenderBeginTag(HtmlTextWriterTag.A);
			writer.RenderEndTag();
		}
	}

	protected internal override void RenderContents(HtmlTextWriter writer)
	{
		Renderer.RenderContents(writer);
	}

	internal void RenderDynamicMenu(HtmlTextWriter writer, MenuItemCollection items)
	{
		for (int i = 0; i < items.Count; i++)
		{
			if (DisplayChildren(items[i]))
			{
				RenderDynamicMenu(writer, items[i]);
				RenderDynamicMenu(writer, items[i].ChildItems);
			}
		}
	}

	private MenuRenderHtmlTemplate GetDynamicMenuTemplate(MenuItem item)
	{
		if (_dynamicTemplate != null)
		{
			return _dynamicTemplate;
		}
		_dynamicTemplate = new MenuRenderHtmlTemplate();
		HtmlTextWriter menuTemplateWriter = _dynamicTemplate.GetMenuTemplateWriter();
		if (Page.Header != null)
		{
			menuTemplateWriter.AddAttribute(HtmlTextWriterAttribute.Class, MenuRenderHtmlTemplate.GetMarker(0));
		}
		else
		{
			menuTemplateWriter.AddAttribute(HtmlTextWriterAttribute.Style, MenuRenderHtmlTemplate.GetMarker(0));
		}
		menuTemplateWriter.AddStyleAttribute("visibility", "hidden");
		menuTemplateWriter.AddStyleAttribute("position", "absolute");
		menuTemplateWriter.AddStyleAttribute("z-index", "1");
		menuTemplateWriter.AddStyleAttribute("left", "0px");
		menuTemplateWriter.AddStyleAttribute("top", "0px");
		menuTemplateWriter.AddAttribute("id", MenuRenderHtmlTemplate.GetMarker(1));
		menuTemplateWriter.RenderBeginTag(HtmlTextWriterTag.Div);
		menuTemplateWriter.AddAttribute("id", MenuRenderHtmlTemplate.GetMarker(2));
		menuTemplateWriter.AddStyleAttribute("display", "block");
		menuTemplateWriter.AddStyleAttribute("text-align", "center");
		menuTemplateWriter.AddAttribute("onmouseover", "Menu_OverScrollBtn ('" + ClientID + "','" + MenuRenderHtmlTemplate.GetMarker(3) + "','u')");
		menuTemplateWriter.AddAttribute("onmouseout", "Menu_OutScrollBtn ('" + ClientID + "','" + MenuRenderHtmlTemplate.GetMarker(4) + "','u')");
		menuTemplateWriter.RenderBeginTag(HtmlTextWriterTag.Div);
		menuTemplateWriter.AddAttribute("src", MenuRenderHtmlTemplate.GetMarker(5));
		menuTemplateWriter.AddAttribute("alt", MenuRenderHtmlTemplate.GetMarker(6));
		menuTemplateWriter.RenderBeginTag(HtmlTextWriterTag.Img);
		menuTemplateWriter.RenderEndTag();
		menuTemplateWriter.RenderEndTag();
		menuTemplateWriter.AddAttribute("id", MenuRenderHtmlTemplate.GetMarker(7));
		menuTemplateWriter.RenderBeginTag(HtmlTextWriterTag.Div);
		menuTemplateWriter.AddAttribute("id", MenuRenderHtmlTemplate.GetMarker(8));
		menuTemplateWriter.RenderBeginTag(HtmlTextWriterTag.Div);
		menuTemplateWriter.Write(MenuRenderHtmlTemplate.GetMarker(9));
		menuTemplateWriter.RenderEndTag();
		menuTemplateWriter.RenderEndTag();
		menuTemplateWriter.AddAttribute("id", MenuRenderHtmlTemplate.GetMarker(0));
		menuTemplateWriter.AddStyleAttribute("display", "block");
		menuTemplateWriter.AddStyleAttribute("text-align", "center");
		menuTemplateWriter.AddAttribute("onmouseover", "Menu_OverScrollBtn ('" + ClientID + "','" + MenuRenderHtmlTemplate.GetMarker(1) + "','d')");
		menuTemplateWriter.AddAttribute("onmouseout", "Menu_OutScrollBtn ('" + ClientID + "','" + MenuRenderHtmlTemplate.GetMarker(2) + "','d')");
		menuTemplateWriter.RenderBeginTag(HtmlTextWriterTag.Div);
		menuTemplateWriter.AddAttribute("src", MenuRenderHtmlTemplate.GetMarker(3));
		menuTemplateWriter.AddAttribute("alt", MenuRenderHtmlTemplate.GetMarker(4));
		menuTemplateWriter.RenderBeginTag(HtmlTextWriterTag.Img);
		menuTemplateWriter.RenderEndTag();
		menuTemplateWriter.RenderEndTag();
		menuTemplateWriter.RenderEndTag();
		_dynamicTemplate.Parse();
		return _dynamicTemplate;
	}

	private void RenderDynamicMenu(HtmlTextWriter writer, MenuItem item)
	{
		_dynamicTemplate = GetDynamicMenuTemplate(item);
		string text = ClientID + "_" + item.Path;
		string[] array = new string[9]
		{
			GetCssMenuStyle(dynamic: true, item.Depth + 1),
			text + "s",
			text + "cu",
			item.Path,
			item.Path,
			(ScrollUpImageUrl != "") ? ScrollUpImageUrl : Page.ClientScript.GetWebResourceUrl(typeof(Menu), "arrow_up.gif"),
			ScrollUpText,
			text + "cb",
			text + "cc"
		};
		_dynamicTemplate.RenderTemplate(writer, array, 0, array.Length);
		RenderMenu(writer, item.ChildItems, vertical: true, dynamic: true, item.Depth + 1, notLast: false);
		string[] array2 = new string[5]
		{
			text + "cd",
			item.Path,
			item.Path,
			(ScrollDownImageUrl != "") ? ScrollDownImageUrl : Page.ClientScript.GetWebResourceUrl(typeof(Menu), "arrow_down.gif"),
			ScrollDownText
		};
		_dynamicTemplate.RenderTemplate(writer, array2, array.Length + 1, array2.Length);
	}

	private string GetCssMenuStyle(bool dynamic, int menuLevel)
	{
		if (Page.Header != null)
		{
			StringBuilder stringBuilder = new StringBuilder();
			if (!dynamic && staticMenuStyle != null)
			{
				stringBuilder.Append(staticMenuStyle.CssClass);
				stringBuilder.Append(' ');
				stringBuilder.Append(staticMenuStyle.RegisteredCssClass);
			}
			if (dynamic && dynamicMenuStyle != null)
			{
				stringBuilder.Append(PopOutBoxStyle.RegisteredCssClass);
				stringBuilder.Append(' ');
				stringBuilder.Append(dynamicMenuStyle.CssClass);
				stringBuilder.Append(' ');
				stringBuilder.Append(dynamicMenuStyle.RegisteredCssClass);
			}
			if (levelSubMenuStyles != null && levelSubMenuStyles.Count > menuLevel)
			{
				stringBuilder.Append(levelSubMenuStyles[menuLevel].CssClass);
				stringBuilder.Append(' ');
				stringBuilder.Append(levelSubMenuStyles[menuLevel].RegisteredCssClass);
			}
			return stringBuilder.ToString();
		}
		SubMenuStyle subMenuStyle = new SubMenuStyle();
		if (!dynamic && staticMenuStyle != null)
		{
			subMenuStyle.CopyFrom(staticMenuStyle);
		}
		if (dynamic && dynamicMenuStyle != null)
		{
			subMenuStyle.CopyFrom(PopOutBoxStyle);
			subMenuStyle.CopyFrom(dynamicMenuStyle);
		}
		if (levelSubMenuStyles != null && levelSubMenuStyles.Count > menuLevel)
		{
			subMenuStyle.CopyFrom(levelSubMenuStyles[menuLevel]);
		}
		return subMenuStyle.GetStyleAttributes(null).Value;
	}

	internal void RenderMenu(HtmlTextWriter writer, MenuItemCollection items, bool vertical, bool dynamic, int menuLevel, bool notLast)
	{
		IMenuRenderer menuRenderer = Renderer;
		menuRenderer.RenderMenuBeginTag(writer, dynamic, menuLevel);
		menuRenderer.RenderMenuBody(writer, items, vertical, dynamic, notLast);
		menuRenderer.RenderMenuEndTag(writer, dynamic, menuLevel);
	}

	internal bool DisplayChildren(MenuItem item)
	{
		if (item.Depth + 1 < StaticDisplayLevels + MaximumDynamicDisplayLevels)
		{
			return item.ChildItems.Count > 0;
		}
		return false;
	}

	internal void RenderItem(HtmlTextWriter writer, MenuItem item, int position)
	{
		bool notLast = false;
		MenuItem menuItem = item;
		MenuItem parent;
		while ((parent = menuItem.Parent) != null)
		{
			if (menuItem.Index != parent.ChildItems.Count - 1)
			{
				notLast = true;
				break;
			}
			menuItem = parent;
		}
		Renderer.RenderMenuItem(writer, item, notLast, position == 0);
	}

	internal void RenderItemContent(HtmlTextWriter writer, MenuItem item, bool isDynamicItem)
	{
		if (_menuItemControls != null && _menuItemControls[item] != null)
		{
			((Control)_menuItemControls[item]).Render(writer);
		}
		Renderer.RenderItemContent(writer, item, isDynamicItem);
	}

	internal Unit GetItemSpacing(MenuItem item, bool dynamic)
	{
		Unit unit = Unit.Empty;
		if (item.Selected)
		{
			if (levelSelectedStyles != null && item.Depth < levelSelectedStyles.Count)
			{
				unit = levelSelectedStyles[item.Depth].ItemSpacing;
				if (unit != Unit.Empty)
				{
					return unit;
				}
			}
			if (dynamic && dynamicSelectedStyle != null)
			{
				unit = dynamicSelectedStyle.ItemSpacing;
			}
			else if (!dynamic && staticSelectedStyle != null)
			{
				unit = staticSelectedStyle.ItemSpacing;
			}
			if (unit != Unit.Empty)
			{
				return unit;
			}
		}
		if (levelMenuItemStyles != null && item.Depth < levelMenuItemStyles.Count)
		{
			unit = levelMenuItemStyles[item.Depth].ItemSpacing;
			if (unit != Unit.Empty)
			{
				return unit;
			}
		}
		if (dynamic && dynamicMenuItemStyle != null)
		{
			return dynamicMenuItemStyle.ItemSpacing;
		}
		if (!dynamic && staticMenuItemStyle != null)
		{
			return staticMenuItemStyle.ItemSpacing;
		}
		return Unit.Empty;
	}
}
