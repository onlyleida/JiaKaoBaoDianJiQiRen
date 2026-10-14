using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Web.Security;
using System.Web.Util;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.LoginDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[DefaultEvent("Authenticate")]
[Bindable(false)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class Login : CompositeControl, IRenderOuterTable
{
	private sealed class LoginContainer : Control
	{
		private readonly Login _owner;

		private bool renderOuterTable;

		private Table _table;

		private TableCell _containerCell;

		public override string ID
		{
			get
			{
				return _owner.ID;
			}
			set
			{
				_owner.ID = value;
			}
		}

		public override string ClientID => _owner.ClientID;

		public Control UserNameTextBox => FindControl("UserName");

		public Control PasswordTextBox => FindControl("Password");

		public Control RememberMeCheckBox => FindControl("RememberMe");

		public ITextControl FailureTextLiteral => FindControl("FailureText") as ITextControl;

		public LoginContainer(Login owner)
		{
			_owner = owner;
			renderOuterTable = _owner.RenderOuterTable;
			if (renderOuterTable)
			{
				InitTable();
			}
		}

		public void InstantiateTemplate(ITemplate template)
		{
			if (!renderOuterTable)
			{
				template.InstantiateIn(this);
			}
			else
			{
				template.InstantiateIn(_containerCell);
			}
		}

		private void InitTable()
		{
			_table = new Table();
			_containerCell = new TableCell();
			TableRow tableRow = new TableRow();
			tableRow.Cells.Add(_containerCell);
			_table.Rows.Add(tableRow);
			Controls.AddAt(0, _table);
		}

		protected internal override void Render(HtmlTextWriter writer)
		{
			if (_table != null)
			{
				_table.CellSpacing = 0;
				_table.CellPadding = _owner.BorderPadding;
				_table.ApplyStyle(_owner.ControlStyle);
				_table.Attributes.CopyFrom(_owner.Attributes);
			}
			base.Render(writer);
		}
	}

	private sealed class LoginTemplate : WebControl, ITemplate
	{
		private readonly Login _login;

		public LoginTemplate(Login login)
		{
			_login = login;
		}

		void ITemplate.InstantiateIn(Control container)
		{
			LiteralControl c = new LiteralControl(_login.TitleText);
			LiteralControl c2 = new LiteralControl(_login.InstructionText);
			TextBox textBox = new TextBox();
			textBox.ID = "UserName";
			textBox.Text = _login.UserName;
			_login.RegisterApplyStyle(textBox, _login.TextBoxStyle);
			Label label = new Label();
			label.ID = "UserNameLabel";
			label.AssociatedControlID = "UserName";
			label.Text = _login.UserNameLabelText;
			RequiredFieldValidator requiredFieldValidator = new RequiredFieldValidator();
			requiredFieldValidator.ID = "UserNameRequired";
			requiredFieldValidator.ControlToValidate = "UserName";
			requiredFieldValidator.ErrorMessage = _login.UserNameRequiredErrorMessage;
			requiredFieldValidator.ToolTip = _login.UserNameRequiredErrorMessage;
			requiredFieldValidator.Text = "*";
			requiredFieldValidator.ValidationGroup = _login.ID;
			_login.RegisterApplyStyle(requiredFieldValidator, _login.ValidatorTextStyle);
			TextBox textBox2 = new TextBox();
			textBox2.ID = "Password";
			textBox2.TextMode = TextBoxMode.Password;
			_login.RegisterApplyStyle(textBox2, _login.TextBoxStyle);
			Label label2 = new Label();
			label2.ID = "PasswordLabel";
			label2.AssociatedControlID = "PasswordLabel";
			label2.Text = _login.PasswordLabelText;
			RequiredFieldValidator requiredFieldValidator2 = new RequiredFieldValidator();
			requiredFieldValidator2.ID = "PasswordRequired";
			requiredFieldValidator2.ControlToValidate = "Password";
			requiredFieldValidator2.ErrorMessage = _login.PasswordRequiredErrorMessage;
			requiredFieldValidator2.ToolTip = _login.PasswordRequiredErrorMessage;
			requiredFieldValidator2.Text = "*";
			requiredFieldValidator2.ValidationGroup = _login.ID;
			_login.RegisterApplyStyle(requiredFieldValidator2, _login.ValidatorTextStyle);
			bool flag = _login == null || _login.DisplayRememberMe;
			CheckBox checkBox;
			if (flag)
			{
				checkBox = new CheckBox();
				checkBox.ID = "RememberMe";
				checkBox.Checked = _login.RememberMeSet;
				checkBox.Text = _login.RememberMeText;
				_login.RegisterApplyStyle(checkBox, _login.CheckBoxStyle);
			}
			else
			{
				checkBox = null;
			}
			Literal literal = new Literal();
			literal.ID = "FailureText";
			literal.EnableViewState = false;
			WebControl webControl = null;
			switch (_login.LoginButtonType)
			{
			case ButtonType.Button:
				webControl = new Button();
				webControl.ID = "LoginButton";
				break;
			case ButtonType.Link:
				webControl = new LinkButton();
				webControl.ID = "LoginLinkButton";
				break;
			case ButtonType.Image:
				webControl = new ImageButton();
				webControl.ID = "LoginImageButton";
				break;
			}
			_login.RegisterApplyStyle(webControl, _login.LoginButtonStyle);
			webControl.ID = "LoginButton";
			((IButtonControl)webControl).Text = _login.LoginButtonText;
			((IButtonControl)webControl).CommandName = LoginButtonCommandName;
			((IButtonControl)webControl).Command += _login.LoginClick;
			((IButtonControl)webControl).ValidationGroup = _login.ID;
			Table table = new Table();
			table.CellPadding = 0;
			table.Rows.Add(CreateRow(CreateCell(c, null, _login.TitleTextStyle, HorizontalAlign.Center)));
			if (_login.InstructionText.Length > 0)
			{
				table.Rows.Add(CreateRow(CreateCell(c2, null, _login.instructionTextStyle, HorizontalAlign.Center)));
			}
			if (_login.Orientation == Orientation.Horizontal)
			{
				TableRow tableRow = new TableRow();
				TableRow tableRow2 = new TableRow();
				if (_login.TextLayout == LoginTextLayout.TextOnTop)
				{
					tableRow.Cells.Add(CreateCell(label, null, _login.LabelStyle));
				}
				else
				{
					tableRow2.Cells.Add(CreateCell(label, null, _login.LabelStyle));
				}
				tableRow2.Cells.Add(CreateCell(textBox, requiredFieldValidator, null));
				if (_login.TextLayout == LoginTextLayout.TextOnTop)
				{
					tableRow.Cells.Add(CreateCell(label2, null, _login.LabelStyle));
				}
				else
				{
					tableRow2.Cells.Add(CreateCell(label2, null, _login.LabelStyle));
				}
				tableRow2.Cells.Add(CreateCell(textBox2, requiredFieldValidator2, null));
				if (flag)
				{
					tableRow2.Cells.Add(CreateCell(checkBox, null, null));
				}
				tableRow2.Cells.Add(CreateCell(webControl, null, null));
				if (tableRow.Cells.Count > 0)
				{
					table.Rows.Add(tableRow);
				}
				table.Rows.Add(tableRow2);
			}
			else
			{
				if (_login.TextLayout == LoginTextLayout.TextOnLeft)
				{
					table.Rows.Add(CreateRow(label, textBox, requiredFieldValidator, _login.LabelStyle));
				}
				else
				{
					table.Rows.Add(CreateRow(label, null, null, _login.LabelStyle));
					table.Rows.Add(CreateRow(null, textBox, requiredFieldValidator, null));
				}
				if (_login.TextLayout == LoginTextLayout.TextOnLeft)
				{
					table.Rows.Add(CreateRow(label2, textBox2, requiredFieldValidator2, _login.LabelStyle));
				}
				else
				{
					table.Rows.Add(CreateRow(label2, null, null, _login.LabelStyle));
					table.Rows.Add(CreateRow(null, textBox2, requiredFieldValidator2, null));
				}
				if (flag)
				{
					table.Rows.Add(CreateRow(CreateCell(checkBox, null, null)));
				}
				table.Rows.Add(CreateRow(CreateCell(webControl, null, null, HorizontalAlign.Right)));
			}
			if (_login.FailureTextStyle.ForeColor.IsEmpty)
			{
				_login.FailureTextStyle.ForeColor = Color.Red;
			}
			table.Rows.Add(CreateRow(CreateCell(literal, null, _login.FailureTextStyle)));
			TableCell tableCell = new TableCell();
			_login.RegisterApplyStyle(tableCell, _login.HyperLinkStyle);
			if (AddLink(_login.CreateUserUrl, _login.CreateUserText, _login.CreateUserIconUrl, tableCell, _login.HyperLinkStyle))
			{
				if (_login.Orientation == Orientation.Vertical)
				{
					tableCell.Controls.Add(new LiteralControl("<br/>"));
				}
				else
				{
					tableCell.Controls.Add(new LiteralControl(" "));
				}
			}
			if (AddLink(_login.PasswordRecoveryUrl, _login.PasswordRecoveryText, _login.PasswordRecoveryIconUrl, tableCell, _login.HyperLinkStyle))
			{
				if (_login.Orientation == Orientation.Vertical)
				{
					tableCell.Controls.Add(new LiteralControl("<br/>"));
				}
				else
				{
					tableCell.Controls.Add(new LiteralControl(" "));
				}
			}
			AddLink(_login.HelpPageUrl, _login.HelpPageText, _login.HelpPageIconUrl, tableCell, _login.HyperLinkStyle);
			table.Rows.Add(CreateRow(tableCell));
			FixTableColumnSpans(table);
			container.Controls.Add(table);
		}

		private TableRow CreateRow(TableCell cell)
		{
			return new TableRow
			{
				Cells = { cell }
			};
		}

		private TableRow CreateRow(Control c0, Control c1, Control c2, Style s)
		{
			TableRow tableRow = new TableRow();
			TableCell tableCell = new TableCell();
			TableCell tableCell2 = new TableCell();
			if (c0 != null)
			{
				tableCell.Controls.Add(c0);
				tableRow.Controls.Add(tableCell);
			}
			if (s != null)
			{
				tableCell.ApplyStyle(s);
			}
			if (c1 != null && c2 != null)
			{
				tableCell2.Controls.Add(c1);
				tableCell2.Controls.Add(c2);
				tableCell.HorizontalAlign = HorizontalAlign.Right;
				tableRow.Controls.Add(tableCell2);
			}
			return tableRow;
		}

		private TableCell CreateCell(Control c0, Control c1, Style s, HorizontalAlign align)
		{
			TableCell tableCell = CreateCell(c0, c1, s);
			tableCell.HorizontalAlign = align;
			return tableCell;
		}

		private TableCell CreateCell(Control c0, Control c1, Style s)
		{
			TableCell tableCell = new TableCell();
			if (s != null)
			{
				tableCell.ApplyStyle(s);
			}
			tableCell.Controls.Add(c0);
			if (c1 != null)
			{
				tableCell.Controls.Add(c1);
			}
			return tableCell;
		}

		private bool AddLink(string pageUrl, string linkText, string linkIcon, WebControl container, Style style)
		{
			bool result = false;
			if (linkIcon.Length > 0)
			{
				Image image = new Image();
				image.ImageUrl = linkIcon;
				container.Controls.Add(image);
				result = true;
			}
			if (linkText.Length > 0)
			{
				HyperLink hyperLink = new HyperLink();
				hyperLink.NavigateUrl = pageUrl;
				hyperLink.Text = linkText;
				_login.RegisterApplyStyle(hyperLink, style);
				container.Controls.Add(hyperLink);
				result = true;
			}
			return result;
		}

		private void FixTableColumnSpans(Table table)
		{
			int num = 0;
			for (int i = 0; i < table.Rows.Count; i++)
			{
				if (num < table.Rows[i].Cells.Count)
				{
					num = table.Rows[i].Cells.Count;
				}
			}
			for (int j = 0; j < table.Rows.Count; j++)
			{
				if (table.Rows[j].Cells.Count == 1 && num > 1)
				{
					table.Rows[j].Cells[0].ColumnSpan = num;
				}
			}
		}
	}

	public static readonly string LoginButtonCommandName = "Login";

	private static readonly object authenticateEvent = new object();

	private static readonly object loggedInEvent = new object();

	private static readonly object loggingInEvent = new object();

	private static readonly object loginErrorEvent = new object();

	private TableItemStyle checkBoxStyle;

	private TableItemStyle failureTextStyle;

	private TableItemStyle hyperLinkStyle;

	private TableItemStyle instructionTextStyle;

	private TableItemStyle labelStyle;

	private Style logonButtonStyle;

	private Style textBoxStyle;

	private TableItemStyle titleTextStyle;

	private Style validatorTextStyle;

	private ArrayList styles = new ArrayList();

	private ITemplate layoutTemplate;

	private LoginContainer container;

	private string _password;

	private bool renderOuterTable = true;

	[DefaultValue(1)]
	public virtual int BorderPadding
	{
		get
		{
			object obj = ViewState["BorderPadding"];
			if (obj != null)
			{
				return (int)obj;
			}
			return 1;
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException("BorderPadding", "< -1");
			}
			ViewState["BorderPadding"] = value;
		}
	}

	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TableItemStyle CheckBoxStyle
	{
		get
		{
			if (checkBoxStyle == null)
			{
				checkBoxStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)checkBoxStyle).TrackViewState();
				}
			}
			return checkBoxStyle;
		}
	}

	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	public virtual string CreateUserIconUrl
	{
		get
		{
			object obj = ViewState["CreateUserIconUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("CreateUserIconUrl");
			}
			else
			{
				ViewState["CreateUserIconUrl"] = value;
			}
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public virtual string CreateUserText
	{
		get
		{
			object obj = ViewState["CreateUserText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("CreateUserText");
			}
			else
			{
				ViewState["CreateUserText"] = value;
			}
		}
	}

	[UrlProperty]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string CreateUserUrl
	{
		get
		{
			object obj = ViewState["CreateUserUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("CreateUserUrl");
			}
			else
			{
				ViewState["CreateUserUrl"] = value;
			}
		}
	}

	[Themeable(false)]
	[UrlProperty]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string DestinationPageUrl
	{
		get
		{
			object obj = ViewState["DestinationPageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("DestinationPageUrl");
			}
			else
			{
				ViewState["DestinationPageUrl"] = value;
			}
		}
	}

	[DefaultValue(true)]
	[Themeable(false)]
	public virtual bool DisplayRememberMe
	{
		get
		{
			object obj = ViewState["DisplayRememberMe"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["DisplayRememberMe"] = value;
		}
	}

	[MonoTODO("RedirectToLoginPage not yet implemented in FormsAuthentication")]
	[Themeable(false)]
	[DefaultValue(LoginFailureAction.Refresh)]
	public virtual LoginFailureAction FailureAction
	{
		get
		{
			object obj = ViewState["FailureAction"];
			if (obj != null)
			{
				return (LoginFailureAction)obj;
			}
			return LoginFailureAction.Refresh;
		}
		set
		{
			if (value < LoginFailureAction.Refresh || value > LoginFailureAction.RedirectToLoginPage)
			{
				throw new ArgumentOutOfRangeException("FailureAction");
			}
			ViewState["FailureAction"] = (int)value;
		}
	}

	[Localizable(true)]
	public virtual string FailureText
	{
		get
		{
			object obj = ViewState["FailureText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Your login attempt was not successful. Please try again.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("FailureText");
			}
			else
			{
				ViewState["FailureText"] = value;
			}
		}
	}

	[DefaultValue(null)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TableItemStyle FailureTextStyle
	{
		get
		{
			if (failureTextStyle == null)
			{
				failureTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)failureTextStyle).TrackViewState();
				}
			}
			return failureTextStyle;
		}
	}

	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	public virtual string HelpPageIconUrl
	{
		get
		{
			object obj = ViewState["HelpPageIconUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("HelpPageIconUrl");
			}
			else
			{
				ViewState["HelpPageIconUrl"] = value;
			}
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public virtual string HelpPageText
	{
		get
		{
			object obj = ViewState["HelpPageText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("HelpPageText");
			}
			else
			{
				ViewState["HelpPageText"] = value;
			}
		}
	}

	[UrlProperty]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	public virtual string HelpPageUrl
	{
		get
		{
			object obj = ViewState["HelpPageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("HelpPageUrl");
			}
			else
			{
				ViewState["HelpPageUrl"] = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public TableItemStyle HyperLinkStyle
	{
		get
		{
			if (hyperLinkStyle == null)
			{
				hyperLinkStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)hyperLinkStyle).TrackViewState();
				}
			}
			return hyperLinkStyle;
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public virtual string InstructionText
	{
		get
		{
			object obj = ViewState["InstructionText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("InstructionText");
			}
			else
			{
				ViewState["InstructionText"] = value;
			}
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	public TableItemStyle InstructionTextStyle
	{
		get
		{
			if (instructionTextStyle == null)
			{
				instructionTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)instructionTextStyle).TrackViewState();
				}
			}
			return instructionTextStyle;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	public TableItemStyle LabelStyle
	{
		get
		{
			if (labelStyle == null)
			{
				labelStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)labelStyle).TrackViewState();
				}
			}
			return labelStyle;
		}
	}

	[Browsable(false)]
	[TemplateContainer(typeof(Login))]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public virtual ITemplate LayoutTemplate
	{
		get
		{
			return layoutTemplate;
		}
		set
		{
			layoutTemplate = value;
		}
	}

	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	public virtual string LoginButtonImageUrl
	{
		get
		{
			object obj = ViewState["LoginButtonImageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("LoginButtonImageUrl");
			}
			else
			{
				ViewState["LoginButtonImageUrl"] = value;
			}
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public Style LoginButtonStyle
	{
		get
		{
			if (logonButtonStyle == null)
			{
				logonButtonStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)logonButtonStyle).TrackViewState();
				}
			}
			return logonButtonStyle;
		}
	}

	[Localizable(true)]
	public virtual string LoginButtonText
	{
		get
		{
			object obj = ViewState["LoginButtonText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Log In");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("LoginButtonText");
			}
			else
			{
				ViewState["LoginButtonText"] = value;
			}
		}
	}

	[DefaultValue(ButtonType.Button)]
	public virtual ButtonType LoginButtonType
	{
		get
		{
			object obj = ViewState["LoginButtonType"];
			if (obj != null)
			{
				return (ButtonType)obj;
			}
			return ButtonType.Button;
		}
		set
		{
			if (value < ButtonType.Button || value > ButtonType.Link)
			{
				throw new ArgumentOutOfRangeException("LoginButtonType");
			}
			ViewState["LoginButtonType"] = (int)value;
		}
	}

	[Themeable(false)]
	[DefaultValue("")]
	public virtual string MembershipProvider
	{
		get
		{
			object obj = ViewState["MembershipProvider"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("MembershipProvider");
			}
			else
			{
				ViewState["MembershipProvider"] = value;
			}
		}
	}

	[DefaultValue(Orientation.Vertical)]
	public virtual Orientation Orientation
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
			if (value < Orientation.Horizontal || value > Orientation.Vertical)
			{
				throw new ArgumentOutOfRangeException("Orientation");
			}
			ViewState["Orientation"] = (int)value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string Password
	{
		get
		{
			if (_password == null)
			{
				return string.Empty;
			}
			return _password;
		}
	}

	[Localizable(true)]
	public virtual string PasswordLabelText
	{
		get
		{
			object obj = ViewState["PasswordLabelText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "Password:";
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("PasswordLabelText");
			}
			else
			{
				ViewState["PasswordLabelText"] = value;
			}
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string PasswordRecoveryIconUrl
	{
		get
		{
			object obj = ViewState["PasswordRecoveryIconUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("PasswordRecoveryIconUrl");
			}
			else
			{
				ViewState["PasswordRecoveryIconUrl"] = value;
			}
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	public virtual string PasswordRecoveryText
	{
		get
		{
			object obj = ViewState["PasswordRecoveryText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("PasswordRecoveryText");
			}
			else
			{
				ViewState["PasswordRecoveryText"] = value;
			}
		}
	}

	[DefaultValue("")]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	public virtual string PasswordRecoveryUrl
	{
		get
		{
			object obj = ViewState["PasswordRecoveryUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("PasswordRecoveryUrl");
			}
			else
			{
				ViewState["PasswordRecoveryUrl"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string PasswordRequiredErrorMessage
	{
		get
		{
			object obj = ViewState["PasswordRequiredErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Password is required.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("PasswordRequiredErrorMessage");
			}
			else
			{
				ViewState["PasswordRequiredErrorMessage"] = value;
			}
		}
	}

	[DefaultValue(true)]
	public virtual bool RenderOuterTable
	{
		get
		{
			return renderOuterTable;
		}
		set
		{
			renderOuterTable = value;
		}
	}

	[Themeable(false)]
	[DefaultValue(false)]
	public virtual bool RememberMeSet
	{
		get
		{
			object obj = ViewState["RememberMeSet"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return false;
		}
		set
		{
			ViewState["RememberMeSet"] = value;
		}
	}

	[Localizable(true)]
	public virtual string RememberMeText
	{
		get
		{
			object obj = ViewState["RememberMeText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Remember me next time.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("RememberMeText");
			}
			else
			{
				ViewState["RememberMeText"] = value;
			}
		}
	}

	protected override HtmlTextWriterTag TagKey => HtmlTextWriterTag.Table;

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public Style TextBoxStyle
	{
		get
		{
			if (textBoxStyle == null)
			{
				textBoxStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)textBoxStyle).TrackViewState();
				}
			}
			return textBoxStyle;
		}
	}

	[DefaultValue(LoginTextLayout.TextOnLeft)]
	public virtual LoginTextLayout TextLayout
	{
		get
		{
			object obj = ViewState["TextLayout"];
			if (obj != null)
			{
				return (LoginTextLayout)obj;
			}
			return LoginTextLayout.TextOnLeft;
		}
		set
		{
			if (value < LoginTextLayout.TextOnLeft || value > LoginTextLayout.TextOnTop)
			{
				throw new ArgumentOutOfRangeException("TextLayout");
			}
			ViewState["TextLayout"] = (int)value;
		}
	}

	[Localizable(true)]
	public virtual string TitleText
	{
		get
		{
			object obj = ViewState["TitleText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Log In");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("TitleText");
			}
			else
			{
				ViewState["TitleText"] = value;
			}
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	public TableItemStyle TitleTextStyle
	{
		get
		{
			if (titleTextStyle == null)
			{
				titleTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)titleTextStyle).TrackViewState();
				}
			}
			return titleTextStyle;
		}
	}

	[DefaultValue("")]
	public virtual string UserName
	{
		get
		{
			object obj = ViewState["UserName"];
			if (obj != null)
			{
				return (string)obj;
			}
			return string.Empty;
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("UserName");
			}
			else
			{
				ViewState["UserName"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string UserNameLabelText
	{
		get
		{
			object obj = ViewState["UserNameLabelText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("User Name:");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("UserNameLabelText");
			}
			else
			{
				ViewState["UserNameLabelText"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string UserNameRequiredErrorMessage
	{
		get
		{
			object obj = ViewState["UserNameRequiredErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("User Name is required.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("UserNameRequiredErrorMessage");
			}
			else
			{
				ViewState["UserNameRequiredErrorMessage"] = value;
			}
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public Style ValidatorTextStyle
	{
		get
		{
			if (validatorTextStyle == null)
			{
				validatorTextStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)validatorTextStyle).TrackViewState();
				}
			}
			return validatorTextStyle;
		}
	}

	[DefaultValue(true)]
	[Themeable(false)]
	public virtual bool VisibleWhenLoggedIn
	{
		get
		{
			object obj = ViewState["VisibleWhenLoggedIn"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["VisibleWhenLoggedIn"] = value;
		}
	}

	private LoginContainer LoginTemplateContainer
	{
		get
		{
			if (container == null)
			{
				container = new LoginContainer(this);
			}
			return container;
		}
	}

	public event AuthenticateEventHandler Authenticate
	{
		add
		{
			Events.AddHandler(authenticateEvent, value);
		}
		remove
		{
			Events.RemoveHandler(authenticateEvent, value);
		}
	}

	public event EventHandler LoggedIn
	{
		add
		{
			Events.AddHandler(loggedInEvent, value);
		}
		remove
		{
			Events.RemoveHandler(loggedInEvent, value);
		}
	}

	public event LoginCancelEventHandler LoggingIn
	{
		add
		{
			Events.AddHandler(loggingInEvent, value);
		}
		remove
		{
			Events.RemoveHandler(loggingInEvent, value);
		}
	}

	public event EventHandler LoginError
	{
		add
		{
			Events.AddHandler(loginErrorEvent, value);
		}
		remove
		{
			Events.RemoveHandler(loginErrorEvent, value);
		}
	}

	protected internal override void CreateChildControls()
	{
		Controls.Clear();
		ITemplate template = LayoutTemplate;
		if (template == null)
		{
			template = new LoginTemplate(this);
		}
		LoginTemplateContainer.InstantiateTemplate(template);
		Controls.Add(container);
		if (container.UserNameTextBox is IEditableTextControl editableTextControl)
		{
			editableTextControl.Text = UserName;
			editableTextControl.TextChanged += UserName_TextChanged;
			if (container.PasswordTextBox is IEditableTextControl editableTextControl2)
			{
				editableTextControl2.TextChanged += Password_TextChanged;
				if (container.RememberMeCheckBox is ICheckBoxControl checkBoxControl)
				{
					checkBoxControl.CheckedChanged += RememberMe_CheckedChanged;
				}
				return;
			}
			throw new HttpException("LayoutTemplate does not contain an IEditableTextControl with ID Password for the password.");
		}
		throw new HttpException("LayoutTemplate does not contain an IEditableTextControl with ID UserName for the username.");
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState == null)
		{
			base.LoadViewState(null);
			return;
		}
		object[] array = (object[])savedState;
		base.LoadViewState(array[0]);
		if (array[1] != null)
		{
			((IStateManager)LoginButtonStyle).LoadViewState(array[1]);
		}
		if (array[2] != null)
		{
			((IStateManager)LabelStyle).LoadViewState(array[2]);
		}
		if (array[3] != null)
		{
			((IStateManager)TextBoxStyle).LoadViewState(array[3]);
		}
		if (array[4] != null)
		{
			((IStateManager)HyperLinkStyle).LoadViewState(array[4]);
		}
		if (array[5] != null)
		{
			((IStateManager)InstructionTextStyle).LoadViewState(array[5]);
		}
		if (array[6] != null)
		{
			((IStateManager)TitleTextStyle).LoadViewState(array[6]);
		}
		if (array[7] != null)
		{
			((IStateManager)CheckBoxStyle).LoadViewState(array[7]);
		}
		if (array[8] != null)
		{
			((IStateManager)FailureTextStyle).LoadViewState(array[8]);
		}
		if (array[9] != null)
		{
			((IStateManager)ValidatorTextStyle).LoadViewState(array[9]);
		}
	}

	private bool HasOnAuthenticateHandler()
	{
		return (object)Events[authenticateEvent] != null;
	}

	protected virtual void OnAuthenticate(AuthenticateEventArgs e)
	{
		((AuthenticateEventHandler)Events[authenticateEvent])?.Invoke(this, e);
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		if (e is CommandEventArgs e2 && string.Equals(e2.CommandName, LoginButtonCommandName, StringComparison.InvariantCultureIgnoreCase))
		{
			if (!AuthenticateUser())
			{
				ITextControl failureTextLiteral = LoginTemplateContainer.FailureTextLiteral;
				if (failureTextLiteral != null)
				{
					failureTextLiteral.Text = FailureText;
				}
			}
			return true;
		}
		return false;
	}

	protected virtual void OnLoggedIn(EventArgs e)
	{
		((EventHandler)Events[loggedInEvent])?.Invoke(this, e);
	}

	protected virtual void OnLoggingIn(LoginCancelEventArgs e)
	{
		((LoginCancelEventHandler)Events[loggingInEvent])?.Invoke(this, e);
	}

	protected virtual void OnLoginError(EventArgs e)
	{
		((EventHandler)Events[loginErrorEvent])?.Invoke(this, e);
	}

	[MonoTODO("overriden for ?")]
	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		VerifyInlinePropertiesNotSet();
		if (!VisibleWhenLoggedIn && !IsDefaultLoginPage() && IsLoggedIn())
		{
			return;
		}
		Page?.VerifyRenderingInServerForm(this);
		EnsureChildControls();
		foreach (object[] style in styles)
		{
			((WebControl)style[0]).ApplyStyle((Style)style[1]);
		}
		RenderContents(writer);
	}

	protected override object SaveViewState()
	{
		object[] array = new object[10]
		{
			base.SaveViewState(),
			null,
			null,
			null,
			null,
			null,
			null,
			null,
			null,
			null
		};
		if (logonButtonStyle != null)
		{
			array[1] = ((IStateManager)logonButtonStyle).SaveViewState();
		}
		if (labelStyle != null)
		{
			array[2] = ((IStateManager)labelStyle).SaveViewState();
		}
		if (textBoxStyle != null)
		{
			array[3] = ((IStateManager)textBoxStyle).SaveViewState();
		}
		if (hyperLinkStyle != null)
		{
			array[4] = ((IStateManager)hyperLinkStyle).SaveViewState();
		}
		if (instructionTextStyle != null)
		{
			array[5] = ((IStateManager)instructionTextStyle).SaveViewState();
		}
		if (titleTextStyle != null)
		{
			array[6] = ((IStateManager)titleTextStyle).SaveViewState();
		}
		if (checkBoxStyle != null)
		{
			array[7] = ((IStateManager)checkBoxStyle).SaveViewState();
		}
		if (failureTextStyle != null)
		{
			array[8] = ((IStateManager)failureTextStyle).SaveViewState();
		}
		if (validatorTextStyle != null)
		{
			array[9] = ((IStateManager)validatorTextStyle).SaveViewState();
		}
		for (int i = 0; i < array.Length; i++)
		{
			if (array[0] != null)
			{
				return array;
			}
		}
		return null;
	}

	[MonoTODO("for design-time usage - no more details available")]
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected override void SetDesignModeState(IDictionary data)
	{
		base.SetDesignModeState(data);
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		if (logonButtonStyle != null)
		{
			((IStateManager)logonButtonStyle).TrackViewState();
		}
		if (labelStyle != null)
		{
			((IStateManager)labelStyle).TrackViewState();
		}
		if (textBoxStyle != null)
		{
			((IStateManager)textBoxStyle).TrackViewState();
		}
		if (hyperLinkStyle != null)
		{
			((IStateManager)hyperLinkStyle).TrackViewState();
		}
		if (instructionTextStyle != null)
		{
			((IStateManager)instructionTextStyle).TrackViewState();
		}
		if (titleTextStyle != null)
		{
			((IStateManager)titleTextStyle).TrackViewState();
		}
		if (checkBoxStyle != null)
		{
			((IStateManager)checkBoxStyle).TrackViewState();
		}
		if (failureTextStyle != null)
		{
			((IStateManager)failureTextStyle).TrackViewState();
		}
		if (validatorTextStyle != null)
		{
			((IStateManager)validatorTextStyle).TrackViewState();
		}
	}

	internal void RegisterApplyStyle(WebControl control, Style style)
	{
		styles.Add(new object[2] { control, style });
	}

	private bool AuthenticateUser()
	{
		if (!Page.IsValid)
		{
			return true;
		}
		LoginCancelEventArgs e = new LoginCancelEventArgs();
		OnLoggingIn(e);
		if (e.Cancel)
		{
			return true;
		}
		AuthenticateEventArgs e2 = new AuthenticateEventArgs();
		if (!HasOnAuthenticateHandler())
		{
			string membershipProvider = MembershipProvider;
			MembershipProvider membershipProvider2 = ((membershipProvider.Length != 0) ? Membership.Providers[membershipProvider] : (membershipProvider2 = Membership.Provider));
			if (membershipProvider2 == null)
			{
				throw new HttpException(Locale.GetText("No provider named '{0}' could be found.", membershipProvider));
			}
			e2.Authenticated = membershipProvider2.ValidateUser(UserName, Password);
		}
		OnAuthenticate(e2);
		if (e2.Authenticated)
		{
			FormsAuthentication.SetAuthCookie(UserName, RememberMeSet);
			OnLoggedIn(EventArgs.Empty);
			string destinationPageUrl = DestinationPageUrl;
			if (Page.Request.Path.StartsWith(FormsAuthentication.LoginUrl, StringComparison.InvariantCultureIgnoreCase))
			{
				if (!string.IsNullOrEmpty(FormsAuthentication.ReturnUrl))
				{
					Redirect(FormsAuthentication.ReturnUrl);
				}
				else if (!string.IsNullOrEmpty(DestinationPageUrl))
				{
					Redirect(destinationPageUrl);
				}
				else if (!string.IsNullOrEmpty(FormsAuthentication.DefaultUrl))
				{
					Redirect(FormsAuthentication.DefaultUrl);
				}
				else if (destinationPageUrl.Length == 0)
				{
					Refresh();
				}
			}
			else if (!string.IsNullOrEmpty(DestinationPageUrl))
			{
				Redirect(destinationPageUrl);
			}
			else
			{
				Refresh();
			}
			return true;
		}
		OnLoginError(EventArgs.Empty);
		if (FailureAction == LoginFailureAction.RedirectToLoginPage)
		{
			FormsAuthentication.RedirectToLoginPage();
		}
		return false;
	}

	[MonoTODO]
	private void LoginClick(object sender, CommandEventArgs e)
	{
		RaiseBubbleEvent(sender, e);
	}

	private bool IsDefaultLoginPage()
	{
		if (Page == null || Page.Request == null)
		{
			return false;
		}
		string loginUrl = FormsAuthentication.LoginUrl;
		if (loginUrl == null)
		{
			return false;
		}
		string absolutePath = Page.Request.Url.AbsolutePath;
		return string.Compare(loginUrl, 0, absolutePath, absolutePath.Length - loginUrl.Length, loginUrl.Length, ignoreCase: true, Helpers.InvariantCulture) == 0;
	}

	private bool IsLoggedIn()
	{
		if (Page == null || Page.Request == null)
		{
			return false;
		}
		return Page.Request.IsAuthenticated;
	}

	private void Redirect(string url)
	{
		if (Page != null && Page.Response != null)
		{
			Page.Response.Redirect(url);
		}
	}

	private void Refresh()
	{
		if (Page != null && Page.Response != null)
		{
			Page.Response.Redirect(Page.Request.RawUrl);
		}
	}

	private void UserName_TextChanged(object sender, EventArgs e)
	{
		UserName = ((ITextControl)sender).Text;
	}

	private void Password_TextChanged(object sender, EventArgs e)
	{
		_password = ((ITextControl)sender).Text;
	}

	private void RememberMe_CheckedChanged(object sender, EventArgs e)
	{
		RememberMeSet = ((ICheckBoxControl)sender).Checked;
	}
}
