using System.ComponentModel;

namespace System.DirectoryServices;

public class DirectorySynchronization
{
	[DefaultValue(DirectorySynchronizationOptions.None)]
	[DSDescription("DSDirectorySynchronizationFlag")]
	public DirectorySynchronizationOptions Option
	{
		get
		{
			throw new NotImplementedException();
		}
		set
		{
			throw new NotImplementedException();
		}
	}

	public DirectorySynchronization()
	{
	}

	public DirectorySynchronization(DirectorySynchronizationOptions option)
	{
	}

	public DirectorySynchronization(DirectorySynchronization sync)
	{
	}

	public DirectorySynchronization(byte[] cookie)
	{
	}

	public DirectorySynchronization(DirectorySynchronizationOptions option, byte[] cookie)
	{
	}

	public byte[] GetDirectorySynchronizationCookie()
	{
		throw new NotImplementedException();
	}

	public void ResetDirectorySynchronizationCookie()
	{
	}

	public void ResetDirectorySynchronizationCookie(byte[] cookie)
	{
		throw new NotImplementedException();
	}

	public DirectorySynchronization Copy()
	{
		throw new NotImplementedException();
	}
}
