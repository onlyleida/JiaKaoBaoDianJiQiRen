using System.Net.Mail;

namespace System.Web.UI.WebControls;

public class MailMessageEventArgs : LoginCancelEventArgs
{
	private MailMessage _message;

	public MailMessage Message => _message;

	public MailMessageEventArgs(MailMessage message)
	{
		_message = message;
	}
}
