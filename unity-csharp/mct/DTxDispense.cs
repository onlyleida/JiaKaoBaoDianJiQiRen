using MC.Simple.MessageCenter;
using MCT.PlatformCOM;

public class DTxDispense : IDispense
{
	public void Dispense(string content)
	{
		MessagerCenter<string>.Broadcast("ANDROID_MESSAGE", content);
	}
}
