using UnityEngine;

namespace MCT.PlatformCOM;

public class PlatformCOMProxy : MonoBehaviour
{
	private IDispense idispense;

	private static PlatformCOMProxy _instance;

	public static PlatformCOMProxy Instance => _instance;

	private void Awake()
	{
		_instance = this;
	}

	public void Init(IDispense dispense)
	{
		idispense = dispense;
	}

	public void SendMessage2App(string msg)
	{
		AndroidCOM.CallFromUnity(msg);
	}

	public void SendMessage2Unity(string msg)
	{
		idispense.Dispense(msg);
	}
}
