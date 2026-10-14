using System.Collections;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI;

public abstract class PageParserFilter
{
	private TemplateParser parser;

	public virtual bool AllowCode => false;

	[MonoTODO("Need to implement support for this in the parser")]
	protected int Line => parser.Location.BeginLine;

	public virtual int NumberOfControlsAllowed => 0;

	public virtual int NumberOfDirectDependenciesAllowed => 0;

	public virtual int TotalNumberOfDependenciesAllowed => 0;

	protected string VirtualPath => parser.VirtualPath.Absolute;

	protected bool CalledFromParseControl
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	protected void AddControl(Type type, IDictionary attributes)
	{
		if (parser != null)
		{
			parser.AddControl(type, attributes);
		}
	}

	public virtual bool AllowBaseType(Type baseType)
	{
		return false;
	}

	public virtual bool AllowControl(Type controlType, ControlBuilder builder)
	{
		return false;
	}

	public virtual bool AllowServerSideInclude(string includeVirtualPath)
	{
		return false;
	}

	public virtual bool AllowVirtualReference(string referenceVirtualPath, VirtualReferenceType referenceType)
	{
		return false;
	}

	public virtual CompilationMode GetCompilationMode(CompilationMode current)
	{
		return current;
	}

	public virtual Type GetNoCompileUserControlType()
	{
		return null;
	}

	protected virtual void Initialize()
	{
	}

	internal void Initialize(TemplateParser parser)
	{
		this.parser = parser;
		Initialize();
	}

	public virtual void ParseComplete(ControlBuilder rootBuilder)
	{
	}

	public virtual void PreprocessDirective(string directiveName, IDictionary attributes)
	{
	}

	public virtual bool ProcessCodeConstruct(CodeConstructType codeType, string code)
	{
		return false;
	}

	public virtual bool ProcessDataBindingAttribute(string controlId, string name, string value)
	{
		return false;
	}

	public virtual bool ProcessEventHookup(string controlId, string eventName, string handlerName)
	{
		return false;
	}

	protected void SetPageProperty(string filter, string name, string value)
	{
	}
}
