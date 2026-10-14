using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Drawing;
using System.Net.Mail;
using System.Security.Permissions;
using System.Web.Security;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.PasswordRecoveryDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[Bindable(false)]
[DefaultEvent("SendingMail")]
public class PasswordRecovery : CompositeControl, IRenderOuterTable
{
	private abstract class BasePasswordRecoveryContainer : Control, INamingContainer
	{
		protected readonly PasswordRecovery _owner;

		private bool renderOuterTable;

		private Table _table;

		private TableCell _containerCell;

		public BasePasswordRecoveryContainer(PasswordRecovery owner)
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
			string iD = _owner.ID;
			if (!string.IsNullOrEmpty(iD))
			{
				_table.Attributes.Add("id", iD);
			}
			_table.CellSpacing = 0;
			_table.CellPadding = _owner.BorderPadding;
			_containerCell = new TableCell();
			TableRow tableRow = new TableRow();
			tableRow.Cells.Add(_containerCell);
			_table.Rows.Add(tableRow);
			Controls.AddAt(0, _table);
		}

		protected internal override void OnPreRender(EventArgs e)
		{
			if (_table != null)
			{
				_table.ApplyStyle(_owner.ControlStyle);
			}
			base.OnPreRender(e);
		}

		public abstract void UpdateChildControls();
	}

	private sealed class QuestionContainer : BasePasswordRecoveryContainer
	{
		public IEditableTextControl AnswerTextBox => (FindControl("Answer") ?? throw new HttpException("QuestionTemplate does not contain an IEditableTextControl with ID Answer for the username.")) as IEditableTextControl;

		public Literal UserNameLiteral => FindControl("UserName") as Literal;

		public Literal QuestionLiteral => FindControl("Question") as Literal;

		public Literal FailureTextLiteral => FindControl("FailureText") as Literal;

		public QuestionContainer(PasswordRecovery owner)
			: base(owner)
		{
		}

		public override void UpdateChildControls()
		{
			if (UserNameLiteral != null)
			{
				UserNameLiteral.Text = _owner.UserName;
			}
			if (QuestionLiteral != null)
			{
				QuestionLiteral.Text = _owner.Question;
			}
		}
	}

	private sealed class SuccessContainer : BasePasswordRecoveryContainer
	{
		public SuccessContainer(PasswordRecovery owner)
			: base(owner)
		{
		}

		public override void UpdateChildControls()
		{
		}
	}

	private sealed class UserNameContainer : BasePasswordRecoveryContainer
	{
		public IEditableTextControl UserNameTextBox => (FindControl("UserName") ?? throw new HttpException("UserNameTemplate does not contain an IEditableTextControl with ID UserName for the username.")) as IEditableTextControl;

		public ITextControl FailureTextLiteral => FindControl("FailureText") as ITextControl;

		public UserNameContainer(PasswordRecovery owner)
			: base(owner)
		{
		}

		public override void UpdateChildControls()
		{
		}
	}

	private class TemplateUtils
	{
		public static TableRow CreateRow(Control c1, Control c2, Style s1, Style s2, bool twoCells)
		{
			TableRow tableRow = new TableRow();
			TableCell tableCell = new TableCell();
			tableCell.Controls.Add(c1);
			if (s1 != null)
			{
				tableCell.ApplyStyle(s1);
			}
			tableRow.Cells.Add(tableCell);
			if (c2 != null)
			{
				TableCell tableCell2 = new TableCell();
				tableCell2.Controls.Add(c2);
				if (s2 != null)
				{
					tableCell2.ApplyStyle(s2);
				}
				tableRow.Cells.Add(tableCell2);
				tableCell.HorizontalAlign = HorizontalAlign.Right;
				tableCell2.HorizontalAlign = HorizontalAlign.Left;
			}
			else
			{
				tableCell.HorizontalAlign = HorizontalAlign.Center;
				if (twoCells)
				{
					tableCell.ColumnSpan = 2;
				}
			}
			return tableRow;
		}

		public static TableRow CreateHelpRow(string pageUrl, string linkText, string linkIcon, Style linkStyle, bool twoCells)
		{
			TableRow tableRow = new TableRow();
			TableCell tableCell = new TableCell();
			if (linkIcon.Length > 0)
			{
				Image child = new Image
				{
					ImageUrl = linkIcon
				};
				tableCell.Controls.Add(child);
			}
			if (linkText.Length > 0)
			{
				HyperLink hyperLink = new HyperLink();
				hyperLink.NavigateUrl = pageUrl;
				hyperLink.Text = linkText;
				hyperLink.ControlStyle.CopyTextStylesFrom(linkStyle);
				tableCell.Controls.Add(hyperLink);
			}
			if (twoCells)
			{
				tableCell.ColumnSpan = 2;
			}
			tableRow.ControlStyle.CopyFrom(linkStyle);
			tableRow.Cells.Add(tableCell);
			return tableRow;
		}
	}

	private sealed class UserNameDefaultTemplate : ITemplate
	{
		private readonly PasswordRecovery _owner;

		public UserNameDefaultTemplate(PasswordRecovery _owner)
		{
			this._owner = _owner;
		}

		public void InstantiateIn(Control container)
		{
			Table table = new Table();
			table.CellPadding = 0;
			bool flag = _owner.TextLayout == LoginTextLayout.TextOnLeft;
			table.Rows.Add(TemplateUtils.CreateRow(new LiteralControl(_owner.UserNameTitleText), null, _owner.TitleTextStyle, null, flag));
			table.Rows.Add(TemplateUtils.CreateRow(new LiteralControl(_owner.UserNameInstructionText), null, _owner.InstructionTextStyle, null, flag));
			TextBox textBox = new TextBox();
			textBox.ID = "UserName";
			textBox.Text = _owner.UserName;
			textBox.ApplyStyle(_owner.TextBoxStyle);
			Label label = new Label();
			label.ID = "UserNameLabel";
			label.AssociatedControlID = "UserName";
			label.Text = _owner.UserNameLabelText;
			label.ApplyStyle(_owner.LabelStyle);
			RequiredFieldValidator requiredFieldValidator = new RequiredFieldValidator();
			requiredFieldValidator.ID = "UserNameRequired";
			requiredFieldValidator.ControlToValidate = "UserName";
			requiredFieldValidator.ErrorMessage = _owner.UserNameRequiredErrorMessage;
			requiredFieldValidator.ToolTip = _owner.UserNameRequiredErrorMessage;
			requiredFieldValidator.Text = "*";
			requiredFieldValidator.ValidationGroup = _owner.ID;
			requiredFieldValidator.ApplyStyle(_owner.ValidatorTextStyle);
			if (flag)
			{
				TableRow tableRow = TemplateUtils.CreateRow(label, textBox, null, null, flag);
				tableRow.Cells[1].Controls.Add(requiredFieldValidator);
				table.Rows.Add(tableRow);
			}
			else
			{
				table.Rows.Add(TemplateUtils.CreateRow(label, null, null, null, flag));
				TableRow tableRow2 = TemplateUtils.CreateRow(textBox, null, null, null, flag);
				tableRow2.Cells[0].Controls.Add(requiredFieldValidator);
				table.Rows.Add(tableRow2);
			}
			Literal literal = new Literal();
			literal.ID = "FailureText";
			if (_owner.FailureTextStyle.ForeColor.IsEmpty)
			{
				_owner.FailureTextStyle.ForeColor = Color.Red;
			}
			table.Rows.Add(TemplateUtils.CreateRow(literal, null, _owner.FailureTextStyle, null, flag));
			WebControl webControl = null;
			switch (_owner.SubmitButtonType)
			{
			case ButtonType.Button:
				webControl = new Button();
				break;
			case ButtonType.Image:
				webControl = new ImageButton();
				break;
			case ButtonType.Link:
				webControl = new LinkButton();
				break;
			}
			webControl.ID = "SubmitButton";
			webControl.ApplyStyle(_owner.SubmitButtonStyle);
			((IButtonControl)webControl).CommandName = SubmitButtonCommandName;
			((IButtonControl)webControl).Text = _owner.SubmitButtonText;
			((IButtonControl)webControl).ValidationGroup = _owner.ID;
			TableRow tableRow3 = TemplateUtils.CreateRow(webControl, null, null, null, flag);
			tableRow3.Cells[0].HorizontalAlign = HorizontalAlign.Right;
			table.Rows.Add(tableRow3);
			table.Rows.Add(TemplateUtils.CreateHelpRow(_owner.HelpPageUrl, _owner.HelpPageText, _owner.HelpPageIconUrl, _owner.HyperLinkStyle, flag));
			container.Controls.Add(table);
		}
	}

	private sealed class QuestionDefaultTemplate : ITemplate
	{
		private readonly PasswordRecovery _owner;

		public QuestionDefaultTemplate(PasswordRecovery _owner)
		{
			this._owner = _owner;
		}

		public void InstantiateIn(Control container)
		{
			Table table = new Table();
			table.CellPadding = 0;
			bool flag = _owner.TextLayout == LoginTextLayout.TextOnLeft;
			table.Rows.Add(TemplateUtils.CreateRow(new LiteralControl(_owner.QuestionTitleText), null, _owner.TitleTextStyle, null, flag));
			table.Rows.Add(TemplateUtils.CreateRow(new LiteralControl(_owner.QuestionInstructionText), null, _owner.InstructionTextStyle, null, flag));
			Literal literal = new Literal();
			literal.ID = "UserName";
			table.Rows.Add(TemplateUtils.CreateRow(new LiteralControl(_owner.UserNameLabelText), literal, _owner.LabelStyle, _owner.LabelStyle, flag));
			Literal literal2 = new Literal();
			literal2.ID = "Question";
			table.Rows.Add(TemplateUtils.CreateRow(new LiteralControl(_owner.QuestionLabelText), literal2, _owner.LabelStyle, _owner.LabelStyle, flag));
			TextBox textBox = new TextBox();
			textBox.ID = "Answer";
			textBox.ApplyStyle(_owner.TextBoxStyle);
			Label label = new Label();
			label.ID = "AnswerLabel";
			label.AssociatedControlID = "Answer";
			label.Text = _owner.AnswerLabelText;
			label.ApplyStyle(_owner.LabelStyle);
			RequiredFieldValidator requiredFieldValidator = new RequiredFieldValidator();
			requiredFieldValidator.ID = "AnswerRequired";
			requiredFieldValidator.ControlToValidate = "Answer";
			requiredFieldValidator.ErrorMessage = _owner.AnswerRequiredErrorMessage;
			requiredFieldValidator.ToolTip = _owner.AnswerRequiredErrorMessage;
			requiredFieldValidator.Text = "*";
			requiredFieldValidator.ValidationGroup = _owner.ID;
			requiredFieldValidator.ApplyStyle(_owner.ValidatorTextStyle);
			if (flag)
			{
				TableRow tableRow = TemplateUtils.CreateRow(label, textBox, null, null, flag);
				tableRow.Cells[1].Controls.Add(requiredFieldValidator);
				table.Rows.Add(tableRow);
			}
			else
			{
				table.Rows.Add(TemplateUtils.CreateRow(label, null, null, null, flag));
				TableRow tableRow2 = TemplateUtils.CreateRow(textBox, null, null, null, flag);
				tableRow2.Cells[0].Controls.Add(requiredFieldValidator);
				table.Rows.Add(tableRow2);
			}
			Literal literal3 = new Literal();
			literal3.ID = "FailureText";
			if (_owner.FailureTextStyle.ForeColor.IsEmpty)
			{
				_owner.FailureTextStyle.ForeColor = Color.Red;
			}
			table.Rows.Add(TemplateUtils.CreateRow(literal3, null, _owner.FailureTextStyle, null, flag));
			WebControl webControl = null;
			switch (_owner.SubmitButtonType)
			{
			case ButtonType.Button:
				webControl = new Button();
				break;
			case ButtonType.Image:
				webControl = new ImageButton();
				break;
			case ButtonType.Link:
				webControl = new LinkButton();
				break;
			}
			webControl.ID = "SubmitButton";
			webControl.ApplyStyle(_owner.SubmitButtonStyle);
			((IButtonControl)webControl).CommandName = SubmitButtonCommandName;
			((IButtonControl)webControl).Text = _owner.SubmitButtonText;
			((IButtonControl)webControl).ValidationGroup = _owner.ID;
			TableRow tableRow3 = TemplateUtils.CreateRow(webControl, null, null, null, flag);
			tableRow3.Cells[0].HorizontalAlign = HorizontalAlign.Right;
			table.Rows.Add(tableRow3);
			table.Rows.Add(TemplateUtils.CreateHelpRow(_owner.HelpPageUrl, _owner.HelpPageText, _owner.HelpPageIconUrl, _owner.HyperLinkStyle, flag));
			container.Controls.Add(table);
		}
	}

	private sealed class SuccessDefaultTemplate : ITemplate
	{
		private readonly PasswordRecovery _owner;

		public SuccessDefaultTemplate(PasswordRecovery _owner)
		{
			this._owner = _owner;
		}

		public void InstantiateIn(Control container)
		{
			Table table = new Table();
			table.CellPadding = 0;
			bool twoCells = _owner.TextLayout == LoginTextLayout.TextOnLeft;
			table.Rows.Add(TemplateUtils.CreateRow(new LiteralControl(_owner.SuccessText), null, _owner.SuccessTextStyle, null, twoCells));
			container.Controls.Add(table);
		}
	}

	private enum PasswordReciveryStep
	{
		StepUserName,
		StepAnswer,
		StepSuccess
	}

	private static readonly object answerLookupErrorEvent = new object();

	private static readonly object sendingMailEvent = new object();

	private static readonly object sendMailErrorEvent = new object();

	private static readonly object userLookupErrorEvent = new object();

	private static readonly object verifyingAnswerEvent = new object();

	private static readonly object verifyingUserEvent = new object();

	public static readonly string SubmitButtonCommandName = "Submit";

	private bool renderOuterTable = true;

	private TableItemStyle _failureTextStyle;

	private TableItemStyle _hyperLinkStyle;

	private TableItemStyle _instructionTextStyle;

	private TableItemStyle _labelStyle;

	private Style _submitButtonStyle;

	private TableItemStyle _successTextStyle;

	private Style _textBoxStyle;

	private TableItemStyle _titleTextStyle;

	private Style _validatorTextStyle;

	private MailDefinition _mailDefinition;

	private MembershipProvider _provider;

	private ITemplate _questionTemplate;

	private ITemplate _successTemplate;

	private ITemplate _userNameTemplate;

	private QuestionContainer _questionTemplateContainer;

	private SuccessContainer _successTemplateContainer;

	private UserNameContainer _userNameTemplateContainer;

	private PasswordReciveryStep _currentStep;

	private string _username;

	private string _answer;

	private EventHandlerList events = new EventHandlerList();

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Themeable(false)]
	[Browsable(false)]
	[Filterable(false)]
	public virtual string Answer
	{
		get
		{
			if (_answer == null)
			{
				return string.Empty;
			}
			return _answer;
		}
	}

	[Localizable(true)]
	public virtual string AnswerLabelText
	{
		get
		{
			return ViewState.GetString("AnswerLabelText", "Answer:");
		}
		set
		{
			ViewState["AnswerLabelText"] = value;
		}
	}

	[Localizable(true)]
	public virtual string AnswerRequiredErrorMessage
	{
		get
		{
			return ViewState.GetString("AnswerRequiredErrorMessage", "Answer is required.");
		}
		set
		{
			ViewState["AnswerRequiredErrorMessage"] = value;
		}
	}

	[DefaultValue(1)]
	public virtual int BorderPadding
	{
		get
		{
			return ViewState.GetInt("BorderPadding", 1);
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentOutOfRangeException();
			}
			ViewState["BorderPadding"] = value;
		}
	}

	[Localizable(true)]
	public virtual string GeneralFailureText
	{
		get
		{
			return ViewState.GetString("GeneralFailureText", "Your attempt to retrieve your password was not successful. Please try again.");
		}
		set
		{
			ViewState["GeneralFailureText"] = value;
		}
	}

	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[DefaultValue("")]
	public virtual string HelpPageIconUrl
	{
		get
		{
			return ViewState.GetString("HelpPageIconUrl", string.Empty);
		}
		set
		{
			ViewState["HelpPageIconUrl"] = value;
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	public virtual string HelpPageText
	{
		get
		{
			return ViewState.GetString("HelpPageText", string.Empty);
		}
		set
		{
			ViewState["HelpPageText"] = value;
		}
	}

	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[DefaultValue("")]
	public virtual string HelpPageUrl
	{
		get
		{
			return ViewState.GetString("HelpPageUrl", string.Empty);
		}
		set
		{
			ViewState["HelpPageUrl"] = value;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Themeable(false)]
	[NotifyParentProperty(true)]
	public MailDefinition MailDefinition
	{
		get
		{
			if (_mailDefinition == null)
			{
				_mailDefinition = new MailDefinition();
				if (IsTrackingViewState)
				{
					((IStateManager)_mailDefinition).TrackViewState();
				}
			}
			return _mailDefinition;
		}
	}

	[DefaultValue("")]
	[Themeable(false)]
	public virtual string MembershipProvider
	{
		get
		{
			return ViewState.GetString("MembershipProvider", string.Empty);
		}
		set
		{
			ViewState["MembershipProvider"] = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Themeable(false)]
	[Filterable(false)]
	public virtual string Question
	{
		get
		{
			return ViewState.GetString("Question", "");
		}
		private set
		{
			ViewState["Question"] = value;
		}
	}

	[Localizable(true)]
	public virtual string QuestionFailureText
	{
		get
		{
			return ViewState.GetString("QuestionFailureText", "Your answer could not be verified. Please try again.");
		}
		set
		{
			ViewState["QuestionFailureText"] = value;
		}
	}

	[Localizable(true)]
	public virtual string QuestionInstructionText
	{
		get
		{
			return ViewState.GetString("QuestionInstructionText", "Answer the following question to receive your password.");
		}
		set
		{
			ViewState["QuestionInstructionText"] = value;
		}
	}

	[Localizable(true)]
	public virtual string QuestionLabelText
	{
		get
		{
			return ViewState.GetString("QuestionLabelText", "Question:");
		}
		set
		{
			ViewState["QuestionLabelText"] = value;
		}
	}

	[Localizable(true)]
	public virtual string QuestionTitleText
	{
		get
		{
			return ViewState.GetString("QuestionTitleText", "Identity Confirmation");
		}
		set
		{
			ViewState["QuestionTitleText"] = value;
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

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string SubmitButtonImageUrl
	{
		get
		{
			return ViewState.GetString("SubmitButtonImageUrl", string.Empty);
		}
		set
		{
			ViewState["SubmitButtonImageUrl"] = value;
		}
	}

	[Localizable(true)]
	public virtual string SubmitButtonText
	{
		get
		{
			return ViewState.GetString("SubmitButtonText", "Submit");
		}
		set
		{
			ViewState["SubmitButtonText"] = value;
		}
	}

	[DefaultValue(ButtonType.Button)]
	public virtual ButtonType SubmitButtonType
	{
		get
		{
			object obj = ViewState["SubmitButtonType"];
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
				throw new ArgumentOutOfRangeException("SubmitButtonType");
			}
			ViewState["SubmitButtonType"] = (int)value;
		}
	}

	[Themeable(false)]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[DefaultValue("")]
	public virtual string SuccessPageUrl
	{
		get
		{
			return ViewState.GetString("SuccessPageUrl", string.Empty);
		}
		set
		{
			ViewState["SuccessPageUrl"] = value;
		}
	}

	[Localizable(true)]
	public virtual string SuccessText
	{
		get
		{
			return ViewState.GetString("SuccessText", "Your password has been sent to you.");
		}
		set
		{
			ViewState["SuccessText"] = value;
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

	[DefaultValue("")]
	[Localizable(true)]
	public virtual string UserName
	{
		get
		{
			if (_username == null)
			{
				return string.Empty;
			}
			return _username;
		}
		set
		{
			_username = value;
		}
	}

	[Localizable(true)]
	public virtual string UserNameFailureText
	{
		get
		{
			return ViewState.GetString("UserNameFailureText", "We were unable to access your information. Please try again.");
		}
		set
		{
			ViewState["UserNameFailureText"] = value;
		}
	}

	[Localizable(true)]
	public virtual string UserNameInstructionText
	{
		get
		{
			return ViewState.GetString("UserNameInstructionText", "Enter your User Name to receive your password.");
		}
		set
		{
			ViewState["UserNameInstructionText"] = value;
		}
	}

	[Localizable(true)]
	public virtual string UserNameLabelText
	{
		get
		{
			return ViewState.GetString("UserNameLabelText", "User Name:");
		}
		set
		{
			ViewState["UserNameLabelText"] = value;
		}
	}

	[Localizable(true)]
	public virtual string UserNameRequiredErrorMessage
	{
		get
		{
			return ViewState.GetString("UserNameRequiredErrorMessage", "User Name is required.");
		}
		set
		{
			ViewState["UserNameRequiredErrorMessage"] = value;
		}
	}

	[Localizable(true)]
	public virtual string UserNameTitleText
	{
		get
		{
			return ViewState.GetString("UserNameTitleText", "Forgot Your Password?");
		}
		set
		{
			ViewState["UserNameTitleText"] = value;
		}
	}

	[TemplateContainer(typeof(PasswordRecovery))]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	public virtual ITemplate QuestionTemplate
	{
		get
		{
			return _questionTemplate;
		}
		set
		{
			_questionTemplate = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Control QuestionTemplateContainer
	{
		get
		{
			if (_questionTemplateContainer == null)
			{
				_questionTemplateContainer = new QuestionContainer(this);
				ITemplate questionTemplate = QuestionTemplate;
				if (questionTemplate != null)
				{
					_questionTemplateContainer.InstantiateTemplate(questionTemplate);
				}
			}
			return _questionTemplateContainer;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	[TemplateContainer(typeof(PasswordRecovery))]
	public virtual ITemplate SuccessTemplate
	{
		get
		{
			return _successTemplate;
		}
		set
		{
			_successTemplate = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Control SuccessTemplateContainer
	{
		get
		{
			if (_successTemplateContainer == null)
			{
				_successTemplateContainer = new SuccessContainer(this);
				ITemplate successTemplate = SuccessTemplate;
				if (successTemplate != null)
				{
					_successTemplateContainer.InstantiateTemplate(successTemplate);
				}
			}
			return _successTemplateContainer;
		}
	}

	[TemplateContainer(typeof(PasswordRecovery))]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Browsable(false)]
	public virtual ITemplate UserNameTemplate
	{
		get
		{
			return _userNameTemplate;
		}
		set
		{
			_userNameTemplate = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Control UserNameTemplateContainer
	{
		get
		{
			if (_userNameTemplateContainer == null)
			{
				_userNameTemplateContainer = new UserNameContainer(this);
				ITemplate userNameTemplate = UserNameTemplate;
				if (userNameTemplate != null)
				{
					_userNameTemplateContainer.InstantiateTemplate(userNameTemplate);
				}
			}
			return _userNameTemplateContainer;
		}
	}

	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TableItemStyle FailureTextStyle
	{
		get
		{
			if (_failureTextStyle == null)
			{
				_failureTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					_failureTextStyle.TrackViewState();
				}
			}
			return _failureTextStyle;
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public TableItemStyle HyperLinkStyle
	{
		get
		{
			if (_hyperLinkStyle == null)
			{
				_hyperLinkStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					_hyperLinkStyle.TrackViewState();
				}
			}
			return _hyperLinkStyle;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public TableItemStyle InstructionTextStyle
	{
		get
		{
			if (_instructionTextStyle == null)
			{
				_instructionTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					_instructionTextStyle.TrackViewState();
				}
			}
			return _instructionTextStyle;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	[NotifyParentProperty(true)]
	public TableItemStyle LabelStyle
	{
		get
		{
			if (_labelStyle == null)
			{
				_labelStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					_labelStyle.TrackViewState();
				}
			}
			return _labelStyle;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public Style SubmitButtonStyle
	{
		get
		{
			if (_submitButtonStyle == null)
			{
				_submitButtonStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					_submitButtonStyle.TrackViewState();
				}
			}
			return _submitButtonStyle;
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	public TableItemStyle SuccessTextStyle
	{
		get
		{
			if (_successTextStyle == null)
			{
				_successTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					_successTextStyle.TrackViewState();
				}
			}
			return _successTextStyle;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public Style TextBoxStyle
	{
		get
		{
			if (_textBoxStyle == null)
			{
				_textBoxStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					_textBoxStyle.TrackViewState();
				}
			}
			return _textBoxStyle;
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	public TableItemStyle TitleTextStyle
	{
		get
		{
			if (_titleTextStyle == null)
			{
				_titleTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					_titleTextStyle.TrackViewState();
				}
			}
			return _titleTextStyle;
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	public Style ValidatorTextStyle
	{
		get
		{
			if (_validatorTextStyle == null)
			{
				_validatorTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					_validatorTextStyle.TrackViewState();
				}
			}
			return _validatorTextStyle;
		}
	}

	protected override HtmlTextWriterTag TagKey => HtmlTextWriterTag.Table;

	internal virtual MembershipProvider MembershipProviderInternal
	{
		get
		{
			if (_provider == null)
			{
				InitMemberShipProvider();
			}
			return _provider;
		}
	}

	public event EventHandler AnswerLookupError
	{
		add
		{
			events.AddHandler(answerLookupErrorEvent, value);
		}
		remove
		{
			events.RemoveHandler(answerLookupErrorEvent, value);
		}
	}

	public event MailMessageEventHandler SendingMail
	{
		add
		{
			events.AddHandler(sendingMailEvent, value);
		}
		remove
		{
			events.RemoveHandler(sendingMailEvent, value);
		}
	}

	public event SendMailErrorEventHandler SendMailError
	{
		add
		{
			events.AddHandler(sendMailErrorEvent, value);
		}
		remove
		{
			events.RemoveHandler(sendMailErrorEvent, value);
		}
	}

	public event EventHandler UserLookupError
	{
		add
		{
			events.AddHandler(userLookupErrorEvent, value);
		}
		remove
		{
			events.RemoveHandler(userLookupErrorEvent, value);
		}
	}

	public event LoginCancelEventHandler VerifyingAnswer
	{
		add
		{
			events.AddHandler(verifyingAnswerEvent, value);
		}
		remove
		{
			events.RemoveHandler(verifyingAnswerEvent, value);
		}
	}

	public event LoginCancelEventHandler VerifyingUser
	{
		add
		{
			events.AddHandler(verifyingUserEvent, value);
		}
		remove
		{
			events.RemoveHandler(verifyingUserEvent, value);
		}
	}

	protected internal override void CreateChildControls()
	{
		ITemplate userNameTemplate = UserNameTemplate;
		if (userNameTemplate == null)
		{
			userNameTemplate = new UserNameDefaultTemplate(this);
			((UserNameContainer)UserNameTemplateContainer).InstantiateTemplate(userNameTemplate);
		}
		ITemplate questionTemplate = QuestionTemplate;
		if (questionTemplate == null)
		{
			questionTemplate = new QuestionDefaultTemplate(this);
			((QuestionContainer)QuestionTemplateContainer).InstantiateTemplate(questionTemplate);
		}
		ITemplate successTemplate = SuccessTemplate;
		if (successTemplate == null)
		{
			successTemplate = new SuccessDefaultTemplate(this);
			((SuccessContainer)SuccessTemplateContainer).InstantiateTemplate(successTemplate);
		}
		Controls.AddAt(0, UserNameTemplateContainer);
		Controls.AddAt(1, QuestionTemplateContainer);
		Controls.AddAt(2, SuccessTemplateContainer);
		IEditableTextControl userNameTextBox = ((UserNameContainer)UserNameTemplateContainer).UserNameTextBox;
		if (userNameTextBox != null)
		{
			userNameTextBox.TextChanged += UserName_TextChanged;
		}
		userNameTextBox = ((QuestionContainer)QuestionTemplateContainer).AnswerTextBox;
		if (userNameTextBox != null)
		{
			userNameTextBox.TextChanged += Answer_TextChanged;
		}
	}

	protected internal override void Render(HtmlTextWriter writer)
	{
		((QuestionContainer)QuestionTemplateContainer).UpdateChildControls();
		for (int i = 0; i < Controls.Count; i++)
		{
			if (Controls[i].Visible)
			{
				Controls[i].Render(writer);
			}
		}
	}

	protected internal override void LoadControlState(object savedState)
	{
		if (savedState != null)
		{
			object[] array = (object[])savedState;
			base.LoadControlState(array[0]);
			_currentStep = (PasswordReciveryStep)array[1];
			_username = (string)array[2];
		}
	}

	protected internal override object SaveControlState()
	{
		object obj = base.SaveControlState();
		return new object[3] { obj, _currentStep, _username };
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		if (_failureTextStyle != null)
		{
			_failureTextStyle.TrackViewState();
		}
		if (_hyperLinkStyle != null)
		{
			_hyperLinkStyle.TrackViewState();
		}
		if (_instructionTextStyle != null)
		{
			_instructionTextStyle.TrackViewState();
		}
		if (_labelStyle != null)
		{
			_labelStyle.TrackViewState();
		}
		if (_submitButtonStyle != null)
		{
			_submitButtonStyle.TrackViewState();
		}
		if (_successTextStyle != null)
		{
			_successTextStyle.TrackViewState();
		}
		if (_textBoxStyle != null)
		{
			_textBoxStyle.TrackViewState();
		}
		if (_titleTextStyle != null)
		{
			_titleTextStyle.TrackViewState();
		}
		if (_validatorTextStyle != null)
		{
			_validatorTextStyle.TrackViewState();
		}
		if (_mailDefinition != null)
		{
			((IStateManager)_mailDefinition).TrackViewState();
		}
	}

	protected override void LoadViewState(object savedState)
	{
		if (savedState != null)
		{
			object[] array = (object[])savedState;
			base.LoadViewState(array[0]);
			if (array[1] != null)
			{
				FailureTextStyle.LoadViewState(array[1]);
			}
			if (array[2] != null)
			{
				HyperLinkStyle.LoadViewState(array[2]);
			}
			if (array[3] != null)
			{
				InstructionTextStyle.LoadViewState(array[3]);
			}
			if (array[4] != null)
			{
				LabelStyle.LoadViewState(array[4]);
			}
			if (array[5] != null)
			{
				SubmitButtonStyle.LoadViewState(array[5]);
			}
			if (array[6] != null)
			{
				SuccessTextStyle.LoadViewState(array[6]);
			}
			if (array[7] != null)
			{
				TextBoxStyle.LoadViewState(array[7]);
			}
			if (array[8] != null)
			{
				TitleTextStyle.LoadViewState(array[8]);
			}
			if (array[9] != null)
			{
				ValidatorTextStyle.LoadViewState(array[9]);
			}
			if (array[10] != null)
			{
				((IStateManager)MailDefinition).LoadViewState(array[10]);
			}
		}
	}

	protected override object SaveViewState()
	{
		object[] array = new object[11]
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
			null,
			null
		};
		if (_failureTextStyle != null)
		{
			array[1] = _failureTextStyle.SaveViewState();
		}
		if (_hyperLinkStyle != null)
		{
			array[2] = _hyperLinkStyle.SaveViewState();
		}
		if (_instructionTextStyle != null)
		{
			array[3] = _instructionTextStyle.SaveViewState();
		}
		if (_labelStyle != null)
		{
			array[4] = _labelStyle.SaveViewState();
		}
		if (_submitButtonStyle != null)
		{
			array[5] = _submitButtonStyle.SaveViewState();
		}
		if (_successTextStyle != null)
		{
			array[6] = _successTextStyle.SaveViewState();
		}
		if (_textBoxStyle != null)
		{
			array[7] = _textBoxStyle.SaveViewState();
		}
		if (_titleTextStyle != null)
		{
			array[8] = _titleTextStyle.SaveViewState();
		}
		if (_validatorTextStyle != null)
		{
			array[9] = _validatorTextStyle.SaveViewState();
		}
		if (_mailDefinition != null)
		{
			array[10] = ((IStateManager)_mailDefinition).SaveViewState();
		}
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] != null)
			{
				return array;
			}
		}
		return null;
	}

	private void ProcessCommand(CommandEventArgs args)
	{
		if (Page.IsValid)
		{
			switch (_currentStep)
			{
			case PasswordReciveryStep.StepUserName:
				ProcessUserName();
				break;
			case PasswordReciveryStep.StepAnswer:
				ProcessUserAnswer();
				break;
			}
		}
	}

	private void ProcessUserName()
	{
		LoginCancelEventArgs e = new LoginCancelEventArgs();
		OnVerifyingUser(e);
		if (!e.Cancel)
		{
			MembershipUser user = MembershipProviderInternal.GetUser(UserName, userIsOnline: false);
			if (user == null)
			{
				OnUserLookupError(EventArgs.Empty);
				((UserNameContainer)UserNameTemplateContainer).FailureTextLiteral.Text = UserNameFailureText;
			}
			else if (!MembershipProviderInternal.RequiresQuestionAndAnswer)
			{
				GenerateAndSendEmail();
				_currentStep = PasswordReciveryStep.StepSuccess;
			}
			else
			{
				Question = user.PasswordQuestion;
				_currentStep = PasswordReciveryStep.StepAnswer;
			}
		}
	}

	private void ProcessUserAnswer()
	{
		LoginCancelEventArgs e = new LoginCancelEventArgs();
		OnVerifyingAnswer(e);
		if (!e.Cancel)
		{
			MembershipUser user = MembershipProviderInternal.GetUser(UserName, userIsOnline: false);
			if (user == null || string.IsNullOrEmpty(user.Email))
			{
				((QuestionContainer)QuestionTemplateContainer).FailureTextLiteral.Text = GeneralFailureText;
				return;
			}
			GenerateAndSendEmail();
			_currentStep = PasswordReciveryStep.StepSuccess;
		}
	}

	private void GenerateAndSendEmail()
	{
		string text = "";
		try
		{
			if (MembershipProviderInternal.EnablePasswordRetrieval)
			{
				text = MembershipProviderInternal.GetPassword(UserName, Answer);
			}
			else
			{
				if (!MembershipProviderInternal.EnablePasswordReset)
				{
					throw new HttpException("Membership provider does not support password retrieval or reset.");
				}
				text = MembershipProviderInternal.ResetPassword(UserName, Answer);
			}
		}
		catch (MembershipPasswordException)
		{
			OnAnswerLookupError(EventArgs.Empty);
			((QuestionContainer)QuestionTemplateContainer).FailureTextLiteral.Text = QuestionFailureText;
			return;
		}
		SendPasswordByMail(UserName, text);
	}

	private void InitMemberShipProvider()
	{
		string membershipProvider = MembershipProvider;
		_provider = ((membershipProvider.Length == 0) ? (_provider = Membership.Provider) : Membership.Providers[membershipProvider]);
		if (_provider == null)
		{
			throw new HttpException(Locale.GetText("No provider named '{0}' could be found.", membershipProvider));
		}
	}

	private void SendPasswordByMail(string username, string password)
	{
		MembershipUser user = MembershipProviderInternal.GetUser(UserName, userIsOnline: false);
		if (user == null)
		{
			return;
		}
		string body = "Please return to the site and log in using the following information.\nUser Name: <%USERNAME%>\nPassword: <%PASSWORD%>\n";
		ListDictionary listDictionary = new ListDictionary(StringComparer.OrdinalIgnoreCase);
		listDictionary.Add("<%USERNAME%>", username);
		listDictionary.Add("<% UserName %>", username);
		listDictionary.Add("<%PASSWORD%>", password);
		listDictionary.Add("<% Password %>", password);
		MailMessage mailMessage = null;
		mailMessage = ((MailDefinition.BodyFileName.Length != 0) ? MailDefinition.CreateMailMessage(user.Email, listDictionary, this) : MailDefinition.CreateMailMessage(user.Email, listDictionary, body, this));
		if (string.IsNullOrEmpty(mailMessage.Subject))
		{
			mailMessage.Subject = "Password";
		}
		MailMessageEventArgs e = new MailMessageEventArgs(mailMessage);
		OnSendingMail(e);
		SmtpClient smtpClient = new SmtpClient();
		try
		{
			smtpClient.Send(mailMessage);
		}
		catch (Exception ex)
		{
			SendMailErrorEventArgs e2 = new SendMailErrorEventArgs(ex);
			OnSendMailError(e2);
			if (!e2.Handled)
			{
				throw ex;
			}
		}
	}

	protected virtual void OnAnswerLookupError(EventArgs e)
	{
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		CommandEventArgs e2 = e as CommandEventArgs;
		if (e != null && e2.CommandName == SubmitButtonCommandName)
		{
			ProcessCommand(e2);
			return true;
		}
		return base.OnBubbleEvent(source, e);
	}

	protected internal override void OnInit(EventArgs e)
	{
		Page.RegisterRequiresControlState(this);
		base.OnInit(e);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		UserNameTemplateContainer.Visible = false;
		QuestionTemplateContainer.Visible = false;
		SuccessTemplateContainer.Visible = false;
		switch (_currentStep)
		{
		case PasswordReciveryStep.StepUserName:
			UserNameTemplateContainer.Visible = true;
			break;
		case PasswordReciveryStep.StepAnswer:
			QuestionTemplateContainer.Visible = true;
			break;
		case PasswordReciveryStep.StepSuccess:
			SuccessTemplateContainer.Visible = true;
			break;
		}
		base.OnPreRender(e);
	}

	protected virtual void OnSendingMail(MailMessageEventArgs e)
	{
		if (events[sendingMailEvent] is MailMessageEventHandler mailMessageEventHandler)
		{
			mailMessageEventHandler(this, e);
		}
	}

	protected virtual void OnSendMailError(SendMailErrorEventArgs e)
	{
		if (events[sendingMailEvent] is SendMailErrorEventHandler sendMailErrorEventHandler)
		{
			sendMailErrorEventHandler(this, e);
		}
	}

	protected virtual void OnUserLookupError(EventArgs e)
	{
		if (events[userLookupErrorEvent] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected virtual void OnVerifyingAnswer(LoginCancelEventArgs e)
	{
		if (events[verifyingAnswerEvent] is LoginCancelEventHandler loginCancelEventHandler)
		{
			loginCancelEventHandler(this, e);
		}
	}

	protected virtual void OnVerifyingUser(LoginCancelEventArgs e)
	{
		if (events[verifyingUserEvent] is LoginCancelEventHandler loginCancelEventHandler)
		{
			loginCancelEventHandler(this, e);
		}
	}

	private void UserName_TextChanged(object sender, EventArgs e)
	{
		UserName = ((ITextControl)sender).Text;
	}

	private void Answer_TextChanged(object sender, EventArgs e)
	{
		_answer = ((ITextControl)sender).Text;
	}

	[MonoTODO("Not implemented")]
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected override void SetDesignModeState(IDictionary data)
	{
		throw new NotImplementedException();
	}
}
