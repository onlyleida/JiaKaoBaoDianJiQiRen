using System.Collections;
using System.ComponentModel;
using System.IO;
using System.Net.Configuration;
using System.Net.Mail;
using System.Web.Configuration;

namespace System.Web.UI.WebControls;

[Bindable(false)]
[ParseChildren(true)]
public sealed class MailDefinition : IStateManager
{
	private StateBag _bag = new StateBag();

	[Editor("System.Web.UI.Design.MailDefinitionBodyFileNameEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue("")]
	[NotifyParentProperty(true)]
	[UrlProperty("*.*")]
	public string BodyFileName
	{
		get
		{
			return _bag.GetString("BodyFileName", string.Empty);
		}
		set
		{
			_bag["BodyFileName"] = value;
		}
	}

	[DefaultValue("")]
	[NotifyParentProperty(true)]
	public string CC
	{
		get
		{
			return _bag.GetString("CC", string.Empty);
		}
		set
		{
			_bag["CC"] = value;
		}
	}

	[DefaultValue("")]
	[NotifyParentProperty(true)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public EmbeddedMailObjectsCollection EmbeddedObjects
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue("")]
	public string From
	{
		get
		{
			return _bag.GetString("From", string.Empty);
		}
		set
		{
			_bag["From"] = value;
		}
	}

	[DefaultValue(false)]
	[NotifyParentProperty(true)]
	public bool IsBodyHtml
	{
		get
		{
			return _bag.GetBool("IsBodyHtml", def: false);
		}
		set
		{
			_bag["IsBodyHtml"] = value;
		}
	}

	[DefaultValue(MailPriority.Normal)]
	[NotifyParentProperty(true)]
	public MailPriority Priority
	{
		get
		{
			if (_bag["Priority"] != null)
			{
				return (MailPriority)_bag["Priority"];
			}
			return MailPriority.Normal;
		}
		set
		{
			_bag["Priority"] = value;
		}
	}

	[DefaultValue("")]
	[NotifyParentProperty(true)]
	public string Subject
	{
		get
		{
			return _bag.GetString("Subject", string.Empty);
		}
		set
		{
			_bag["Subject"] = value;
		}
	}

	bool IStateManager.IsTrackingViewState => _bag.IsTrackingViewState;

	public MailMessage CreateMailMessage(string recipients, IDictionary replacements, Control owner)
	{
		if (owner == null)
		{
			throw new ArgumentNullException("owner");
		}
		string body = null;
		if (BodyFileName.Length > 0)
		{
			string text = null;
			text = ((!Path.IsPathRooted(BodyFileName)) ? HttpContext.Current.Request.MapPath(VirtualPathUtility.Combine(owner.TemplateSourceDirectory, BodyFileName)) : BodyFileName);
			using StreamReader streamReader = new StreamReader(text);
			body = streamReader.ReadToEnd();
		}
		else
		{
			body = "";
		}
		return CreateMailMessage(recipients, replacements, body, owner);
	}

	public MailMessage CreateMailMessage(string recipients, IDictionary replacements, string body, Control owner)
	{
		if (owner == null)
		{
			throw new ArgumentNullException("owner");
		}
		MailMessage mailMessage = new MailMessage();
		if (CC.Length > 0)
		{
			mailMessage.CC.Add(CC);
		}
		mailMessage.IsBodyHtml = IsBodyHtml;
		mailMessage.Priority = Priority;
		mailMessage.Subject = Subject;
		mailMessage.Body = body;
		if (From.Length > 0)
		{
			mailMessage.From = new MailAddress(From);
		}
		else
		{
			SmtpSection smtpSection = (SmtpSection)WebConfigurationManager.GetSection("system.net/mailSettings/smtp");
			if (smtpSection != null)
			{
				if (string.IsNullOrEmpty(smtpSection.From))
				{
					throw new HttpException("A from e-mail address must be specified in the From property or the system.net/mailSettings/smtp config section");
				}
				mailMessage.From = new MailAddress(smtpSection.From);
			}
		}
		string[] array = recipients.Split(',');
		for (int i = 0; i < array.Length; i++)
		{
			mailMessage.To.Add(array[i]);
		}
		foreach (DictionaryEntry replacement in replacements)
		{
			mailMessage.Body = mailMessage.Body.Replace((string)replacement.Key, (string)replacement.Value);
		}
		return mailMessage;
	}

	void IStateManager.LoadViewState(object state)
	{
		_bag.LoadViewState(state);
	}

	object IStateManager.SaveViewState()
	{
		return _bag.SaveViewState();
	}

	void IStateManager.TrackViewState()
	{
		_bag.TrackViewState();
	}
}
