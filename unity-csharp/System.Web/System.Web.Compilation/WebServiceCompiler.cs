using System.CodeDom.Compiler;
using System.IO;
using System.Reflection;
using System.Web.UI;

namespace System.Web.Compilation;

internal class WebServiceCompiler : BaseCompiler
{
	private SimpleWebHandlerParser parser;

	private string inputFile;

	internal new SimpleWebHandlerParser Parser => parser;

	internal string InputFile => inputFile;

	public WebServiceCompiler(SimpleWebHandlerParser wService)
		: base(null)
	{
		parser = wService;
	}

	public static Type CompileIntoType(SimpleWebHandlerParser wService)
	{
		return new WebServiceCompiler(wService).GetCompiledType();
	}

	public override Type GetCompiledType()
	{
		Type typeFromCache = CachingCompiler.GetTypeFromCache(parser.PhysicalPath);
		if (typeFromCache != null)
		{
			return typeFromCache;
		}
		if (parser.Program.Trim() == "")
		{
			typeFromCache = Type.GetType(parser.ClassName, throwOnError: false);
			if (typeFromCache == null)
			{
				typeFromCache = parser.GetTypeFromBin(parser.ClassName);
			}
			CachingCompiler.InsertTypeFileDep(typeFromCache, parser.PhysicalPath);
			return typeFromCache;
		}
		string language = parser.Language;
		CodeDomProvider codeDomProvider = (Provider = BaseCompiler.CreateProvider(parser.Context, language, out var compilerOptions, out var warningLevel, out var tempdir));
		if (Provider == null)
		{
			throw new HttpException("Configuration error. Language not supported: " + language, 500);
		}
		CompilerParameters compilerParameters = (CompilerParameters = CachingCompiler.GetOptions(parser.Assemblies));
		compilerParameters.IncludeDebugInformation = parser.Debug;
		compilerParameters.CompilerOptions = compilerOptions;
		compilerParameters.WarningLevel = warningLevel;
		bool keepFiles = Environment.GetEnvironmentVariable("MONO_ASPNET_NODELETE") != null;
		TempFileCollection tempFileCollection = (compilerParameters.TempFiles = new TempFileCollection(tempdir, keepFiles));
		inputFile = tempFileCollection.AddExtension(codeDomProvider.FileExtension);
		StreamWriter streamWriter = new StreamWriter(File.OpenWrite(inputFile));
		streamWriter.WriteLine(parser.Program);
		streamWriter.Close();
		string fileName = Path.GetFileName(tempFileCollection.AddExtension("dll", keepFile: true));
		compilerParameters.OutputAssembly = Path.Combine(DynamicDir(), fileName);
		CompilerResults compilerResults = CachingCompiler.Compile(this);
		CheckCompilerErrors(compilerResults);
		Assembly assembly = compilerResults.CompiledAssembly;
		if (assembly == null)
		{
			if (!File.Exists(compilerParameters.OutputAssembly))
			{
				throw new CompilationException(inputFile, compilerResults.Errors, "No assembly returned after compilation!?");
			}
			assembly = Assembly.LoadFrom(compilerParameters.OutputAssembly);
		}
		compilerResults.TempFiles.Delete();
		typeFromCache = assembly.GetType(parser.ClassName, throwOnError: true);
		CachingCompiler.InsertTypeFileDep(typeFromCache, parser.PhysicalPath);
		return typeFromCache;
	}

	private void CheckCompilerErrors(CompilerResults results)
	{
		if (results.NativeCompilerReturnValue == 0)
		{
			return;
		}
		throw new CompilationException(parser.PhysicalPath, results.Errors, parser.Program);
	}
}
