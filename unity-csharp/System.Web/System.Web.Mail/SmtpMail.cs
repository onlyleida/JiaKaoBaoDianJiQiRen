using System.IO;
using System.Net.Sockets;
using System.Security.Permissions;

namespace System.Web.Mail;

[Obsolete("The recommended alternative is System.Net.Mail.SmtpClient. http://go.microsoft.com/fwlink/?linkid=14202")]
public class SmtpMail
{
	private static string smtpServer = "localhost";

	public static string SmtpServer
	{
		get
		{
			return smtpServer;
		}
		set
		{
			smtpServer = value;
		}
	}

	private SmtpMail()
	{
	}

	[AspNetHostingPermission(SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Medium)]
	public static void Send(MailMessage message)
	{
		try
		{
			MailMessageWrapper msg = new MailMessageWrapper(message);
			SmtpClient smtpClient = new SmtpClient(smtpServer);
			smtpClient.Send(msg);
			smtpClient.Close();
		}
		catch (SmtpException ex)
		{
			throw new HttpException(ex.Message, ex);
		}
		catch (IOException ex2)
		{
			throw new HttpException(ex2.Message, ex2);
		}
		catch (FormatException ex3)
		{
			throw new HttpException(ex3.Message, ex3);
		}
		catch (SocketException ex4)
		{
			throw new HttpException(ex4.Message, ex4);
		}
	}

	public static void Send(string from, string to, string subject, string messageText)
	{
		Send(new MailMessage
		{
			From = from,
			To = to,
			Subject = subject,
			Body = messageText
		});
	}
}
