using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Net.Mail;
using System.Security.Permissions;
using System.Web.Security;

namespace System.Web.UI.WebControls;

[Designer("System.Web.UI.Design.WebControls.CreateUserWizardDesigner, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.ComponentModel.Design.IDesigner")]
[Bindable(false)]
[ToolboxData("   ")]
[DefaultEvent("CreatedUser")]
public class CreateUserWizard : Wizard
{
	private class SideBarLabelTemplate : ITemplate
	{
		private Wizard wizard;

		public SideBarLabelTemplate(Wizard wizard)
		{
			this.wizard = wizard;
		}

		public void InstantiateIn(Control control)
		{
			Label label = new Label();
			wizard.RegisterApplyStyle(label, wizard.SideBarButtonStyle);
			control.Controls.Add(label);
			control.DataBinding += Bound;
		}

		private void Bound(object s, EventArgs args)
		{
			if (DataBinder.GetDataItem(s) is WizardStepBase wizardStepBase)
			{
				Label label = (Label)((Control)s).Controls[0];
				label.ID = Wizard.SideBarButtonID;
				label.Text = wizardStepBase.Title;
			}
		}
	}

	private sealed class CreateUserNavigationContainer : DefaultNavigationContainer
	{
		private CreateUserWizard _createUserWizard;

		public CreateUserNavigationContainer(CreateUserWizard createUserWizard)
			: base(createUserWizard)
		{
			_createUserWizard = createUserWizard;
		}

		protected override void UpdateState()
		{
			int num = _createUserWizard.ActiveStepIndex - 1;
			if (num >= 0 && _createUserWizard.AllowNavigationToStep(num))
			{
				UpdateNavButtonState(Wizard.StepPreviousButtonID + Wizard.StepPreviousButtonType, Wizard.StepPreviousButtonText, Wizard.StepPreviousButtonImageUrl, Wizard.StepPreviousButtonStyle);
			}
			else
			{
				((Table)Controls[0]).Rows[0].Cells[0].Visible = false;
			}
			UpdateNavButtonState(Wizard.StepNextButtonID + _createUserWizard.CreateUserButtonType, _createUserWizard.CreateUserButtonText, _createUserWizard.CreateUserButtonImageUrl, _createUserWizard.CreateUserButtonStyle);
			if (Wizard.DisplayCancelButton)
			{
				UpdateNavButtonState(Wizard.CancelButtonID + Wizard.CancelButtonType, Wizard.CancelButtonText, Wizard.CancelButtonImageUrl, Wizard.CancelButtonStyle);
			}
			else
			{
				((Table)Controls[0]).Rows[0].Cells[2].Visible = false;
			}
		}
	}

	private sealed class CreateUserStepNavigationTemplate : ITemplate
	{
		private readonly CreateUserWizard _createUserWizard;

		public CreateUserStepNavigationTemplate(CreateUserWizard createUserWizard)
		{
			_createUserWizard = createUserWizard;
		}

		public void InstantiateIn(Control container)
		{
			Table table = new Table();
			table.CellPadding = 5;
			table.CellSpacing = 5;
			table.Width = Unit.Percentage(100.0);
			table.Height = Unit.Percentage(100.0);
			TableRow row = new TableRow();
			AddButtonCell(row, _createUserWizard.CreateButtonSet(Wizard.StepPreviousButtonID, Wizard.MovePreviousCommandName, causesValidation: false, _createUserWizard.ID));
			AddButtonCell(row, _createUserWizard.CreateButtonSet(Wizard.StepNextButtonID, Wizard.MoveNextCommandName, causesValidation: true, _createUserWizard.ID));
			AddButtonCell(row, _createUserWizard.CreateButtonSet(Wizard.CancelButtonID, Wizard.CancelCommandName, causesValidation: false, _createUserWizard.ID));
			table.Rows.Add(row);
			container.Controls.Add(table);
		}

		private void AddButtonCell(TableRow row, params Control[] controls)
		{
			TableCell tableCell = new TableCell();
			tableCell.HorizontalAlign = HorizontalAlign.Right;
			for (int i = 0; i < controls.Length; i++)
			{
				tableCell.Controls.Add(controls[i]);
			}
			row.Cells.Add(tableCell);
		}
	}

	private sealed class CreateUserStepContainer : DefaultContentContainer
	{
		private CreateUserWizard _createUserWizard;

		public Control UserNameTextBox => FindControl("UserName") ?? throw new HttpException("CreateUserWizardStep.ContentTemplate does not contain an IEditableTextControl with ID UserName for the username.");

		public Control PasswordTextBox => FindControl("Password") ?? throw new HttpException("CreateUserWizardStep.ContentTemplate does not contain an IEditableTextControl with ID Password for the new password, this is required if AutoGeneratePassword = true.");

		public Control ConfirmPasswordTextBox => FindControl("Password");

		public Control EmailTextBox => FindControl("Email") ?? throw new HttpException("CreateUserWizardStep.ContentTemplate does not contain an IEditableTextControl with ID Email for the e-mail, this is required if RequireEmail = true.");

		public Control QuestionTextBox => FindControl("Question") ?? throw new HttpException("CreateUserWizardStep.ContentTemplate does not contain an IEditableTextControl with ID Question for the security question, this is required if your membership provider requires a question and answer.");

		public Control AnswerTextBox => FindControl("Answer") ?? throw new HttpException("CreateUserWizardStep.ContentTemplate does not contain an IEditableTextControl with ID Answer for the security answer, this is required if your membership provider requires a question and answer.");

		public ITextControl ErrorMessageLabel => FindControl("ErrorMessage") as ITextControl;

		public CreateUserStepContainer(CreateUserWizard createUserWizard)
			: base(createUserWizard)
		{
			_createUserWizard = createUserWizard;
		}

		protected override void UpdateState()
		{
			if (string.IsNullOrEmpty(_createUserWizard.CreateUserStep.Title))
			{
				((Table)InnerCell.Controls[0]).Rows[0].Visible = false;
			}
			else
			{
				((Table)InnerCell.Controls[0]).Rows[0].Cells[0].Text = _createUserWizard.CreateUserStep.Title;
			}
			if (string.IsNullOrEmpty(_createUserWizard.InstructionText))
			{
				((Table)InnerCell.Controls[0]).Rows[1].Visible = false;
			}
			else
			{
				((Table)InnerCell.Controls[0]).Rows[1].Cells[0].Text = _createUserWizard.InstructionText;
			}
			((Label)((Table)InnerCell.Controls[0]).Rows[2].Cells[0].Controls[0]).Text = _createUserWizard.UserNameLabelText;
			RequiredFieldValidator requiredFieldValidator = (RequiredFieldValidator)FindControl("UserNameRequired");
			requiredFieldValidator.ErrorMessage = _createUserWizard.UserNameRequiredErrorMessage;
			requiredFieldValidator.ToolTip = _createUserWizard.UserNameRequiredErrorMessage;
			if (_createUserWizard.AutoGeneratePassword)
			{
				((Table)InnerCell.Controls[0]).Rows[3].Visible = false;
				((Table)InnerCell.Controls[0]).Rows[4].Visible = false;
				((Table)InnerCell.Controls[0]).Rows[5].Visible = false;
			}
			else
			{
				((Label)((Table)InnerCell.Controls[0]).Rows[3].Cells[0].Controls[0]).Text = _createUserWizard.PasswordLabelText;
				RequiredFieldValidator requiredFieldValidator2 = (RequiredFieldValidator)FindControl("PasswordRequired");
				requiredFieldValidator2.ErrorMessage = _createUserWizard.PasswordRequiredErrorMessage;
				requiredFieldValidator2.ToolTip = _createUserWizard.PasswordRequiredErrorMessage;
				if (string.IsNullOrEmpty(_createUserWizard.PasswordHintText))
				{
					((Table)InnerCell.Controls[0]).Rows[4].Visible = false;
				}
				else
				{
					((Table)InnerCell.Controls[0]).Rows[4].Cells[1].Text = _createUserWizard.PasswordHintText;
				}
				((Label)((Table)InnerCell.Controls[0]).Rows[5].Cells[0].Controls[0]).Text = _createUserWizard.ConfirmPasswordLabelText;
				RequiredFieldValidator requiredFieldValidator3 = (RequiredFieldValidator)FindControl("ConfirmPasswordRequired");
				requiredFieldValidator3.ErrorMessage = _createUserWizard.ConfirmPasswordRequiredErrorMessage;
				requiredFieldValidator3.ToolTip = _createUserWizard.ConfirmPasswordRequiredErrorMessage;
			}
			if (_createUserWizard.RequireEmail)
			{
				((Label)((Table)InnerCell.Controls[0]).Rows[6].Cells[0].Controls[0]).Text = _createUserWizard.EmailLabelText;
				RequiredFieldValidator requiredFieldValidator4 = (RequiredFieldValidator)FindControl("EmailRequired");
				requiredFieldValidator4.ErrorMessage = _createUserWizard.EmailRequiredErrorMessage;
				requiredFieldValidator4.ToolTip = _createUserWizard.EmailRequiredErrorMessage;
			}
			else
			{
				((Table)InnerCell.Controls[0]).Rows[6].Visible = false;
			}
			if (_createUserWizard.QuestionAndAnswerRequired)
			{
				((Label)((Table)InnerCell.Controls[0]).Rows[7].Cells[0].Controls[0]).Text = _createUserWizard.QuestionLabelText;
				RequiredFieldValidator requiredFieldValidator5 = (RequiredFieldValidator)FindControl("QuestionRequired");
				requiredFieldValidator5.ErrorMessage = _createUserWizard.QuestionRequiredErrorMessage;
				requiredFieldValidator5.ToolTip = _createUserWizard.QuestionRequiredErrorMessage;
				((Label)((Table)InnerCell.Controls[0]).Rows[8].Cells[0].Controls[0]).Text = _createUserWizard.AnswerLabelText;
				RequiredFieldValidator requiredFieldValidator6 = (RequiredFieldValidator)FindControl("AnswerRequired");
				requiredFieldValidator6.ErrorMessage = _createUserWizard.AnswerRequiredErrorMessage;
				requiredFieldValidator6.ToolTip = _createUserWizard.AnswerRequiredErrorMessage;
			}
			else
			{
				((Table)InnerCell.Controls[0]).Rows[7].Visible = false;
				((Table)InnerCell.Controls[0]).Rows[8].Visible = false;
			}
			if (_createUserWizard.AutoGeneratePassword)
			{
				((Table)InnerCell.Controls[0]).Rows[9].Visible = false;
			}
			else
			{
				((CompareValidator)FindControl("PasswordCompare")).ErrorMessage = _createUserWizard.ConfirmPasswordCompareErrorMessage;
			}
			if (_createUserWizard.AutoGeneratePassword || string.IsNullOrEmpty(_createUserWizard.PasswordRegularExpression))
			{
				((Table)InnerCell.Controls[0]).Rows[10].Visible = false;
			}
			else
			{
				RegularExpressionValidator regularExpressionValidator = (RegularExpressionValidator)FindControl("PasswordRegEx");
				regularExpressionValidator.ValidationExpression = _createUserWizard.PasswordRegularExpression;
				regularExpressionValidator.ErrorMessage = _createUserWizard.PasswordRegularExpressionErrorMessage;
			}
			if (!_createUserWizard.RequireEmail || string.IsNullOrEmpty(_createUserWizard.EmailRegularExpression))
			{
				((Table)InnerCell.Controls[0]).Rows[11].Visible = false;
			}
			else
			{
				RegularExpressionValidator regularExpressionValidator2 = (RegularExpressionValidator)FindControl("EmailRegEx");
				regularExpressionValidator2.ErrorMessage = _createUserWizard.EmailRegularExpressionErrorMessage;
				regularExpressionValidator2.ValidationExpression = _createUserWizard.EmailRegularExpression;
			}
			if (string.IsNullOrEmpty(ErrorMessageLabel.Text))
			{
				((Table)InnerCell.Controls[0]).Rows[12].Visible = false;
			}
			Image image = (Image)((Table)InnerCell.Controls[0]).Rows[13].Cells[0].Controls[0];
			if (string.IsNullOrEmpty(_createUserWizard.HelpPageIconUrl))
			{
				image.Visible = false;
			}
			else
			{
				image.ImageUrl = _createUserWizard.HelpPageIconUrl;
				image.AlternateText = _createUserWizard.HelpPageText;
			}
			HyperLink hyperLink = (HyperLink)((Table)InnerCell.Controls[0]).Rows[13].Cells[0].Controls[1];
			if (string.IsNullOrEmpty(_createUserWizard.HelpPageText))
			{
				hyperLink.Visible = false;
			}
			else
			{
				hyperLink.Text = _createUserWizard.HelpPageText;
				hyperLink.NavigateUrl = _createUserWizard.HelpPageUrl;
			}
			((Table)InnerCell.Controls[0]).Rows[13].Visible = image.Visible || hyperLink.Visible;
		}

		public void EnsureValidatorsState()
		{
			if (IsDefaultTemplate)
			{
				((RequiredFieldValidator)FindControl("PasswordRequired")).Enabled = !_createUserWizard.AutoGeneratePassword;
				((RequiredFieldValidator)FindControl("ConfirmPasswordRequired")).Enabled = !_createUserWizard.AutoGeneratePassword;
				((CompareValidator)FindControl("PasswordCompare")).Enabled = !_createUserWizard.AutoGeneratePassword;
				RegularExpressionValidator regularExpressionValidator = (RegularExpressionValidator)FindControl("PasswordRegEx");
				regularExpressionValidator.Enabled = !_createUserWizard.AutoGeneratePassword && !string.IsNullOrEmpty(_createUserWizard.PasswordRegularExpression);
				regularExpressionValidator.ValidationExpression = _createUserWizard.PasswordRegularExpression;
				((RequiredFieldValidator)FindControl("EmailRequired")).Enabled = _createUserWizard.RequireEmail;
				RegularExpressionValidator regularExpressionValidator2 = (RegularExpressionValidator)FindControl("EmailRegEx");
				regularExpressionValidator2.Enabled = _createUserWizard.RequireEmail && !string.IsNullOrEmpty(_createUserWizard.EmailRegularExpression);
				regularExpressionValidator2.ValidationExpression = _createUserWizard.EmailRegularExpression;
				((RequiredFieldValidator)FindControl("QuestionRequired")).Enabled = _createUserWizard.QuestionAndAnswerRequired;
				((RequiredFieldValidator)FindControl("AnswerRequired")).Enabled = _createUserWizard.QuestionAndAnswerRequired;
			}
		}
	}

	private sealed class CreateUserStepTemplate : ITemplate
	{
		private readonly CreateUserWizard _createUserWizard;

		public CreateUserStepTemplate(CreateUserWizard createUserWizard)
		{
			_createUserWizard = createUserWizard;
		}

		private TableRow CreateRow(Control c0, Control c1, Control c2, Style s0, Style s1)
		{
			TableRow tableRow = new TableRow();
			TableCell tableCell = new TableCell();
			TableCell tableCell2 = new TableCell();
			if (c0 != null)
			{
				tableCell.Controls.Add(c0);
			}
			tableRow.Controls.Add(tableCell);
			if (c1 != null && c2 != null)
			{
				tableCell2.Controls.Add(c1);
				tableCell2.Controls.Add(c2);
				tableCell.HorizontalAlign = HorizontalAlign.Right;
				if (s0 != null)
				{
					_createUserWizard.RegisterApplyStyle(tableCell, s0);
				}
				if (s1 != null)
				{
					_createUserWizard.RegisterApplyStyle(tableCell2, s1);
				}
				tableRow.Controls.Add(tableCell2);
			}
			else
			{
				tableCell.ColumnSpan = 2;
				tableCell.HorizontalAlign = HorizontalAlign.Center;
				if (s0 != null)
				{
					_createUserWizard.RegisterApplyStyle(tableCell, s0);
				}
			}
			return tableRow;
		}

		public void InstantiateIn(Control container)
		{
			Table table = new Table();
			table.ControlStyle.Width = Unit.Percentage(100.0);
			table.ControlStyle.Height = Unit.Percentage(100.0);
			table.Controls.Add(CreateRow(null, null, null, _createUserWizard.TitleTextStyle, null));
			table.Controls.Add(CreateRow(null, null, null, _createUserWizard.InstructionTextStyle, null));
			TextBox textBox = new TextBox();
			textBox.ID = "UserName";
			_createUserWizard.RegisterApplyStyle(textBox, _createUserWizard.TextBoxStyle);
			Label label = new Label();
			label.AssociatedControlID = "UserName";
			RequiredFieldValidator requiredFieldValidator = new RequiredFieldValidator();
			requiredFieldValidator.ID = "UserNameRequired";
			requiredFieldValidator.EnableViewState = false;
			requiredFieldValidator.ControlToValidate = "UserName";
			requiredFieldValidator.Text = "*";
			requiredFieldValidator.ValidationGroup = _createUserWizard.ID;
			_createUserWizard.RegisterApplyStyle(requiredFieldValidator, _createUserWizard.ValidatorTextStyle);
			table.Controls.Add(CreateRow(label, textBox, requiredFieldValidator, _createUserWizard.LabelStyle, null));
			TextBox textBox2 = new TextBox();
			textBox2.ID = "Password";
			textBox2.TextMode = TextBoxMode.Password;
			_createUserWizard.RegisterApplyStyle(textBox2, _createUserWizard.TextBoxStyle);
			Label label2 = new Label();
			label2.AssociatedControlID = "Password";
			RequiredFieldValidator requiredFieldValidator2 = new RequiredFieldValidator();
			requiredFieldValidator2.ID = "PasswordRequired";
			requiredFieldValidator2.EnableViewState = false;
			requiredFieldValidator2.ControlToValidate = "Password";
			requiredFieldValidator2.Text = "*";
			requiredFieldValidator2.ValidationGroup = _createUserWizard.ID;
			_createUserWizard.RegisterApplyStyle(requiredFieldValidator2, _createUserWizard.ValidatorTextStyle);
			table.Controls.Add(CreateRow(label2, textBox2, requiredFieldValidator2, _createUserWizard.LabelStyle, null));
			table.Controls.Add(CreateRow(new LiteralControl(string.Empty), new LiteralControl(string.Empty), new LiteralControl(string.Empty), null, _createUserWizard.PasswordHintStyle));
			TextBox textBox3 = new TextBox();
			textBox3.ID = "ConfirmPassword";
			textBox3.TextMode = TextBoxMode.Password;
			_createUserWizard.RegisterApplyStyle(textBox3, _createUserWizard.TextBoxStyle);
			Label label3 = new Label();
			label3.AssociatedControlID = "ConfirmPassword";
			RequiredFieldValidator requiredFieldValidator3 = new RequiredFieldValidator();
			requiredFieldValidator3.ID = "ConfirmPasswordRequired";
			requiredFieldValidator3.EnableViewState = false;
			requiredFieldValidator3.ControlToValidate = "ConfirmPassword";
			requiredFieldValidator3.Text = "*";
			requiredFieldValidator3.ValidationGroup = _createUserWizard.ID;
			_createUserWizard.RegisterApplyStyle(requiredFieldValidator3, _createUserWizard.ValidatorTextStyle);
			table.Controls.Add(CreateRow(label3, textBox3, requiredFieldValidator3, _createUserWizard.LabelStyle, null));
			TextBox textBox4 = new TextBox();
			textBox4.ID = "Email";
			_createUserWizard.RegisterApplyStyle(textBox4, _createUserWizard.TextBoxStyle);
			Label label4 = new Label();
			label4.AssociatedControlID = "Email";
			RequiredFieldValidator requiredFieldValidator4 = new RequiredFieldValidator();
			requiredFieldValidator4.ID = "EmailRequired";
			requiredFieldValidator4.EnableViewState = false;
			requiredFieldValidator4.ControlToValidate = "Email";
			requiredFieldValidator4.Text = "*";
			requiredFieldValidator4.ValidationGroup = _createUserWizard.ID;
			_createUserWizard.RegisterApplyStyle(requiredFieldValidator4, _createUserWizard.ValidatorTextStyle);
			table.Controls.Add(CreateRow(label4, textBox4, requiredFieldValidator4, _createUserWizard.LabelStyle, null));
			TextBox textBox5 = new TextBox();
			textBox5.ID = "Question";
			_createUserWizard.RegisterApplyStyle(textBox5, _createUserWizard.TextBoxStyle);
			Label label5 = new Label();
			label5.AssociatedControlID = "Question";
			RequiredFieldValidator requiredFieldValidator5 = new RequiredFieldValidator();
			requiredFieldValidator5.ID = "QuestionRequired";
			requiredFieldValidator5.EnableViewState = false;
			requiredFieldValidator5.ControlToValidate = "Question";
			requiredFieldValidator5.Text = "*";
			requiredFieldValidator5.ValidationGroup = _createUserWizard.ID;
			_createUserWizard.RegisterApplyStyle(requiredFieldValidator5, _createUserWizard.ValidatorTextStyle);
			table.Controls.Add(CreateRow(label5, textBox5, requiredFieldValidator5, _createUserWizard.LabelStyle, null));
			TextBox textBox6 = new TextBox();
			textBox6.ID = "Answer";
			_createUserWizard.RegisterApplyStyle(textBox6, _createUserWizard.TextBoxStyle);
			Label label6 = new Label();
			label6.AssociatedControlID = "Answer";
			RequiredFieldValidator requiredFieldValidator6 = new RequiredFieldValidator();
			requiredFieldValidator6.ID = "AnswerRequired";
			requiredFieldValidator6.EnableViewState = false;
			requiredFieldValidator6.ControlToValidate = "Answer";
			requiredFieldValidator6.Text = "*";
			requiredFieldValidator6.ValidationGroup = _createUserWizard.ID;
			_createUserWizard.RegisterApplyStyle(requiredFieldValidator6, _createUserWizard.ValidatorTextStyle);
			table.Controls.Add(CreateRow(label6, textBox6, requiredFieldValidator6, _createUserWizard.LabelStyle, null));
			CompareValidator compareValidator = new CompareValidator();
			compareValidator.ID = "PasswordCompare";
			compareValidator.EnableViewState = false;
			compareValidator.ControlToCompare = "Password";
			compareValidator.ControlToValidate = "ConfirmPassword";
			compareValidator.Display = ValidatorDisplay.Static;
			compareValidator.ValidationGroup = _createUserWizard.ID;
			compareValidator.Display = ValidatorDisplay.Dynamic;
			_createUserWizard.RegisterApplyStyle(compareValidator, _createUserWizard.ValidatorTextStyle);
			table.Controls.Add(CreateRow(compareValidator, null, null, null, null));
			RegularExpressionValidator regularExpressionValidator = new RegularExpressionValidator();
			regularExpressionValidator.ID = "PasswordRegEx";
			regularExpressionValidator.EnableViewState = false;
			regularExpressionValidator.ControlToValidate = "Password";
			regularExpressionValidator.Display = ValidatorDisplay.Static;
			regularExpressionValidator.ValidationGroup = _createUserWizard.ID;
			regularExpressionValidator.Display = ValidatorDisplay.Dynamic;
			_createUserWizard.RegisterApplyStyle(regularExpressionValidator, _createUserWizard.ValidatorTextStyle);
			table.Controls.Add(CreateRow(regularExpressionValidator, null, null, null, null));
			RegularExpressionValidator regularExpressionValidator2 = new RegularExpressionValidator();
			regularExpressionValidator2.ID = "EmailRegEx";
			regularExpressionValidator2.EnableViewState = false;
			regularExpressionValidator2.ControlToValidate = "Email";
			regularExpressionValidator2.Display = ValidatorDisplay.Static;
			regularExpressionValidator2.ValidationGroup = _createUserWizard.ID;
			regularExpressionValidator2.Display = ValidatorDisplay.Dynamic;
			_createUserWizard.RegisterApplyStyle(regularExpressionValidator2, _createUserWizard.ValidatorTextStyle);
			table.Controls.Add(CreateRow(regularExpressionValidator2, null, null, null, null));
			Label label7 = new Label();
			label7.ID = "ErrorMessage";
			label7.EnableViewState = false;
			_createUserWizard.RegisterApplyStyle(label7, _createUserWizard.ValidatorTextStyle);
			table.Controls.Add(CreateRow(label7, null, null, null, null));
			TableRow tableRow = CreateRow(new Image(), null, null, null, null);
			HyperLink hyperLink = new HyperLink();
			hyperLink.ID = "HelpLink";
			_createUserWizard.RegisterApplyStyle(hyperLink, _createUserWizard.HyperLinkStyle);
			tableRow.Cells[0].Controls.Add(hyperLink);
			tableRow.Cells[0].HorizontalAlign = HorizontalAlign.Left;
			table.Controls.Add(tableRow);
			container.Controls.Add(table);
		}
	}

	private sealed class CompleteStepContainer : DefaultContentContainer
	{
		private CreateUserWizard _createUserWizard;

		public CompleteStepContainer(CreateUserWizard createUserWizard)
			: base(createUserWizard)
		{
			_createUserWizard = createUserWizard;
		}

		protected override void UpdateState()
		{
			if (string.IsNullOrEmpty(_createUserWizard.CompleteStep.Title))
			{
				((Table)InnerCell.Controls[0]).Rows[0].Visible = false;
			}
			else
			{
				((Table)InnerCell.Controls[0]).Rows[0].Cells[0].Text = _createUserWizard.CompleteStep.Title;
			}
			if (string.IsNullOrEmpty(_createUserWizard.CompleteSuccessText))
			{
				((Table)InnerCell.Controls[0]).Rows[1].Visible = false;
			}
			else
			{
				((Table)InnerCell.Controls[0]).Rows[1].Cells[0].Text = _createUserWizard.CompleteSuccessText;
			}
			UpdateNavButtonState("ContinueButton" + _createUserWizard.ContinueButtonType, _createUserWizard.ContinueButtonText, _createUserWizard.ContinueButtonImageUrl, _createUserWizard.ContinueButtonStyle);
			Image image = (Image)((Table)InnerCell.Controls[0]).Rows[3].Cells[0].Controls[0];
			if (string.IsNullOrEmpty(_createUserWizard.EditProfileIconUrl))
			{
				image.Visible = false;
			}
			else
			{
				image.ImageUrl = _createUserWizard.EditProfileIconUrl;
				image.AlternateText = _createUserWizard.EditProfileText;
			}
			HyperLink hyperLink = (HyperLink)((Table)InnerCell.Controls[0]).Rows[3].Cells[0].Controls[1];
			if (string.IsNullOrEmpty(_createUserWizard.EditProfileText))
			{
				hyperLink.Visible = false;
			}
			else
			{
				hyperLink.Text = _createUserWizard.EditProfileText;
				hyperLink.NavigateUrl = _createUserWizard.EditProfileUrl;
			}
			((Table)InnerCell.Controls[0]).Rows[3].Visible = image.Visible || hyperLink.Visible;
		}

		private void UpdateNavButtonState(string id, string text, string image, Style style)
		{
			WebControl webControl = (WebControl)FindControl(id);
			foreach (Control control in webControl.Parent.Controls)
			{
				control.Visible = webControl == control;
			}
			((IButtonControl)webControl).Text = text;
			if (webControl is ImageButton imageButton)
			{
				imageButton.ImageUrl = image;
			}
			webControl.ApplyStyle(style);
		}
	}

	private sealed class CompleteStepTemplate : ITemplate
	{
		private readonly CreateUserWizard _createUserWizard;

		public CompleteStepTemplate(CreateUserWizard createUserWizard)
		{
			_createUserWizard = createUserWizard;
		}

		public void InstantiateIn(Control container)
		{
			Table table = new Table();
			TableRow tableRow = new TableRow();
			TableCell tableCell = new TableCell();
			tableCell.HorizontalAlign = HorizontalAlign.Center;
			tableCell.ColumnSpan = 2;
			_createUserWizard.RegisterApplyStyle(tableCell, _createUserWizard.TitleTextStyle);
			tableRow.Cells.Add(tableCell);
			TableRow tableRow2 = new TableRow();
			TableCell tableCell2 = new TableCell();
			tableCell2.HorizontalAlign = HorizontalAlign.Center;
			_createUserWizard.RegisterApplyStyle(tableCell2, _createUserWizard.CompleteSuccessTextStyle);
			tableRow2.Cells.Add(tableCell2);
			TableRow tableRow3 = new TableRow();
			TableCell tableCell3 = new TableCell();
			tableCell3.HorizontalAlign = HorizontalAlign.Right;
			tableCell3.ColumnSpan = 2;
			tableRow3.Cells.Add(tableCell3);
			Control[] array = _createUserWizard.CreateButtonSet("ContinueButton", ContinueButtonCommandName, causesValidation: false, _createUserWizard.ID);
			for (int i = 0; i < array.Length; i++)
			{
				tableCell3.Controls.Add(array[i]);
			}
			TableRow tableRow4 = new TableRow();
			TableCell tableCell4 = new TableCell();
			tableCell4.Controls.Add(new Image());
			HyperLink hyperLink = new HyperLink();
			hyperLink.ID = "EditProfileLink";
			_createUserWizard.RegisterApplyStyle(hyperLink, _createUserWizard.HyperLinkStyle);
			tableCell4.Controls.Add(hyperLink);
			tableRow4.Cells.Add(tableCell4);
			table.Rows.Add(tableRow);
			table.Rows.Add(tableRow2);
			table.Rows.Add(tableRow3);
			table.Rows.Add(tableRow4);
			container.Controls.Add(table);
		}
	}

	public static readonly string ContinueButtonCommandName = "Continue";

	private string _password = string.Empty;

	private string _confirmPassword = string.Empty;

	private MembershipProvider _provider;

	private ITextControl _errorMessageLabel;

	private MailDefinition _mailDefinition;

	private Style _textBoxStyle;

	private Style _validatorTextStyle;

	private TableItemStyle _completeSuccessTextStyle;

	private TableItemStyle _errorMessageStyle;

	private TableItemStyle _hyperLinkStyle;

	private TableItemStyle _instructionTextStyle;

	private TableItemStyle _labelStyle;

	private TableItemStyle _passwordHintStyle;

	private TableItemStyle _titleTextStyle;

	private Style _createUserButtonStyle;

	private Style _continueButtonStyle;

	private static readonly object CreatedUserEvent = new object();

	private static readonly object CreateUserErrorEvent = new object();

	private static readonly object CreatingUserEvent = new object();

	private static readonly object ContinueButtonClickEvent = new object();

	private static readonly object SendingMailEvent = new object();

	private static readonly object SendMailErrorEvent = new object();

	private CompleteWizardStep _completeWizardStep;

	private CreateUserWizardStep _createUserWizardStep;

	[DefaultValue(0)]
	public override int ActiveStepIndex
	{
		get
		{
			return base.ActiveStepIndex;
		}
		set
		{
			base.ActiveStepIndex = value;
		}
	}

	[Themeable(false)]
	[Localizable(true)]
	[DefaultValue("")]
	public virtual string Answer
	{
		get
		{
			object obj = ViewState["Answer"];
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
				ViewState.Remove("Answer");
			}
			else
			{
				ViewState["Answer"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string AnswerLabelText
	{
		get
		{
			object obj = ViewState["AnswerLabelText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Security Answer:");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("AnswerLabelText");
			}
			else
			{
				ViewState["AnswerLabelText"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string AnswerRequiredErrorMessage
	{
		get
		{
			object obj = ViewState["AnswerRequiredErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Security answer is required.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("AnswerRequiredErrorMessage");
			}
			else
			{
				ViewState["AnswerRequiredErrorMessage"] = value;
			}
		}
	}

	[DefaultValue(false)]
	[Themeable(false)]
	public virtual bool AutoGeneratePassword
	{
		get
		{
			object obj = ViewState["AutoGeneratePassword"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return false;
		}
		set
		{
			ViewState["AutoGeneratePassword"] = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public CompleteWizardStep CompleteStep
	{
		get
		{
			if (_completeWizardStep == null)
			{
				for (int i = 0; i < WizardSteps.Count; i++)
				{
					if (WizardSteps[i] is CompleteWizardStep)
					{
						_completeWizardStep = (CompleteWizardStep)WizardSteps[i];
						if (_completeWizardStep.Wizard == null)
						{
							_completeWizardStep.SetWizard(this);
						}
					}
				}
			}
			return _completeWizardStep;
		}
	}

	[Localizable(true)]
	public virtual string CompleteSuccessText
	{
		get
		{
			object obj = ViewState["CompleteSuccessText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Your account has been successfully created.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("CompleteSuccessText");
			}
			else
			{
				ViewState["CompleteSuccessText"] = value;
			}
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public TableItemStyle CompleteSuccessTextStyle
	{
		get
		{
			if (_completeSuccessTextStyle == null)
			{
				_completeSuccessTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)_completeSuccessTextStyle).TrackViewState();
				}
			}
			return _completeSuccessTextStyle;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string ConfirmPassword => _confirmPassword;

	[Localizable(true)]
	public virtual string ConfirmPasswordCompareErrorMessage
	{
		get
		{
			object obj = ViewState["ConfirmPasswordCompareErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("The Password and Confirmation Password must match.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("ConfirmPasswordCompareErrorMessage");
			}
			else
			{
				ViewState["ConfirmPasswordCompareErrorMessage"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string ConfirmPasswordLabelText
	{
		get
		{
			object obj = ViewState["ConfirmPasswordLabelText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Confirm Password:");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("ConfirmPasswordLabelText");
			}
			else
			{
				ViewState["ConfirmPasswordLabelText"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string ConfirmPasswordRequiredErrorMessage
	{
		get
		{
			object obj = ViewState["ConfirmPasswordRequiredErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Confirm Password is required.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("ConfirmPasswordRequiredErrorMessage");
			}
			else
			{
				ViewState["ConfirmPasswordRequiredErrorMessage"] = value;
			}
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string ContinueButtonImageUrl
	{
		get
		{
			return ViewState.GetString("ContinueButtonImageUrl", string.Empty);
		}
		set
		{
			ViewState["ContinueButtonImageUrl"] = value;
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	public Style ContinueButtonStyle
	{
		get
		{
			if (_continueButtonStyle == null)
			{
				_continueButtonStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)_continueButtonStyle).TrackViewState();
				}
			}
			return _continueButtonStyle;
		}
	}

	[Localizable(true)]
	public virtual string ContinueButtonText
	{
		get
		{
			return ViewState.GetString("ContinueButtonText", "Continue");
		}
		set
		{
			ViewState["ContinueButtonText"] = value;
		}
	}

	[DefaultValue(ButtonType.Button)]
	public virtual ButtonType ContinueButtonType
	{
		get
		{
			object obj = ViewState["ContinueButtonType"];
			if (obj == null)
			{
				return ButtonType.Button;
			}
			return (ButtonType)obj;
		}
		set
		{
			ViewState["ContinueButtonType"] = value;
		}
	}

	[DefaultValue("")]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[Themeable(false)]
	public virtual string ContinueDestinationPageUrl
	{
		get
		{
			object obj = ViewState["ContinueDestinationPageUrl"];
			if (obj != null)
			{
				return (string)obj;
			}
			return "";
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("ContinueDestinationPageUrl");
			}
			else
			{
				ViewState["ContinueDestinationPageUrl"] = value;
			}
		}
	}

	[DefaultValue("")]
	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	public virtual string CreateUserButtonImageUrl
	{
		get
		{
			return ViewState.GetString("CreateUserButtonImageUrl", string.Empty);
		}
		set
		{
			ViewState["CreateUserButtonImageUrl"] = value;
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public Style CreateUserButtonStyle
	{
		get
		{
			if (_createUserButtonStyle == null)
			{
				_createUserButtonStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)_createUserButtonStyle).TrackViewState();
				}
			}
			return _createUserButtonStyle;
		}
	}

	[Localizable(true)]
	public virtual string CreateUserButtonText
	{
		get
		{
			return ViewState.GetString("CreateUserButtonText", "Create User");
		}
		set
		{
			ViewState["CreateUserButtonText"] = value;
		}
	}

	[DefaultValue(ButtonType.Button)]
	public virtual ButtonType CreateUserButtonType
	{
		get
		{
			object obj = ViewState["CreateUserButtonType"];
			if (obj == null)
			{
				return ButtonType.Button;
			}
			return (ButtonType)obj;
		}
		set
		{
			ViewState["CreateUserButtonType"] = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public CreateUserWizardStep CreateUserStep
	{
		get
		{
			if (_createUserWizardStep == null)
			{
				for (int i = 0; i < WizardSteps.Count; i++)
				{
					if (WizardSteps[i] is CreateUserWizardStep)
					{
						_createUserWizardStep = (CreateUserWizardStep)WizardSteps[i];
						if (_createUserWizardStep.Wizard == null)
						{
							_createUserWizardStep.SetWizard(this);
						}
					}
				}
			}
			return _createUserWizardStep;
		}
	}

	[DefaultValue(false)]
	[Themeable(false)]
	public virtual bool DisableCreatedUser
	{
		get
		{
			object obj = ViewState["DisableCreatedUser"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return false;
		}
		set
		{
			ViewState["DisableCreatedUser"] = value;
		}
	}

	[DefaultValue(false)]
	public override bool DisplaySideBar
	{
		get
		{
			return ViewState.GetBool("DisplaySideBar", def: false);
		}
		set
		{
			ViewState["DisplaySideBar"] = value;
			ChildControlsCreated = false;
		}
	}

	[Localizable(true)]
	public virtual string DuplicateEmailErrorMessage
	{
		get
		{
			object obj = ViewState["DuplicateEmailErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("The e-mail address that you entered is already in use. Please enter a different e-mail address.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("DuplicateEmailErrorMessage");
			}
			else
			{
				ViewState["DuplicateEmailErrorMessage"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string DuplicateUserNameErrorMessage
	{
		get
		{
			object obj = ViewState["DuplicateUserNameErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Please enter a different user name.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("DuplicateUserNameErrorMessage");
			}
			else
			{
				ViewState["DuplicateUserNameErrorMessage"] = value;
			}
		}
	}

	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[DefaultValue("")]
	public virtual string EditProfileIconUrl
	{
		get
		{
			object obj = ViewState["EditProfileIconUrl"];
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
				ViewState.Remove("EditProfileIconUrl");
			}
			else
			{
				ViewState["EditProfileIconUrl"] = value;
			}
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public virtual string EditProfileText
	{
		get
		{
			object obj = ViewState["EditProfileText"];
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
				ViewState.Remove("EditProfileText");
			}
			else
			{
				ViewState["EditProfileText"] = value;
			}
		}
	}

	[DefaultValue("")]
	[UrlProperty]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public virtual string EditProfileUrl
	{
		get
		{
			object obj = ViewState["EditProfileUrl"];
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
				ViewState.Remove("EditProfileUrl");
			}
			else
			{
				ViewState["EditProfileUrl"] = value;
			}
		}
	}

	[DefaultValue("")]
	public virtual string Email
	{
		get
		{
			object obj = ViewState["Email"];
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
				ViewState.Remove("Email");
			}
			else
			{
				ViewState["Email"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string EmailLabelText
	{
		get
		{
			object obj = ViewState["EmailLabelText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("E-mail:");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("EmailLabelText");
			}
			else
			{
				ViewState["EmailLabelText"] = value;
			}
		}
	}

	public virtual string EmailRegularExpression
	{
		get
		{
			object obj = ViewState["EmailRegularExpression"];
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
				ViewState.Remove("EmailRegularExpression");
			}
			else
			{
				ViewState["EmailRegularExpression"] = value;
			}
		}
	}

	public virtual string EmailRegularExpressionErrorMessage
	{
		get
		{
			object obj = ViewState["EmailRegularExpressionErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Please enter a different e-mail.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("EmailRegularExpressionErrorMessage");
			}
			else
			{
				ViewState["EmailRegularExpressionErrorMessage"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string EmailRequiredErrorMessage
	{
		get
		{
			object obj = ViewState["EmailRequiredErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("E-mail is required.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("EmailRequiredErrorMessage");
			}
			else
			{
				ViewState["EmailRequiredErrorMessage"] = value;
			}
		}
	}

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	[NotifyParentProperty(true)]
	public TableItemStyle ErrorMessageStyle
	{
		get
		{
			if (_errorMessageStyle == null)
			{
				_errorMessageStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)_errorMessageStyle).TrackViewState();
				}
			}
			return _errorMessageStyle;
		}
	}

	[Editor("System.Web.UI.Design.ImageUrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[UrlProperty]
	[DefaultValue("")]
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

	[Localizable(true)]
	[DefaultValue("")]
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
	[DefaultValue("")]
	[Editor("System.Web.UI.Design.UrlEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
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
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	public TableItemStyle HyperLinkStyle
	{
		get
		{
			if (_hyperLinkStyle == null)
			{
				_hyperLinkStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)_hyperLinkStyle).TrackViewState();
				}
			}
			return _hyperLinkStyle;
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
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

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	public TableItemStyle InstructionTextStyle
	{
		get
		{
			if (_instructionTextStyle == null)
			{
				_instructionTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)_instructionTextStyle).TrackViewState();
				}
			}
			return _instructionTextStyle;
		}
	}

	[Localizable(true)]
	public virtual string InvalidAnswerErrorMessage
	{
		get
		{
			object obj = ViewState["InvalidAnswerErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Please enter a different security answer.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("InvalidAnswerErrorMessage");
			}
			else
			{
				ViewState["InvalidAnswerErrorMessage"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string InvalidEmailErrorMessage
	{
		get
		{
			object obj = ViewState["InvalidEmailErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Please enter a valid e-mail address.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("InvalidEmailErrorMessage");
			}
			else
			{
				ViewState["InvalidEmailErrorMessage"] = value;
			}
		}
	}

	[MonoTODO("take the values from membership provider")]
	[Localizable(true)]
	public virtual string InvalidPasswordErrorMessage
	{
		get
		{
			object obj = ViewState["InvalidPasswordErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Password length minimum: {0}. Non-alphanumeric characters required: {1}.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("InvalidPasswordErrorMessage");
			}
			else
			{
				ViewState["InvalidPasswordErrorMessage"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string InvalidQuestionErrorMessage
	{
		get
		{
			object obj = ViewState["InvalidQuestionErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Please enter a different security question.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("InvalidQuestionErrorMessage");
			}
			else
			{
				ViewState["InvalidQuestionErrorMessage"] = value;
			}
		}
	}

	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TableItemStyle LabelStyle
	{
		get
		{
			if (_labelStyle == null)
			{
				_labelStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)_labelStyle).TrackViewState();
				}
			}
			return _labelStyle;
		}
	}

	[DefaultValue(true)]
	[Themeable(false)]
	public virtual bool LoginCreatedUser
	{
		get
		{
			object obj = ViewState["LoginCreatedUser"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["LoginCreatedUser"] = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[Themeable(false)]
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
			_provider = null;
		}
	}

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

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual string Password => _password;

	[PersistenceMode(PersistenceMode.InnerProperty)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DefaultValue(null)]
	public TableItemStyle PasswordHintStyle
	{
		get
		{
			if (_passwordHintStyle == null)
			{
				_passwordHintStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)_passwordHintStyle).TrackViewState();
				}
			}
			return _passwordHintStyle;
		}
	}

	[Localizable(true)]
	public virtual string PasswordHintText
	{
		get
		{
			object obj = ViewState["PasswordHintText"];
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
				ViewState.Remove("PasswordHintText");
			}
			else
			{
				ViewState["PasswordHintText"] = value;
			}
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
			return Locale.GetText("Password:");
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

	public virtual string PasswordRegularExpression
	{
		get
		{
			object obj = ViewState["PasswordRegularExpression"];
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
				ViewState.Remove("PasswordRegularExpression");
			}
			else
			{
				ViewState["PasswordRegularExpression"] = value;
			}
		}
	}

	public virtual string PasswordRegularExpressionErrorMessage
	{
		get
		{
			object obj = ViewState["PasswordRegularExpressionErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Please enter a different password.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("PasswordRegularExpressionErrorMessage");
			}
			else
			{
				ViewState["PasswordRegularExpressionErrorMessage"] = value;
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

	[Themeable(false)]
	[DefaultValue("")]
	[Localizable(true)]
	public virtual string Question
	{
		get
		{
			object obj = ViewState["Question"];
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
				ViewState.Remove("Question");
			}
			else
			{
				ViewState["Question"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string QuestionLabelText
	{
		get
		{
			object obj = ViewState["QuestionLabelText"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Security Question:");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("QuestionLabelText");
			}
			else
			{
				ViewState["QuestionLabelText"] = value;
			}
		}
	}

	[Localizable(true)]
	public virtual string QuestionRequiredErrorMessage
	{
		get
		{
			object obj = ViewState["QuestionRequiredErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Security question is required.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("QuestionRequiredErrorMessage");
			}
			else
			{
				ViewState["QuestionRequiredErrorMessage"] = value;
			}
		}
	}

	[Themeable(false)]
	[DefaultValue(true)]
	public virtual bool RequireEmail
	{
		get
		{
			object obj = ViewState["RequireEmail"];
			if (obj != null)
			{
				return (bool)obj;
			}
			return true;
		}
		set
		{
			ViewState["RequireEmail"] = value;
		}
	}

	[MonoTODO("doesnt work")]
	[DefaultValue("")]
	public override string SkipLinkText
	{
		get
		{
			object obj = ViewState["SkipLinkText"];
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
				ViewState.Remove("SkipLinkText");
			}
			else
			{
				ViewState["SkipLinkText"] = value;
			}
		}
	}

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public Style TextBoxStyle
	{
		get
		{
			if (_textBoxStyle == null)
			{
				_textBoxStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)_textBoxStyle).TrackViewState();
				}
			}
			return _textBoxStyle;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	public TableItemStyle TitleTextStyle
	{
		get
		{
			if (_titleTextStyle == null)
			{
				_titleTextStyle = new TableItemStyle();
				if (IsTrackingViewState)
				{
					((IStateManager)_titleTextStyle).TrackViewState();
				}
			}
			return _titleTextStyle;
		}
	}

	[Localizable(true)]
	public virtual string UnknownErrorMessage
	{
		get
		{
			object obj = ViewState["UnknownErrorMessage"];
			if (obj != null)
			{
				return (string)obj;
			}
			return Locale.GetText("Your account was not created. Please try again.");
		}
		set
		{
			if (value == null)
			{
				ViewState.Remove("UnknownErrorMessage");
			}
			else
			{
				ViewState["UnknownErrorMessage"] = value;
			}
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

	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public Style ValidatorTextStyle
	{
		get
		{
			if (_validatorTextStyle == null)
			{
				_validatorTextStyle = new Style();
				if (IsTrackingViewState)
				{
					((IStateManager)_validatorTextStyle).TrackViewState();
				}
			}
			return _validatorTextStyle;
		}
	}

	[Editor("System.Web.UI.Design.WebControls.CreateUserWizardStepCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	public override WizardStepCollection WizardSteps => base.WizardSteps;

	[DefaultValue(true)]
	protected internal bool QuestionAndAnswerRequired => MembershipProviderInternal.RequiresQuestionAndAnswer;

	internal override ITemplate SideBarItemTemplate => new SideBarLabelTemplate(this);

	public event EventHandler ContinueButtonClick
	{
		add
		{
			Events.AddHandler(ContinueButtonClickEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ContinueButtonClickEvent, value);
		}
	}

	public event EventHandler CreatedUser
	{
		add
		{
			Events.AddHandler(CreatedUserEvent, value);
		}
		remove
		{
			Events.RemoveHandler(CreatedUserEvent, value);
		}
	}

	public event CreateUserErrorEventHandler CreateUserError
	{
		add
		{
			Events.AddHandler(CreateUserErrorEvent, value);
		}
		remove
		{
			Events.RemoveHandler(CreateUserErrorEvent, value);
		}
	}

	public event LoginCancelEventHandler CreatingUser
	{
		add
		{
			Events.AddHandler(CreatingUserEvent, value);
		}
		remove
		{
			Events.RemoveHandler(CreatingUserEvent, value);
		}
	}

	public event MailMessageEventHandler SendingMail
	{
		add
		{
			Events.AddHandler(SendingMailEvent, value);
		}
		remove
		{
			Events.RemoveHandler(SendingMailEvent, value);
		}
	}

	public event SendMailErrorEventHandler SendMailError
	{
		add
		{
			Events.AddHandler(SendMailErrorEvent, value);
		}
		remove
		{
			Events.RemoveHandler(SendMailErrorEvent, value);
		}
	}

	internal override void InstantiateTemplateStep(TemplatedWizardStep step)
	{
		if (step is CreateUserWizardStep)
		{
			InstantiateCreateUserWizardStep((CreateUserWizardStep)step);
		}
		else if (step is CompleteWizardStep)
		{
			InstantiateCompleteWizardStep((CompleteWizardStep)step);
		}
		else
		{
			base.InstantiateTemplateStep(step);
		}
	}

	private void InstantiateCompleteWizardStep(CompleteWizardStep step)
	{
		CompleteStepContainer completeStepContainer = new CompleteStepContainer(this);
		if (step.ContentTemplate != null)
		{
			step.ContentTemplate.InstantiateIn(completeStepContainer.InnerCell);
		}
		else
		{
			new CompleteStepTemplate(this).InstantiateIn(completeStepContainer.InnerCell);
			completeStepContainer.ConfirmDefaultTemplate();
		}
		step.ContentTemplateContainer = completeStepContainer;
		step.Controls.Clear();
		step.Controls.Add(completeStepContainer);
		BaseWizardNavigationContainer baseWizardNavigationContainer = new BaseWizardNavigationContainer();
		if (step.CustomNavigationTemplate != null)
		{
			step.CustomNavigationTemplate.InstantiateIn(baseWizardNavigationContainer);
			RegisterCustomNavigation(step, baseWizardNavigationContainer);
		}
		step.CustomNavigationTemplateContainer = baseWizardNavigationContainer;
	}

	private void InstantiateCreateUserWizardStep(CreateUserWizardStep step)
	{
		CreateUserStepContainer createUserStepContainer = new CreateUserStepContainer(this);
		if (step.ContentTemplate != null)
		{
			step.ContentTemplate.InstantiateIn(createUserStepContainer.InnerCell);
		}
		else
		{
			new CreateUserStepTemplate(this).InstantiateIn(createUserStepContainer.InnerCell);
			createUserStepContainer.ConfirmDefaultTemplate();
			createUserStepContainer.EnsureValidatorsState();
		}
		step.ContentTemplateContainer = createUserStepContainer;
		step.Controls.Clear();
		step.Controls.Add(createUserStepContainer);
		CreateUserNavigationContainer createUserNavigationContainer = new CreateUserNavigationContainer(this);
		if (step.CustomNavigationTemplate != null)
		{
			step.CustomNavigationTemplate.InstantiateIn(createUserNavigationContainer);
		}
		else
		{
			new CreateUserStepNavigationTemplate(this).InstantiateIn(createUserNavigationContainer);
			createUserNavigationContainer.ConfirmDefaultTemplate();
		}
		RegisterCustomNavigation(step, createUserNavigationContainer);
		step.CustomNavigationTemplateContainer = createUserNavigationContainer;
	}

	protected internal override void CreateChildControls()
	{
		if (CreateUserStep == null)
		{
			WizardSteps.AddAt(0, new CreateUserWizardStep());
		}
		if (CompleteStep == null)
		{
			WizardSteps.AddAt(WizardSteps.Count, new CompleteWizardStep());
		}
		base.CreateChildControls();
	}

	protected override void CreateControlHierarchy()
	{
		base.CreateControlHierarchy();
		if (!(CreateUserStep.ContentTemplateContainer is CreateUserStepContainer createUserStepContainer))
		{
			return;
		}
		if (createUserStepContainer.UserNameTextBox is IEditableTextControl editableTextControl)
		{
			editableTextControl.TextChanged += UserName_TextChanged;
		}
		if (!AutoGeneratePassword)
		{
			if (createUserStepContainer.PasswordTextBox is IEditableTextControl editableTextControl2)
			{
				editableTextControl2.TextChanged += Password_TextChanged;
			}
			if (createUserStepContainer.ConfirmPasswordTextBox is IEditableTextControl editableTextControl3)
			{
				editableTextControl3.TextChanged += ConfirmPassword_TextChanged;
			}
		}
		if (RequireEmail && createUserStepContainer.EmailTextBox is IEditableTextControl editableTextControl4)
		{
			editableTextControl4.TextChanged += Email_TextChanged;
		}
		if (QuestionAndAnswerRequired)
		{
			if (createUserStepContainer.QuestionTextBox is IEditableTextControl editableTextControl5)
			{
				editableTextControl5.TextChanged += Question_TextChanged;
			}
			if (createUserStepContainer.AnswerTextBox is IEditableTextControl editableTextControl6)
			{
				editableTextControl6.TextChanged += Answer_TextChanged;
			}
		}
		_errorMessageLabel = createUserStepContainer.ErrorMessageLabel;
	}

	[MonoTODO("Not Implemented")]
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected override IDictionary GetDesignModeState()
	{
		throw new NotImplementedException();
	}

	protected override bool OnBubbleEvent(object source, EventArgs e)
	{
		CommandEventArgs e2 = e as CommandEventArgs;
		if (e != null && e2.CommandName == ContinueButtonCommandName)
		{
			ProcessContinueEvent();
			return true;
		}
		return base.OnBubbleEvent(source, e);
	}

	private void ProcessContinueEvent()
	{
		OnContinueButtonClick(EventArgs.Empty);
		if (ContinueDestinationPageUrl.Length > 0)
		{
			Context.Response.Redirect(ContinueDestinationPageUrl);
		}
	}

	protected virtual void OnContinueButtonClick(EventArgs e)
	{
		if (Events != null)
		{
			((EventHandler)Events[ContinueButtonClickEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnCreatedUser(EventArgs e)
	{
		if (Events != null)
		{
			((EventHandler)Events[CreatedUserEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnCreateUserError(CreateUserErrorEventArgs e)
	{
		if (Events != null)
		{
			((CreateUserErrorEventHandler)Events[CreateUserErrorEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnCreatingUser(LoginCancelEventArgs e)
	{
		if (Events != null)
		{
			((LoginCancelEventHandler)Events[CreatingUserEvent])?.Invoke(this, e);
		}
	}

	protected override void OnNextButtonClick(WizardNavigationEventArgs e)
	{
		if (ActiveStep == CreateUserStep)
		{
			if (!CreateUser())
			{
				e.Cancel = true;
			}
			else if (LoginCreatedUser)
			{
				Login();
			}
		}
		base.OnNextButtonClick(e);
	}

	protected internal override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected virtual void OnSendingMail(MailMessageEventArgs e)
	{
		if (Events != null)
		{
			((MailMessageEventHandler)Events[SendingMailEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnSendMailError(SendMailErrorEventArgs e)
	{
		if (Events != null)
		{
			((SendMailErrorEventHandler)Events[SendMailErrorEvent])?.Invoke(this, e);
		}
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
			((IStateManager)TextBoxStyle).LoadViewState(array[1]);
		}
		if (array[2] != null)
		{
			((IStateManager)ValidatorTextStyle).LoadViewState(array[2]);
		}
		if (array[3] != null)
		{
			((IStateManager)CompleteSuccessTextStyle).LoadViewState(array[3]);
		}
		if (array[4] != null)
		{
			((IStateManager)ErrorMessageStyle).LoadViewState(array[4]);
		}
		if (array[5] != null)
		{
			((IStateManager)HyperLinkStyle).LoadViewState(array[5]);
		}
		if (array[6] != null)
		{
			((IStateManager)InstructionTextStyle).LoadViewState(array[6]);
		}
		if (array[7] != null)
		{
			((IStateManager)LabelStyle).LoadViewState(array[7]);
		}
		if (array[8] != null)
		{
			((IStateManager)PasswordHintStyle).LoadViewState(array[8]);
		}
		if (array[9] != null)
		{
			((IStateManager)TitleTextStyle).LoadViewState(array[9]);
		}
		if (array[10] != null)
		{
			((IStateManager)CreateUserButtonStyle).LoadViewState(array[10]);
		}
		if (array[11] != null)
		{
			((IStateManager)ContinueButtonStyle).LoadViewState(array[11]);
		}
		if (array[12] != null)
		{
			((IStateManager)MailDefinition).LoadViewState(array[12]);
		}
		((CreateUserStepContainer)CreateUserStep.ContentTemplateContainer).EnsureValidatorsState();
	}

	protected override object SaveViewState()
	{
		object[] array = new object[13]
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
			null,
			null,
			null
		};
		if (_textBoxStyle != null)
		{
			array[1] = ((IStateManager)_textBoxStyle).SaveViewState();
		}
		if (_validatorTextStyle != null)
		{
			array[2] = ((IStateManager)_validatorTextStyle).SaveViewState();
		}
		if (_completeSuccessTextStyle != null)
		{
			array[3] = ((IStateManager)_completeSuccessTextStyle).SaveViewState();
		}
		if (_errorMessageStyle != null)
		{
			array[4] = ((IStateManager)_errorMessageStyle).SaveViewState();
		}
		if (_hyperLinkStyle != null)
		{
			array[5] = ((IStateManager)_hyperLinkStyle).SaveViewState();
		}
		if (_instructionTextStyle != null)
		{
			array[6] = ((IStateManager)_instructionTextStyle).SaveViewState();
		}
		if (_labelStyle != null)
		{
			array[7] = ((IStateManager)_labelStyle).SaveViewState();
		}
		if (_passwordHintStyle != null)
		{
			array[8] = ((IStateManager)_passwordHintStyle).SaveViewState();
		}
		if (_titleTextStyle != null)
		{
			array[9] = ((IStateManager)_titleTextStyle).SaveViewState();
		}
		if (_createUserButtonStyle != null)
		{
			array[10] = ((IStateManager)_createUserButtonStyle).SaveViewState();
		}
		if (_continueButtonStyle != null)
		{
			array[11] = ((IStateManager)_continueButtonStyle).SaveViewState();
		}
		if (_mailDefinition != null)
		{
			array[12] = ((IStateManager)_mailDefinition).SaveViewState();
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

	[MonoTODO("for design-time usage - no more details available")]
	[SecurityPermission(SecurityAction.Demand, Unrestricted = true)]
	protected override void SetDesignModeState(IDictionary data)
	{
		base.SetDesignModeState(data);
	}

	protected override void TrackViewState()
	{
		base.TrackViewState();
		if (_textBoxStyle != null)
		{
			((IStateManager)_textBoxStyle).TrackViewState();
		}
		if (_validatorTextStyle != null)
		{
			((IStateManager)_validatorTextStyle).TrackViewState();
		}
		if (_completeSuccessTextStyle != null)
		{
			((IStateManager)_completeSuccessTextStyle).TrackViewState();
		}
		if (_errorMessageStyle != null)
		{
			((IStateManager)_errorMessageStyle).TrackViewState();
		}
		if (_hyperLinkStyle != null)
		{
			((IStateManager)_hyperLinkStyle).TrackViewState();
		}
		if (_instructionTextStyle != null)
		{
			((IStateManager)_instructionTextStyle).TrackViewState();
		}
		if (_labelStyle != null)
		{
			((IStateManager)_labelStyle).TrackViewState();
		}
		if (_passwordHintStyle != null)
		{
			((IStateManager)_passwordHintStyle).TrackViewState();
		}
		if (_titleTextStyle != null)
		{
			((IStateManager)_titleTextStyle).TrackViewState();
		}
		if (_createUserButtonStyle != null)
		{
			((IStateManager)_createUserButtonStyle).TrackViewState();
		}
		if (_continueButtonStyle != null)
		{
			((IStateManager)_continueButtonStyle).TrackViewState();
		}
		if (_mailDefinition != null)
		{
			((IStateManager)_mailDefinition).TrackViewState();
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

	private void ConfirmPassword_TextChanged(object sender, EventArgs e)
	{
		_confirmPassword = ((ITextControl)sender).Text;
	}

	private void Email_TextChanged(object sender, EventArgs e)
	{
		Email = ((ITextControl)sender).Text;
	}

	private void Question_TextChanged(object sender, EventArgs e)
	{
		Question = ((ITextControl)sender).Text;
	}

	private void Answer_TextChanged(object sender, EventArgs e)
	{
		Answer = ((ITextControl)sender).Text;
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

	private bool CreateUser()
	{
		if (!Page.IsValid)
		{
			return false;
		}
		if (AutoGeneratePassword)
		{
			_password = GeneratePassword();
		}
		OnCreatingUser(new LoginCancelEventArgs(cancel: false));
		MembershipUser membershipUser = MembershipProviderInternal.CreateUser(UserName, Password, Email, Question, Answer, !DisableCreatedUser, null, out var status);
		if (membershipUser != null && status == MembershipCreateStatus.Success)
		{
			OnCreatedUser(new EventArgs());
			SendPasswordByMail(membershipUser, Password);
			return true;
		}
		switch (status)
		{
		case MembershipCreateStatus.DuplicateUserName:
			ShowErrorMessage(DuplicateUserNameErrorMessage);
			break;
		case MembershipCreateStatus.InvalidPassword:
			ShowErrorMessage(string.Format(InvalidPasswordErrorMessage, MembershipProviderInternal.MinRequiredPasswordLength, MembershipProviderInternal.MinRequiredNonAlphanumericCharacters));
			break;
		case MembershipCreateStatus.DuplicateEmail:
			ShowErrorMessage(DuplicateEmailErrorMessage);
			break;
		case MembershipCreateStatus.InvalidEmail:
			ShowErrorMessage(InvalidEmailErrorMessage);
			break;
		case MembershipCreateStatus.InvalidQuestion:
			ShowErrorMessage(InvalidQuestionErrorMessage);
			break;
		case MembershipCreateStatus.InvalidAnswer:
			ShowErrorMessage(InvalidAnswerErrorMessage);
			break;
		case MembershipCreateStatus.InvalidUserName:
		case MembershipCreateStatus.UserRejected:
		case MembershipCreateStatus.InvalidProviderUserKey:
		case MembershipCreateStatus.ProviderError:
			ShowErrorMessage(UnknownErrorMessage);
			break;
		}
		OnCreateUserError(new CreateUserErrorEventArgs(status));
		return false;
	}

	private void SendPasswordByMail(MembershipUser user, string password)
	{
		if (user == null || _mailDefinition == null)
		{
			return;
		}
		string body = "A new account has been created for you. Please go to the site and log in using the following information.\nUser Name: <%USERNAME%>\nPassword: <%PASSWORD%>";
		ListDictionary listDictionary = new ListDictionary();
		listDictionary.Add("<%USERNAME%>", user.UserName);
		listDictionary.Add("<%PASSWORD%>", password);
		MailMessage mailMessage = null;
		mailMessage = ((MailDefinition.BodyFileName.Length != 0) ? MailDefinition.CreateMailMessage(user.Email, listDictionary, this) : MailDefinition.CreateMailMessage(user.Email, listDictionary, body, this));
		if (string.IsNullOrEmpty(mailMessage.Subject))
		{
			mailMessage.Subject = "Account information";
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

	private void Login()
	{
		if (MembershipProviderInternal.ValidateUser(UserName, Password))
		{
			FormsAuthentication.SetAuthCookie(UserName, createPersistentCookie: false);
		}
	}

	private void ShowErrorMessage(string errorMessage)
	{
		if (_errorMessageLabel != null)
		{
			_errorMessageLabel.Text = errorMessage;
		}
	}

	private string GeneratePassword()
	{
		return Membership.GeneratePassword(8, 3);
	}
}
