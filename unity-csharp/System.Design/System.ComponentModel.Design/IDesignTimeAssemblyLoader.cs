using System.Reflection;
using System.Runtime.InteropServices;
using System.Runtime.Versioning;

namespace System.ComponentModel.Design;

[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
[Guid("665f0ba5-ce72-4e87-9ba0-3c461de74d0b")]
[ComVisible(false)]
public interface IDesignTimeAssemblyLoader
{
	string GetTargetAssemblyPath(AssemblyName runtimeOrTargetAssemblyName, string suggestedAssemblyPath, FrameworkName targetFramework);

	Assembly LoadRuntimeAssembly(AssemblyName targetAssemblyName);
}
