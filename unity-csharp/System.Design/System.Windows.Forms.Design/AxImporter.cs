using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;

namespace System.Windows.Forms.Design;

[System.MonoTODO]
public class AxImporter
{
	public sealed class Options
	{
		[System.MonoTODO]
		public bool delaySign;

		[System.MonoTODO]
		public bool genSources;

		[System.MonoTODO]
		public string keyContainer;

		[System.MonoTODO]
		public string keyFile;

		[System.MonoTODO]
		public StrongNameKeyPair keyPair;

		[System.MonoTODO]
		public bool noLogo;

		[System.MonoTODO]
		public string outputDirectory;

		[System.MonoTODO]
		public string outputName;

		[System.MonoTODO]
		public bool overwriteRCW;

		[System.MonoTODO]
		public byte[] publicKey;

		[System.MonoTODO]
		public IReferenceResolver references;

		[System.MonoTODO]
		public bool silentMode;

		[System.MonoTODO]
		public bool verboseMode;

		[System.MonoTODO]
		public bool msBuildErrors;

		public bool ignoreRegisteredOcx;
	}

	public interface IReferenceResolver
	{
		string ResolveActiveXReference(UCOMITypeLib typeLib);

		string ResolveComReference(AssemblyName name);

		string ResolveComReference(UCOMITypeLib typeLib);

		string ResolveManagedReference(string assemName);
	}

	internal Options options;

	[System.MonoTODO]
	public string[] GeneratedAssemblies
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public string[] GeneratedSources
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public TYPELIBATTR[] GeneratedTypeLibAttributes
	{
		get
		{
			throw new NotImplementedException();
		}
	}

	[System.MonoTODO]
	public AxImporter(Options options)
	{
		this.options = options;
	}

	[System.MonoTODO]
	public string GenerateFromFile(FileInfo file)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public string GenerateFromTypeLibrary(UCOMITypeLib typeLib)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public string GenerateFromTypeLibrary(UCOMITypeLib typeLib, Guid clsid)
	{
		throw new NotImplementedException();
	}

	[System.MonoTODO]
	public static string GetFileOfTypeLib(ref TYPELIBATTR tlibattr)
	{
		throw new NotImplementedException();
	}
}
