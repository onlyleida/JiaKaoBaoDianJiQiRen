using System.Collections;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Text;
using System.Web.Compilation;
using System.Web.Util;
using System.Xml;
using Unity;

namespace System.Web.UI;

[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public abstract class TemplateControl : Control, INamingContainer, IFilterResolutionService
{
	private class EvtInfo
	{
		public MethodInfo method;

		public string methodName;

		public EventInfo evt;

		public bool noParams;
	}

	private class StringResourceData
	{
		public IntPtr Ptr;

		public int Length;

		public int MaxOffset;
	}

	private class SimpleTemplate : ITemplate
	{
		private Type type;

		public SimpleTemplate(Type type)
		{
			this.type = type;
		}

		public void InstantiateIn(Control control)
		{
			Control control2 = Activator.CreateInstance(type) as Control;
			control2.SetBindingContainer(isBC: false);
			control.Controls.Add(control2);
		}
	}

	private static readonly Assembly _System_Web_Assembly = typeof(TemplateControl).Assembly;

	private static object abortTransaction = new object();

	private static object commitTransaction = new object();

	private static object error = new object();

	private static string[] methodNames = new string[15]
	{
		"Page_Init", "Page_PreInit", "Page_PreLoad", "Page_LoadComplete", "Page_PreRenderComplete", "Page_SaveStateComplete", "Page_InitComplete", "Page_Load", "Page_DataBind", "Page_PreRender",
		"Page_Disposed", "Page_Error", "Page_Unload", "Page_AbortTransaction", "Page_CommitTransaction"
	};

	private const BindingFlags bflags = BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic;

	private string _appRelativeVirtualPath;

	private StringResourceData resource_data;

	private static SplitOrderedList<Type, ArrayList> auto_event_info = new SplitOrderedList<Type, ArrayList>(EqualityComparer<Type>.Default);

	[Obsolete]
	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual int AutoHandlers
	{
		get
		{
			return 0;
		}
		set
		{
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool SupportAutoEvents => true;

	public string AppRelativeVirtualPath
	{
		get
		{
			return _appRelativeVirtualPath;
		}
		set
		{
			_appRelativeVirtualPath = value;
		}
	}

	internal override TemplateControl TemplateControlInternal => this;

	[WebSysDescription("Raised when the user aborts a transaction.")]
	public event EventHandler AbortTransaction
	{
		add
		{
			Events.AddHandler(abortTransaction, value);
		}
		remove
		{
			Events.RemoveHandler(abortTransaction, value);
		}
	}

	[WebSysDescription("Raised when the user initiates a transaction.")]
	public event EventHandler CommitTransaction
	{
		add
		{
			Events.AddHandler(commitTransaction, value);
		}
		remove
		{
			Events.RemoveHandler(commitTransaction, value);
		}
	}

	[WebSysDescription("Raised when an exception occurs that cannot be handled.")]
	public event EventHandler Error
	{
		add
		{
			Events.AddHandler(error, value);
		}
		remove
		{
			Events.RemoveHandler(error, value);
		}
	}

	protected TemplateControl()
	{
		TemplateControl = this;
		Construct();
	}

	protected virtual void Construct()
	{
	}

	protected LiteralControl CreateResourceBasedLiteralControl(int offset, int size, bool fAsciiOnly)
	{
		if (resource_data == null)
		{
			return null;
		}
		if (offset > resource_data.MaxOffset - size)
		{
			throw new ArgumentOutOfRangeException("size");
		}
		return new ResourceBasedLiteralControl(AddOffset(resource_data.Ptr, offset), size);
	}

	internal void WireupAutomaticEvents()
	{
		if (!SupportAutoEvents || !AutoEventWireup)
		{
			return;
		}
		Type type = GetType();
		ArrayList arrayList = auto_event_info.InsertOrGet((uint)type.GetHashCode(), type, null, CollectAutomaticEventInfo);
		for (int i = 0; i < arrayList.Count; i++)
		{
			EvtInfo evtInfo = (EvtInfo)arrayList[i];
			if (evtInfo.noParams)
			{
				NoParamsInvoker noParamsInvoker = new NoParamsInvoker(this, evtInfo.method);
				evtInfo.evt.AddEventHandler(this, noParamsInvoker.FakeDelegate);
			}
			else
			{
				evtInfo.evt.AddEventHandler(this, Delegate.CreateDelegate(typeof(EventHandler), this, evtInfo.method));
			}
		}
	}

	private ArrayList CollectAutomaticEventInfo()
	{
		ArrayList arrayList = new ArrayList();
		string[] array = methodNames;
		foreach (string text in array)
		{
			MethodInfo methodInfo = null;
			Type type = GetType();
			while (type.Assembly != _System_Web_Assembly)
			{
				methodInfo = type.GetMethod(text, BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic);
				if (methodInfo != null)
				{
					break;
				}
				type = type.BaseType;
			}
			if (methodInfo == null || (methodInfo.DeclaringType != type && !methodInfo.IsPublic && !methodInfo.IsFamilyOrAssembly && !methodInfo.IsFamilyAndAssembly && !methodInfo.IsFamily) || methodInfo.ReturnType != typeof(void))
			{
				continue;
			}
			ParameterInfo[] parameters = methodInfo.GetParameters();
			int num = parameters.Length;
			bool flag = num == 0;
			if (flag || (num == 2 && !(parameters[0].ParameterType != typeof(object)) && !(parameters[1].ParameterType != typeof(EventArgs))))
			{
				int num2 = text.IndexOf('_');
				string name = text.Substring(num2 + 1);
				EventInfo eventInfo = type.GetEvent(name);
				if (!(eventInfo == null))
				{
					EvtInfo evtInfo = new EvtInfo();
					evtInfo.method = methodInfo;
					evtInfo.methodName = text;
					evtInfo.evt = eventInfo;
					evtInfo.noParams = flag;
					arrayList.Add(evtInfo);
				}
			}
		}
		return arrayList;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual void FrameworkInitialize()
	{
	}

	private Type GetTypeFromControlPath(string virtualPath)
	{
		if (virtualPath == null)
		{
			throw new ArgumentNullException("virtualPath");
		}
		return BuildManager.GetCompiledType(UrlUtils.Combine(TemplateSourceDirectory, virtualPath));
	}

	public Control LoadControl(string virtualPath)
	{
		if (virtualPath == null)
		{
			throw new ArgumentNullException("virtualPath");
		}
		Type typeFromControlPath = GetTypeFromControlPath(virtualPath);
		return LoadControl(typeFromControlPath, null);
	}

	public Control LoadControl(Type t, object[] parameters)
	{
		object[] array = null;
		if (t != null)
		{
			t.GetCustomAttributes(typeof(PartialCachingAttribute), inherit: true);
		}
		if (array != null && array.Length == 1)
		{
			PartialCachingAttribute partialCachingAttribute = (PartialCachingAttribute)array[0];
			return new PartialCachingControl(t, parameters)
			{
				VaryByParams = partialCachingAttribute.VaryByParams,
				VaryByControls = partialCachingAttribute.VaryByControls,
				VaryByCustom = partialCachingAttribute.VaryByCustom
			};
		}
		object obj = Activator.CreateInstance(t, parameters);
		if (obj is UserControl)
		{
			((UserControl)obj).InitializeAsUserControl(Page);
		}
		return (Control)obj;
	}

	public ITemplate LoadTemplate(string virtualPath)
	{
		if (virtualPath == null)
		{
			throw new ArgumentNullException("virtualPath");
		}
		return new SimpleTemplate(GetTypeFromControlPath(virtualPath));
	}

	protected virtual void OnAbortTransaction(EventArgs e)
	{
		if (Events[abortTransaction] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected virtual void OnCommitTransaction(EventArgs e)
	{
		if (Events[commitTransaction] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected virtual void OnError(EventArgs e)
	{
		if (Events[error] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	public Control ParseControl(string content)
	{
		if (content == null)
		{
			throw new ArgumentNullException("content");
		}
		Type compiledType = UserControlParser.GetCompiledType(new StringReader(content), content.GetHashCode(), HttpContext.Current);
		if (compiledType == null)
		{
			return null;
		}
		if (!(Activator.CreateInstance(compiledType, null) is TemplateControl templateControl))
		{
			return null;
		}
		if (this is Page)
		{
			templateControl.Page = (Page)this;
		}
		templateControl.FrameworkInitialize();
		Control control = new Control();
		int count = templateControl.Controls.Count;
		Control[] array = new Control[count];
		templateControl.Controls.CopyTo(array, 0);
		for (int i = 0; i < count; i++)
		{
			control.Controls.Add(array[i]);
		}
		TemplateControl templateControl2 = null;
		return control;
	}

	[MonoTODO("Parser filters not implemented yet. Calls ParseControl (string) for now.")]
	public Control ParseControl(string content, bool ignoreParserFilter)
	{
		return ParseControl(content);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public object ReadStringResource()
	{
		return ReadStringResource(GetType());
	}

	protected object GetGlobalResourceObject(string className, string resourceKey)
	{
		return HttpContext.GetGlobalResourceObject(className, resourceKey);
	}

	protected object GetGlobalResourceObject(string className, string resourceKey, Type objType, string propName)
	{
		if (string.IsNullOrEmpty(resourceKey) || string.IsNullOrEmpty(propName) || string.IsNullOrEmpty(className) || objType == null)
		{
			return null;
		}
		object globalResourceObject = GetGlobalResourceObject(className, resourceKey);
		if (globalResourceObject == null)
		{
			return null;
		}
		TypeConverter converter = TypeDescriptor.GetProperties(objType)[propName].Converter;
		if (converter == null || !converter.CanConvertFrom(globalResourceObject.GetType()))
		{
			return null;
		}
		return converter.ConvertFrom(globalResourceObject);
	}

	protected object GetLocalResourceObject(string resourceKey)
	{
		return HttpContext.GetLocalResourceObject(VirtualPathUtility.ToAbsolute(AppRelativeVirtualPath), resourceKey);
	}

	protected object GetLocalResourceObject(string resourceKey, Type objType, string propName)
	{
		if (string.IsNullOrEmpty(resourceKey) || string.IsNullOrEmpty(propName) || objType == null)
		{
			return null;
		}
		object localResourceObject = GetLocalResourceObject(resourceKey);
		if (localResourceObject == null)
		{
			return null;
		}
		TypeConverter converter = TypeDescriptor.GetProperties(objType)[propName].Converter;
		if (converter == null || !converter.CanConvertFrom(localResourceObject.GetType()))
		{
			return null;
		}
		return converter.ConvertFrom(localResourceObject);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public static object ReadStringResource(Type t)
	{
		StringResourceData stringResourceData = new StringResourceData();
		if (ICalls.GetUnmanagedResourcesPtr(t.Assembly, out stringResourceData.Ptr, out stringResourceData.Length))
		{
			return stringResourceData;
		}
		throw new HttpException("Unable to load the string resources.");
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected void SetStringResourcePointer(object stringResourcePointer, int maxResourceOffset)
	{
		if (stringResourcePointer is StringResourceData stringResourceData)
		{
			if (maxResourceOffset < 0 || maxResourceOffset > stringResourceData.Length)
			{
				throw new ArgumentOutOfRangeException("maxResourceOffset");
			}
			resource_data = new StringResourceData();
			resource_data.Ptr = stringResourceData.Ptr;
			resource_data.Length = stringResourceData.Length;
			resource_data.MaxOffset = ((maxResourceOffset > 0) ? Math.Min(maxResourceOffset, stringResourceData.Length) : stringResourceData.Length);
		}
	}

	private static IntPtr AddOffset(IntPtr ptr, int offset)
	{
		if (offset == 0)
		{
			return ptr;
		}
		if (IntPtr.Size == 4)
		{
			int value = ptr.ToInt32() + offset;
			ptr = new IntPtr(value);
		}
		else
		{
			long value2 = ptr.ToInt64() + offset;
			ptr = new IntPtr(value2);
		}
		return ptr;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected void WriteUTF8ResourceString(HtmlTextWriter output, int offset, int size, bool fAsciiOnly)
	{
		if (resource_data != null)
		{
			if (output == null)
			{
				throw new ArgumentNullException("output");
			}
			if (offset > resource_data.MaxOffset - size)
			{
				throw new ArgumentOutOfRangeException("size");
			}
			IntPtr intPtr = AddOffset(resource_data.Ptr, offset);
			HttpWriter httpWriter = output.GetHttpWriter();
			if (httpWriter == null || httpWriter.Response.ContentEncoding.CodePage != 65001)
			{
				byte[] array = new byte[size];
				Marshal.Copy(intPtr, array, 0, size);
				output.Write(Encoding.UTF8.GetString(array));
				array = null;
			}
			else
			{
				httpWriter.WriteUTF8Ptr(intPtr, size);
			}
		}
	}

	protected internal object Eval(string expression)
	{
		return DataBinder.Eval(Page.GetDataItem(), expression);
	}

	protected internal string Eval(string expression, string format)
	{
		return DataBinder.Eval(Page.GetDataItem(), expression, format);
	}

	protected internal object XPath(string xPathExpression)
	{
		return XPathBinder.Eval(Page.GetDataItem(), xPathExpression);
	}

	protected internal object XPath(string xPathExpression, IXmlNamespaceResolver resolver)
	{
		return XPathBinder.Eval(Page.GetDataItem(), xPathExpression, null, resolver);
	}

	protected internal string XPath(string xPathExpression, string format)
	{
		return XPathBinder.Eval(Page.GetDataItem(), xPathExpression, format);
	}

	protected internal string XPath(string xPathExpression, string format, IXmlNamespaceResolver resolver)
	{
		return XPathBinder.Eval(Page.GetDataItem(), xPathExpression, format, resolver);
	}

	protected internal IEnumerable XPathSelect(string xPathExpression)
	{
		return XPathBinder.Select(Page.GetDataItem(), xPathExpression);
	}

	protected internal IEnumerable XPathSelect(string xPathExpression, IXmlNamespaceResolver resolver)
	{
		return XPathBinder.Select(Page.GetDataItem(), xPathExpression, resolver);
	}

	[MonoTODO("Not implemented")]
	int IFilterResolutionService.CompareFilters(string filter1, string filter2)
	{
		throw new NotImplementedException();
	}

	[MonoTODO("Not implemented")]
	bool IFilterResolutionService.EvaluateFilter(string filterName)
	{
		throw new NotImplementedException();
	}

	public virtual bool TestDeviceFilter(string filterName)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
