using System.CodeDom;
using System.Collections;
using System.Configuration;
using System.Reflection;
using System.Security.Permissions;
using System.Web.Compilation;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Web.Util;
using Unity;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class ControlBuilder
{
	internal static readonly BindingFlags FlagsNoCase = BindingFlags.IgnoreCase | BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public;

	private ControlBuilder myNamingContainer;

	private TemplateParser parser;

	private Type parserType;

	private ControlBuilder parentBuilder;

	private Type type;

	private string tagName;

	private string originalTagName;

	private string id;

	private IDictionary attribs;

	private int line;

	private string fileName;

	private bool childrenAsProperties;

	private bool isIParserAccessor = true;

	private bool hasAspCode;

	private ControlBuilder defaultPropertyBuilder;

	private ArrayList children;

	private ArrayList templateChildren;

	private static int nextID;

	private bool haveParserVariable;

	private CodeMemberMethod method;

	private CodeStatementCollection methodStatements;

	private CodeMemberMethod renderMethod;

	private int renderIndex;

	private bool isProperty;

	private bool isPropertyWritable;

	private ILocation location;

	private ArrayList otherTags;

	private int localVariableCount;

	private bool? isTemplate;

	public static readonly string DesignerFilter;

	internal ControlBuilder ParentBuilder => parentBuilder;

	internal IDictionary Attributes => attribs;

	internal int Line
	{
		get
		{
			return line;
		}
		set
		{
			line = value;
		}
	}

	internal string FileName
	{
		get
		{
			return fileName;
		}
		set
		{
			fileName = value;
		}
	}

	internal ControlBuilder DefaultPropertyBuilder => defaultPropertyBuilder;

	internal bool HaveParserVariable
	{
		get
		{
			return haveParserVariable;
		}
		set
		{
			haveParserVariable = value;
		}
	}

	internal CodeMemberMethod Method
	{
		get
		{
			return method;
		}
		set
		{
			method = value;
		}
	}

	internal CodeMemberMethod DataBindingMethod { get; set; }

	internal CodeStatementCollection MethodStatements
	{
		get
		{
			return methodStatements;
		}
		set
		{
			methodStatements = value;
		}
	}

	internal CodeMemberMethod RenderMethod
	{
		get
		{
			return renderMethod;
		}
		set
		{
			renderMethod = value;
		}
	}

	internal int RenderIndex => renderIndex;

	internal bool IsProperty => isProperty;

	internal bool IsPropertyWritable => isPropertyWritable;

	internal ILocation Location
	{
		get
		{
			return location;
		}
		set
		{
			location = new Location(value);
		}
	}

	internal ArrayList OtherTags => otherTags;

	public Type ControlType => type;

	protected bool FChildrenAsProperties => childrenAsProperties;

	protected bool FIsNonParserAccessor => !isIParserAccessor;

	public bool HasAspCode => hasAspCode;

	public string ID
	{
		get
		{
			return id;
		}
		set
		{
			id = value;
		}
	}

	internal ArrayList Children => children;

	internal ArrayList TemplateChildren => templateChildren;

	protected bool InDesigner => false;

	public Type NamingContainerType
	{
		get
		{
			ControlBuilder controlBuilder = myNamingContainer;
			if (controlBuilder == null)
			{
				return typeof(Control);
			}
			return controlBuilder.ControlType;
		}
	}

	internal bool IsNamingContainer
	{
		get
		{
			if (type == null)
			{
				return false;
			}
			return typeof(INamingContainer).IsAssignableFrom(type);
		}
	}

	internal bool IsTemplate
	{
		get
		{
			if (!isTemplate.HasValue)
			{
				isTemplate = typeof(TemplateBuilder).IsAssignableFrom(GetType());
			}
			return isTemplate.Value;
		}
	}

	internal bool PropertyBuilderShouldReturnValue
	{
		get
		{
			if (isProperty && isPropertyWritable && RenderMethod == null && !IsTemplate && !(this is CollectionBuilder))
			{
				return !(this is RootBuilder);
			}
			return false;
		}
	}

	private ControlBuilder MyNamingContainer
	{
		get
		{
			if (myNamingContainer == null)
			{
				Type type = ((parentBuilder != null) ? parentBuilder.ControlType : null);
				if (parentBuilder == null && type == null)
				{
					myNamingContainer = null;
				}
				else if (parentBuilder is TemplateBuilder)
				{
					myNamingContainer = parentBuilder;
				}
				else if (type != null && typeof(INamingContainer).IsAssignableFrom(type))
				{
					myNamingContainer = parentBuilder;
				}
				else
				{
					myNamingContainer = parentBuilder.MyNamingContainer;
				}
			}
			return myNamingContainer;
		}
	}

	public virtual Type BindingContainerType
	{
		get
		{
			ControlBuilder controlBuilder = ((this is TemplateBuilder && !(this is RootBuilder)) ? this : MyNamingContainer);
			if (controlBuilder == null)
			{
				if (this is RootBuilder && parserType == typeof(PageParser))
				{
					return typeof(Page);
				}
				return typeof(Control);
			}
			if (controlBuilder != this && controlBuilder is ContentBuilderInternal && !typeof(INonBindingContainer).IsAssignableFrom(controlBuilder.BindingContainerType))
			{
				return controlBuilder.BindingContainerType;
			}
			Type containerType;
			if (controlBuilder is TemplateBuilder)
			{
				containerType = ((TemplateBuilder)controlBuilder).ContainerType;
				if (typeof(INonBindingContainer).IsAssignableFrom(containerType))
				{
					return MyNamingContainer.BindingContainerType;
				}
				if (containerType != null)
				{
					return containerType;
				}
				containerType = controlBuilder.ControlType;
				if (containerType == null)
				{
					return typeof(Control);
				}
				if (typeof(INonBindingContainer).IsAssignableFrom(containerType) || !typeof(INamingContainer).IsAssignableFrom(containerType))
				{
					return MyNamingContainer.BindingContainerType;
				}
				return containerType;
			}
			containerType = controlBuilder.ControlType;
			if (containerType == null)
			{
				return typeof(Control);
			}
			if (typeof(INonBindingContainer).IsAssignableFrom(containerType) || !typeof(INamingContainer).IsAssignableFrom(containerType))
			{
				return MyNamingContainer.BindingContainerType;
			}
			return controlBuilder.ControlType;
		}
	}

	internal TemplateBuilder ParentTemplateBuilder
	{
		get
		{
			if (parentBuilder == null)
			{
				return null;
			}
			if (parentBuilder is TemplateBuilder)
			{
				return (TemplateBuilder)parentBuilder;
			}
			return parentBuilder.ParentTemplateBuilder;
		}
	}

	protected TemplateParser Parser => parser;

	public string TagName => tagName;

	internal string OriginalTagName
	{
		get
		{
			if (originalTagName == null || originalTagName.Length == 0)
			{
				return TagName;
			}
			return originalTagName;
		}
	}

	internal RootBuilder Root
	{
		get
		{
			if (typeof(RootBuilder).IsAssignableFrom(GetType()))
			{
				return (RootBuilder)this;
			}
			return parentBuilder.Root;
		}
	}

	internal bool ChildrenAsProperties => childrenAsProperties;

	public virtual ControlBuilder BindingContainerBuilder
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ICollection ComplexPropertyEntries
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public IFilterResolutionService CurrentFilterResolutionService
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public virtual Type DeclareType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	protected bool InPageTheme
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public virtual string ItemType
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public bool Localize
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
	}

	public string PageVirtualPath
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public IServiceProvider ServiceProvider
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ArrayList SubBuilders
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ICollection TemplatePropertyEntries
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public IThemeResolutionService ThemeResolutionService
	{
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return null;
		}
	}

	public ControlBuilder()
	{
	}

	internal ControlBuilder(TemplateParser parser, ControlBuilder parentBuilder, Type type, string tagName, string id, IDictionary attribs, int line, string sourceFileName)
	{
		this.parser = parser;
		parserType = parser?.GetType();
		this.parentBuilder = parentBuilder;
		this.type = type;
		this.tagName = tagName;
		this.id = id;
		this.attribs = attribs;
		this.line = line;
		fileName = sourceFileName;
	}

	internal void EnsureOtherTags()
	{
		if (otherTags == null)
		{
			otherTags = new ArrayList();
		}
	}

	internal void SetControlType(Type t)
	{
		type = t;
	}

	internal string GetAttribute(string name)
	{
		if (attribs == null)
		{
			return null;
		}
		return attribs[name] as string;
	}

	internal void IncreaseRenderIndex()
	{
		renderIndex++;
	}

	private void AddChild(object child)
	{
		if (children == null)
		{
			children = new ArrayList();
		}
		children.Add(child);
		ControlBuilder controlBuilder = child as ControlBuilder;
		if (controlBuilder != null && controlBuilder is TemplateBuilder)
		{
			if (templateChildren == null)
			{
				templateChildren = new ArrayList();
			}
			templateChildren.Add(child);
		}
		if (parser == null)
		{
			return;
		}
		string value = controlBuilder?.TagName;
		if (string.IsNullOrEmpty(value))
		{
			return;
		}
		AspComponentFoundry aspComponentFoundry = Root?.Foundry;
		if (aspComponentFoundry != null)
		{
			AspComponent component = aspComponentFoundry.GetComponent(value);
			if (component != null && component.FromConfig)
			{
				parser.AddImport(component.Namespace);
				parser.AddDependency(component.Source);
			}
		}
	}

	public virtual bool AllowWhitespaceLiterals()
	{
		return true;
	}

	public virtual void AppendLiteralString(string s)
	{
		if (s == null || s.Length == 0)
		{
			return;
		}
		if (childrenAsProperties || !isIParserAccessor)
		{
			if (defaultPropertyBuilder != null)
			{
				defaultPropertyBuilder.AppendLiteralString(s);
			}
			else if (s.Trim().Length != 0)
			{
				throw new HttpException($"Literal content not allowed for '{tagName}' {GetType()} \"{s}\"");
			}
		}
		else if (AllowWhitespaceLiterals() || s.Trim().Length != 0)
		{
			if (HtmlDecodeLiterals())
			{
				s = HttpUtility.HtmlDecode(s);
			}
			AddChild(s);
		}
	}

	public virtual void AppendSubBuilder(ControlBuilder subBuilder)
	{
		subBuilder.OnAppendToParentBuilder(this);
		subBuilder.parentBuilder = this;
		if (childrenAsProperties)
		{
			AppendToProperty(subBuilder);
		}
		else if (typeof(CodeRenderBuilder).IsAssignableFrom(subBuilder.GetType()))
		{
			AppendCode(subBuilder);
		}
		else
		{
			AddChild(subBuilder);
		}
	}

	private void AppendToProperty(ControlBuilder subBuilder)
	{
		if (typeof(CodeRenderBuilder) == subBuilder.GetType())
		{
			throw new HttpException("Code render not supported here.");
		}
		if (defaultPropertyBuilder != null)
		{
			defaultPropertyBuilder.AppendSubBuilder(subBuilder);
		}
		else
		{
			AddChild(subBuilder);
		}
	}

	private void AppendCode(ControlBuilder subBuilder)
	{
		if (type != null && !typeof(Control).IsAssignableFrom(type))
		{
			throw new HttpException("Code render not supported here.");
		}
		if (typeof(CodeRenderBuilder) == subBuilder.GetType())
		{
			hasAspCode = true;
		}
		AddChild(subBuilder);
	}

	public virtual void CloseControl()
	{
	}

	private static Type MapTagType(Type tagType)
	{
		if (tagType == null)
		{
			return null;
		}
		if (!(WebConfigurationManager.GetSection("system.web/pages") is PagesSection { TagMapping: var tagMapping }))
		{
			return tagType;
		}
		if (tagMapping == null || tagMapping.Count == 0)
		{
			return tagType;
		}
		string text = tagType.ToString();
		string text2 = string.Empty;
		string empty = string.Empty;
		foreach (TagMapInfo item in tagMapping)
		{
			Exception innerException = null;
			Type type = null;
			bool flag;
			try
			{
				text2 = item.TagType;
				type = HttpApplication.LoadType(text2);
				flag = ((type == null) ? true : false);
			}
			catch (Exception ex)
			{
				flag = true;
				innerException = ex;
			}
			if (flag)
			{
				throw new HttpException($"Could not load type {text2}", innerException);
			}
			if (text2 == text)
			{
				empty = item.MappedTagType;
				innerException = null;
				Type type2 = null;
				try
				{
					type2 = HttpApplication.LoadType(empty);
					flag = ((type2 == null) ? true : false);
				}
				catch (Exception ex2)
				{
					flag = true;
					innerException = ex2;
				}
				if (flag)
				{
					throw new HttpException($"Could not load type {empty}", innerException);
				}
				if (!type2.IsSubclassOf(type))
				{
					throw new ConfigurationErrorsException($"The specified type '{empty}' used for mapping must inherit from the original type '{text2}'.");
				}
				return type2;
			}
		}
		return tagType;
	}

	public static ControlBuilder CreateBuilderFromType(TemplateParser parser, ControlBuilder parentBuilder, Type type, string tagName, string id, IDictionary attribs, int line, string sourceFileName)
	{
		Type type2 = MapTagType(type);
		object[] customAttributes = type2.GetCustomAttributes(typeof(ControlBuilderAttribute), inherit: true);
		ControlBuilder controlBuilder = ((customAttributes == null || customAttributes.Length == 0) ? new ControlBuilder() : ((ControlBuilder)Activator.CreateInstance(((ControlBuilderAttribute)customAttributes[0]).BuilderType)));
		controlBuilder.Init(parser, parentBuilder, type2, tagName, id, attribs);
		controlBuilder.line = line;
		controlBuilder.fileName = sourceFileName;
		return controlBuilder;
	}

	public virtual Type GetChildControlType(string tagName, IDictionary attribs)
	{
		return null;
	}

	public virtual bool HasBody()
	{
		return true;
	}

	public virtual bool HtmlDecodeLiterals()
	{
		return false;
	}

	private ControlBuilder CreatePropertyBuilder(string propName, TemplateParser parser, IDictionary atts)
	{
		int num;
		string text = (((num = propName.IndexOf(':')) < 0) ? propName : propName.Substring(num + 1));
		PropertyInfo property = type.GetProperty(text, FlagsNoCase);
		if (property == null)
		{
			throw new HttpException($"Property {text} not found in type {type}");
		}
		Type propertyType = property.PropertyType;
		ControlBuilder controlBuilder = null;
		if (typeof(ICollection).IsAssignableFrom(propertyType))
		{
			controlBuilder = new CollectionBuilder();
		}
		else if (typeof(ITemplate).IsAssignableFrom(propertyType))
		{
			controlBuilder = new TemplateBuilder(property);
		}
		else
		{
			if (!(typeof(string) == propertyType))
			{
				controlBuilder = CreateBuilderFromType(parser, parentBuilder, propertyType, property.Name, null, atts, line, fileName);
				controlBuilder.isProperty = true;
				controlBuilder.isPropertyWritable = property.CanWrite;
				if (num >= 0)
				{
					controlBuilder.originalTagName = propName;
				}
				return controlBuilder;
			}
			controlBuilder = new StringPropertyBuilder(property.Name);
		}
		controlBuilder.Init(parser, this, null, property.Name, null, atts);
		controlBuilder.fileName = fileName;
		controlBuilder.line = line;
		controlBuilder.isProperty = true;
		controlBuilder.isPropertyWritable = property.CanWrite;
		if (num >= 0)
		{
			controlBuilder.originalTagName = propName;
		}
		return controlBuilder;
	}

	public virtual void Init(TemplateParser parser, ControlBuilder parentBuilder, Type type, string tagName, string id, IDictionary attribs)
	{
		this.parser = parser;
		if (parser != null)
		{
			Location = parser.Location;
		}
		this.parentBuilder = parentBuilder;
		this.type = type;
		this.tagName = tagName;
		this.id = id;
		this.attribs = attribs;
		if (type == null || this is TemplateBuilder)
		{
			return;
		}
		object[] customAttributes = type.GetCustomAttributes(typeof(ParseChildrenAttribute), inherit: true);
		if (!typeof(IParserAccessor).IsAssignableFrom(type) && customAttributes.Length == 0)
		{
			isIParserAccessor = false;
			childrenAsProperties = true;
		}
		else if (customAttributes.Length != 0)
		{
			ParseChildrenAttribute parseChildrenAttribute = (ParseChildrenAttribute)customAttributes[0];
			childrenAsProperties = parseChildrenAttribute.ChildrenAsProperties;
			if (childrenAsProperties && parseChildrenAttribute.DefaultProperty.Length != 0)
			{
				defaultPropertyBuilder = CreatePropertyBuilder(parseChildrenAttribute.DefaultProperty, parser, null);
			}
		}
	}

	public virtual bool NeedsTagInnerText()
	{
		return false;
	}

	public virtual void OnAppendToParentBuilder(ControlBuilder parentBuilder)
	{
		if (defaultPropertyBuilder != null)
		{
			ControlBuilder subBuilder = defaultPropertyBuilder;
			defaultPropertyBuilder = null;
			AppendSubBuilder(subBuilder);
		}
	}

	internal void SetTagName(string name)
	{
		tagName = name;
	}

	public virtual void SetTagInnerText(string text)
	{
	}

	internal string GetNextID(string proposedID)
	{
		if (proposedID != null && proposedID.Trim().Length != 0)
		{
			return proposedID;
		}
		return "_bctrl_" + nextID++;
	}

	internal string GetNextLocalVariableName(string baseName)
	{
		localVariableCount++;
		return baseName + localVariableCount;
	}

	internal virtual ControlBuilder CreateSubBuilder(string tagid, IDictionary atts, Type childType, TemplateParser parser, ILocation location)
	{
		ControlBuilder controlBuilder = null;
		if (childrenAsProperties)
		{
			if (defaultPropertyBuilder == null)
			{
				controlBuilder = CreatePropertyBuilder(tagid, parser, atts);
			}
			else if (string.Compare(defaultPropertyBuilder.TagName, tagid, ignoreCase: true, Helpers.InvariantCulture) == 0)
			{
				defaultPropertyBuilder = null;
				controlBuilder = CreatePropertyBuilder(tagid, parser, atts);
			}
			else
			{
				Type controlType = ControlType;
				MemberInfo[] array = ((controlType != null) ? controlType.GetMember(tagid, MemberTypes.Property, FlagsNoCase) : null);
				PropertyInfo propertyInfo = ((array != null && array.Length != 0) ? (array[0] as PropertyInfo) : null);
				if (propertyInfo != null && typeof(ITemplate).IsAssignableFrom(propertyInfo.PropertyType))
				{
					controlBuilder = CreatePropertyBuilder(tagid, parser, atts);
					defaultPropertyBuilder = null;
				}
				else
				{
					controlBuilder = defaultPropertyBuilder.CreateSubBuilder(tagid, atts, null, parser, location);
				}
			}
			return controlBuilder;
		}
		if (string.Compare(tagName, tagid, ignoreCase: true, Helpers.InvariantCulture) == 0)
		{
			return null;
		}
		childType = GetChildControlType(tagid, atts);
		if (childType == null)
		{
			return null;
		}
		return CreateBuilderFromType(parser, this, childType, tagid, id, atts, location.BeginLine, location.Filename);
	}

	internal virtual object CreateInstance()
	{
		object[] customAttributes = type.GetCustomAttributes(typeof(ConstructorNeedsTagAttribute), inherit: true);
		object[] args = null;
		if (customAttributes != null && customAttributes.Length != 0 && ((ConstructorNeedsTagAttribute)customAttributes[0]).NeedsTag)
		{
			args = new object[1] { tagName };
		}
		return Activator.CreateInstance(type, args);
	}

	internal virtual void CreateChildren(object parent)
	{
		if (children == null || children.Count == 0 || !(parent is IParserAccessor parserAccessor))
		{
			return;
		}
		foreach (object child in children)
		{
			if (child is string)
			{
				parserAccessor.AddParsedSubObject(new LiteralControl((string)child));
			}
			else
			{
				parserAccessor.AddParsedSubObject(((ControlBuilder)child).CreateInstance());
			}
		}
	}

	[MonoTODO("unsure, lack documentation")]
	public virtual object BuildObject()
	{
		return CreateInstance();
	}

	public virtual void ProcessGeneratedCode(CodeCompileUnit codeCompileUnit, CodeTypeDeclaration baseType, CodeTypeDeclaration derivedType, CodeMemberMethod buildMethod, CodeMemberMethod dataBindingMethod)
	{
	}

	internal void ResetState()
	{
		renderIndex = 0;
		haveParserVariable = false;
		if (Children == null)
		{
			return;
		}
		foreach (object child in Children)
		{
			if (child is ControlBuilder controlBuilder)
			{
				controlBuilder.ResetState();
			}
		}
	}

	public ObjectPersistData GetObjectPersistData()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public string GetResourceKey()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void SetResourceKey(string resourceKey)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void SetServiceProvider(IServiceProvider serviceProvider)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
