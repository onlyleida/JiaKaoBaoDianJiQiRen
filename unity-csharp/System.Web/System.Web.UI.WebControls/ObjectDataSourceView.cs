using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Data;
using System.Reflection;
using System.Runtime.CompilerServices;
using Unity;

namespace System.Web.UI.WebControls;

public class ObjectDataSourceView : DataSourceView, IStateManager
{
	private ObjectDataSource owner;

	private HttpContext context;

	private Type objectType;

	private Type dataObjectType;

	private bool convertNullToDBNull;

	private bool enablePaging;

	private string dataObjectTypeName;

	private string filterExpression;

	private string maximumRowsParameterName;

	private string oldValuesParameterFormatString;

	private string deleteMethod;

	private string insertMethod;

	private string selectCountMethod;

	private string selectMethod;

	private string sortParameterName;

	private string startRowIndexParameterName;

	private string typeName;

	private string updateMethod;

	private bool isTrackingViewState;

	private ParameterCollection selectParameters;

	private ParameterCollection updateParameters;

	private ParameterCollection deleteParameters;

	private ParameterCollection insertParameters;

	private ParameterCollection filterParameters;

	private static readonly object DeletedEvent = new object();

	private static readonly object DeletingEvent = new object();

	private static readonly object FilteringEvent = new object();

	private static readonly object InsertedEvent = new object();

	private static readonly object InsertingEvent = new object();

	private static readonly object ObjectCreatedEvent = new object();

	private static readonly object ObjectCreatingEvent = new object();

	private static readonly object ObjectDisposingEvent = new object();

	private static readonly object SelectedEvent = new object();

	private static readonly object SelectingEvent = new object();

	private static readonly object UpdatedEvent = new object();

	private static readonly object UpdatingEvent = new object();

	private ConflictOptions conflictDetection;

	public override bool CanDelete => DeleteMethod.Length > 0;

	public override bool CanInsert => InsertMethod.Length > 0;

	public override bool CanPage => EnablePaging;

	public override bool CanRetrieveTotalRowCount
	{
		get
		{
			if (SelectCountMethod.Length > 0)
			{
				return true;
			}
			return !EnablePaging;
		}
	}

	public override bool CanSort => true;

	public override bool CanUpdate => UpdateMethod.Length > 0;

	public ConflictOptions ConflictDetection
	{
		get
		{
			return conflictDetection;
		}
		set
		{
			if (ConflictDetection != value)
			{
				conflictDetection = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public bool ConvertNullToDBNull
	{
		get
		{
			return convertNullToDBNull;
		}
		set
		{
			convertNullToDBNull = value;
		}
	}

	public string DataObjectTypeName
	{
		get
		{
			if (dataObjectTypeName == null)
			{
				return string.Empty;
			}
			return dataObjectTypeName;
		}
		set
		{
			if (!(DataObjectTypeName == value))
			{
				dataObjectTypeName = value;
				dataObjectType = null;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public string DeleteMethod
	{
		get
		{
			if (deleteMethod == null)
			{
				return string.Empty;
			}
			return deleteMethod;
		}
		set
		{
			deleteMethod = value;
		}
	}

	public ParameterCollection DeleteParameters
	{
		get
		{
			if (deleteParameters == null)
			{
				deleteParameters = new ParameterCollection();
			}
			return deleteParameters;
		}
	}

	public bool EnablePaging
	{
		get
		{
			return enablePaging;
		}
		set
		{
			if (EnablePaging != value)
			{
				enablePaging = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public string FilterExpression
	{
		get
		{
			if (filterExpression == null)
			{
				return string.Empty;
			}
			return filterExpression;
		}
		set
		{
			if (!(FilterExpression == value))
			{
				filterExpression = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public ParameterCollection FilterParameters
	{
		get
		{
			if (filterParameters == null)
			{
				filterParameters = new ParameterCollection();
				filterParameters.ParametersChanged += OnParametersChanged;
				if (IsTrackingViewState)
				{
					((IStateManager)filterParameters).TrackViewState();
				}
			}
			return filterParameters;
		}
	}

	public string InsertMethod
	{
		get
		{
			if (insertMethod == null)
			{
				return string.Empty;
			}
			return insertMethod;
		}
		set
		{
			insertMethod = value;
		}
	}

	public ParameterCollection InsertParameters
	{
		get
		{
			if (insertParameters == null)
			{
				insertParameters = new ParameterCollection();
			}
			return insertParameters;
		}
	}

	public string MaximumRowsParameterName
	{
		get
		{
			if (maximumRowsParameterName == null)
			{
				return "maximumRows";
			}
			return maximumRowsParameterName;
		}
		set
		{
			if (!(MaximumRowsParameterName == value))
			{
				maximumRowsParameterName = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue("{0}")]
	public string OldValuesParameterFormatString
	{
		get
		{
			if (oldValuesParameterFormatString == null)
			{
				return "{0}";
			}
			return oldValuesParameterFormatString;
		}
		set
		{
			if (!(OldValuesParameterFormatString == value))
			{
				oldValuesParameterFormatString = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public string SelectCountMethod
	{
		get
		{
			if (selectCountMethod == null)
			{
				return string.Empty;
			}
			return selectCountMethod;
		}
		set
		{
			if (!(SelectCountMethod == value))
			{
				selectCountMethod = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public string SelectMethod
	{
		get
		{
			if (selectMethod == null)
			{
				return string.Empty;
			}
			return selectMethod;
		}
		set
		{
			if (!(SelectMethod == value))
			{
				selectMethod = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public ParameterCollection SelectParameters
	{
		get
		{
			if (selectParameters == null)
			{
				selectParameters = new ParameterCollection();
				selectParameters.ParametersChanged += OnParametersChanged;
				if (IsTrackingViewState)
				{
					((IStateManager)selectParameters).TrackViewState();
				}
			}
			return selectParameters;
		}
	}

	public string SortParameterName
	{
		get
		{
			if (sortParameterName == null)
			{
				return string.Empty;
			}
			return sortParameterName;
		}
		set
		{
			sortParameterName = value;
		}
	}

	public string StartRowIndexParameterName
	{
		get
		{
			if (startRowIndexParameterName == null)
			{
				return "startRowIndex";
			}
			return startRowIndexParameterName;
		}
		set
		{
			if (!(StartRowIndexParameterName == value))
			{
				startRowIndexParameterName = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public string TypeName
	{
		get
		{
			if (typeName == null)
			{
				return string.Empty;
			}
			return typeName;
		}
		set
		{
			if (!(TypeName == value))
			{
				typeName = value;
				objectType = null;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public string UpdateMethod
	{
		get
		{
			if (updateMethod == null)
			{
				return string.Empty;
			}
			return updateMethod;
		}
		set
		{
			updateMethod = value;
		}
	}

	public ParameterCollection UpdateParameters
	{
		get
		{
			if (updateParameters == null)
			{
				updateParameters = new ParameterCollection();
			}
			return updateParameters;
		}
	}

	private Type ObjectType
	{
		get
		{
			if (objectType == null)
			{
				objectType = HttpApplication.LoadType(TypeName);
				if (objectType == null)
				{
					throw new InvalidOperationException("Type not found: " + TypeName);
				}
			}
			return objectType;
		}
	}

	private Type DataObjectType
	{
		get
		{
			if (dataObjectType == null)
			{
				dataObjectType = HttpApplication.LoadType(DataObjectTypeName);
				if (dataObjectType == null)
				{
					throw new InvalidOperationException("Type not found: " + DataObjectTypeName);
				}
			}
			return dataObjectType;
		}
	}

	protected bool IsTrackingViewState => isTrackingViewState;

	bool IStateManager.IsTrackingViewState => IsTrackingViewState;

	public ParsingCulture ParsingCulture
	{
		[CompilerGenerated]
		get
		{
			ThrowStub.ThrowNotSupportedException();
			return default;
		}
		[CompilerGenerated]
		set
		{
			ThrowStub.ThrowNotSupportedException();
		}
	}

	public event ObjectDataSourceStatusEventHandler Deleted
	{
		add
		{
			Events.AddHandler(DeletedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(DeletedEvent, value);
		}
	}

	public event ObjectDataSourceMethodEventHandler Deleting
	{
		add
		{
			Events.AddHandler(DeletingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(DeletingEvent, value);
		}
	}

	public event ObjectDataSourceFilteringEventHandler Filtering
	{
		add
		{
			Events.AddHandler(FilteringEvent, value);
		}
		remove
		{
			Events.RemoveHandler(FilteringEvent, value);
		}
	}

	public event ObjectDataSourceStatusEventHandler Inserted
	{
		add
		{
			Events.AddHandler(InsertedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(InsertedEvent, value);
		}
	}

	public event ObjectDataSourceMethodEventHandler Inserting
	{
		add
		{
			Events.AddHandler(InsertingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(InsertingEvent, value);
		}
	}

	public event ObjectDataSourceObjectEventHandler ObjectCreated
	{
		add
		{
			Events.AddHandler(ObjectCreatedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ObjectCreatedEvent, value);
		}
	}

	public event ObjectDataSourceObjectEventHandler ObjectCreating
	{
		add
		{
			Events.AddHandler(ObjectCreatingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ObjectCreatingEvent, value);
		}
	}

	public event ObjectDataSourceDisposingEventHandler ObjectDisposing
	{
		add
		{
			Events.AddHandler(ObjectDisposingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(ObjectDisposingEvent, value);
		}
	}

	public event ObjectDataSourceStatusEventHandler Selected
	{
		add
		{
			Events.AddHandler(SelectedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(SelectedEvent, value);
		}
	}

	public event ObjectDataSourceSelectingEventHandler Selecting
	{
		add
		{
			Events.AddHandler(SelectingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(SelectingEvent, value);
		}
	}

	public event ObjectDataSourceStatusEventHandler Updated
	{
		add
		{
			Events.AddHandler(UpdatedEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UpdatedEvent, value);
		}
	}

	public event ObjectDataSourceMethodEventHandler Updating
	{
		add
		{
			Events.AddHandler(UpdatingEvent, value);
		}
		remove
		{
			Events.RemoveHandler(UpdatingEvent, value);
		}
	}

	public ObjectDataSourceView(ObjectDataSource owner, string name, HttpContext context)
		: base(owner, name)
	{
		this.owner = owner;
		this.context = context;
	}

	protected virtual void OnDeleted(ObjectDataSourceStatusEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceStatusEventHandler)Events[DeletedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnDeleting(ObjectDataSourceMethodEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceMethodEventHandler)Events[DeletingEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnFiltering(ObjectDataSourceFilteringEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceFilteringEventHandler)Events[FilteringEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnInserted(ObjectDataSourceStatusEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceStatusEventHandler)Events[InsertedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnInserting(ObjectDataSourceMethodEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceMethodEventHandler)Events[InsertingEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnObjectCreated(ObjectDataSourceEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceObjectEventHandler)Events[ObjectCreatedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnObjectCreating(ObjectDataSourceEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceObjectEventHandler)Events[ObjectCreatingEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnObjectDisposing(ObjectDataSourceDisposingEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceDisposingEventHandler)Events[ObjectDisposingEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnSelected(ObjectDataSourceStatusEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceStatusEventHandler)Events[SelectedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnSelecting(ObjectDataSourceSelectingEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceSelectingEventHandler)Events[SelectingEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnUpdated(ObjectDataSourceStatusEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceStatusEventHandler)Events[UpdatedEvent])?.Invoke(this, e);
		}
	}

	protected virtual void OnUpdating(ObjectDataSourceMethodEventArgs e)
	{
		if (Events != null)
		{
			((ObjectDataSourceMethodEventHandler)Events[UpdatingEvent])?.Invoke(this, e);
		}
	}

	public IEnumerable Select(DataSourceSelectArguments arguments)
	{
		return ExecuteSelect(arguments);
	}

	public int Update(IDictionary keys, IDictionary values, IDictionary oldValues)
	{
		return ExecuteUpdate(keys, values, oldValues);
	}

	public int Delete(IDictionary keys, IDictionary oldValues)
	{
		return ExecuteDelete(keys, oldValues);
	}

	public int Insert(IDictionary values)
	{
		return ExecuteInsert(values);
	}

	protected override int ExecuteInsert(IDictionary values)
	{
		if (!CanInsert)
		{
			throw new NotSupportedException("Insert operation not supported.");
		}
		IOrderedDictionary paramValues;
		MethodInfo method;
		if (DataObjectTypeName.Length == 0)
		{
			paramValues = MergeParameterValues(InsertParameters, values, null);
			method = GetObjectMethod(InsertMethod, paramValues, DataObjectMethodType.Insert);
		}
		else
		{
			method = ResolveDataObjectMethod(InsertMethod, values, null, out paramValues);
		}
		ObjectDataSourceMethodEventArgs e = new ObjectDataSourceMethodEventArgs(paramValues);
		OnInserting(e);
		if (e.Cancel)
		{
			return -1;
		}
		ObjectDataSourceStatusEventArgs e2 = InvokeMethod(method, paramValues);
		OnInserted(e2);
		if (e2.Exception != null && !e2.ExceptionHandled)
		{
			throw e2.Exception;
		}
		if (owner.EnableCaching)
		{
			owner.Cache.Expire();
		}
		OnDataSourceViewChanged(EventArgs.Empty);
		return -1;
	}

	protected override int ExecuteDelete(IDictionary keys, IDictionary oldValues)
	{
		if (!CanDelete)
		{
			throw new NotSupportedException("Delete operation not supported.");
		}
		if (ConflictDetection == ConflictOptions.CompareAllValues && (oldValues == null || oldValues.Count == 0))
		{
			throw new InvalidOperationException("ConflictDetection is set to CompareAllValues and oldValues collection is null or empty.");
		}
		IDictionary dictionary = BuildOldValuesList(keys, oldValues, keysWin: false);
		IOrderedDictionary paramValues;
		MethodInfo method;
		if (DataObjectTypeName.Length == 0)
		{
			paramValues = MergeParameterValues(DeleteParameters, null, dictionary);
			method = GetObjectMethod(DeleteMethod, paramValues, DataObjectMethodType.Delete);
		}
		else
		{
			method = ResolveDataObjectMethod(DeleteMethod, dictionary, null, out paramValues);
		}
		ObjectDataSourceMethodEventArgs e = new ObjectDataSourceMethodEventArgs(paramValues);
		OnDeleting(e);
		if (e.Cancel)
		{
			return -1;
		}
		ObjectDataSourceStatusEventArgs e2 = InvokeMethod(method, paramValues);
		OnDeleted(e2);
		if (e2.Exception != null && !e2.ExceptionHandled)
		{
			throw e2.Exception;
		}
		if (owner.EnableCaching)
		{
			owner.Cache.Expire();
		}
		OnDataSourceViewChanged(EventArgs.Empty);
		return -1;
	}

	protected override int ExecuteUpdate(IDictionary keys, IDictionary values, IDictionary oldValues)
	{
		IDictionary oldValues2 = BuildOldValuesList(keys, oldValues, keysWin: true);
		IOrderedDictionary paramValues;
		MethodInfo method;
		if (DataObjectTypeName.Length == 0)
		{
			paramValues = MergeParameterValues(UpdateParameters, values, oldValues2);
			method = GetObjectMethod(UpdateMethod, paramValues, DataObjectMethodType.Update);
		}
		else
		{
			if (ConflictDetection != ConflictOptions.CompareAllValues)
			{
				oldValues2 = null;
			}
			IDictionary dictionary = new Hashtable();
			if (keys != null)
			{
				foreach (DictionaryEntry key in keys)
				{
					dictionary[key.Key] = key.Value;
				}
			}
			if (values != null)
			{
				foreach (DictionaryEntry value in values)
				{
					dictionary[value.Key] = value.Value;
				}
			}
			method = ResolveDataObjectMethod(UpdateMethod, dictionary, oldValues2, out paramValues);
		}
		ObjectDataSourceMethodEventArgs e = new ObjectDataSourceMethodEventArgs(paramValues);
		OnUpdating(e);
		if (e.Cancel)
		{
			return -1;
		}
		ObjectDataSourceStatusEventArgs e2 = InvokeMethod(method, paramValues);
		OnUpdated(e2);
		if (e2.Exception != null && !e2.ExceptionHandled)
		{
			throw e2.Exception;
		}
		if (owner.EnableCaching)
		{
			owner.Cache.Expire();
		}
		OnDataSourceViewChanged(EventArgs.Empty);
		return -1;
	}

	private IDictionary BuildOldValuesList(IDictionary keys, IDictionary oldValues, bool keysWin)
	{
		IDictionary dictionary;
		if (ConflictDetection == ConflictOptions.CompareAllValues)
		{
			dictionary = new Hashtable();
			if (keys != null && !keysWin)
			{
				foreach (DictionaryEntry key in keys)
				{
					dictionary[key.Key] = key.Value;
				}
			}
			if (oldValues != null)
			{
				foreach (DictionaryEntry oldValue in oldValues)
				{
					dictionary[oldValue.Key] = oldValue.Value;
				}
			}
			if ((keys != null) & keysWin)
			{
				foreach (DictionaryEntry key2 in keys)
				{
					dictionary[key2.Key] = key2.Value;
				}
			}
		}
		else
		{
			dictionary = keys;
		}
		return dictionary;
	}

	protected internal override IEnumerable ExecuteSelect(DataSourceSelectArguments arguments)
	{
		arguments.RaiseUnsupportedCapabilitiesError(this);
		IOrderedDictionary orderedDictionary = MergeParameterValues(SelectParameters, null, null);
		ObjectDataSourceSelectingEventArgs e = new ObjectDataSourceSelectingEventArgs(orderedDictionary, arguments, executingSelectCount: false);
		object obj = null;
		if (owner.EnableCaching)
		{
			obj = owner.Cache.GetCachedObject(SelectMethod, SelectParameters);
		}
		if (obj == null)
		{
			OnSelecting(e);
			if (e.Cancel)
			{
				return new ArrayList();
			}
			if (CanPage)
			{
				if (StartRowIndexParameterName.Length == 0)
				{
					throw new InvalidOperationException("Paging is enabled, but the StartRowIndexParameterName property is not set.");
				}
				if (MaximumRowsParameterName.Length == 0)
				{
					throw new InvalidOperationException("Paging is enabled, but the MaximumRowsParameterName property is not set.");
				}
				orderedDictionary[StartRowIndexParameterName] = arguments.StartRowIndex;
				orderedDictionary[MaximumRowsParameterName] = arguments.MaximumRows;
			}
			if (SortParameterName.Length > 0)
			{
				orderedDictionary[SortParameterName] = arguments.SortExpression;
			}
			obj = InvokeSelect(SelectMethod, orderedDictionary);
			if (CanRetrieveTotalRowCount && arguments.RetrieveTotalRowCount)
			{
				arguments.TotalRowCount = QueryTotalRowCount(MergeParameterValues(SelectParameters, null, null), arguments);
			}
			if (owner.EnableCaching)
			{
				owner.Cache.SetCachedObject(SelectMethod, SelectParameters, obj);
			}
		}
		if (FilterExpression.Length > 0 && !(obj is DataGrid) && !(obj is DataView) && !(obj is DataTable))
		{
			throw new NotSupportedException("The FilterExpression property was set and the Select method does not return a DataSet, DataTable, or DataView.");
		}
		if (owner.EnableCaching && obj is IDataReader)
		{
			throw new NotSupportedException("Data source does not support caching objects that implement IDataReader");
		}
		if (obj is DataSet)
		{
			DataSet dataSet = (DataSet)obj;
			if (dataSet.Tables.Count == 0)
			{
				throw new InvalidOperationException("The select method returnet a DataSet which doesn't contain any table.");
			}
			obj = dataSet.Tables[0];
		}
		if (obj is DataTable)
		{
			DataView dataView = new DataView((DataTable)obj);
			if (arguments.SortExpression != null && arguments.SortExpression.Length > 0)
			{
				dataView.Sort = arguments.SortExpression;
			}
			if (FilterExpression.Length > 0)
			{
				IOrderedDictionary values = FilterParameters.GetValues(context, owner);
				ObjectDataSourceFilteringEventArgs e2 = new ObjectDataSourceFilteringEventArgs(values);
				OnFiltering(e2);
				if (!e2.Cancel)
				{
					object[] array = new object[values.Count];
					for (int i = 0; i < array.Length; i++)
					{
						array[i] = values[i];
						if (array[i] == null)
						{
							return dataView;
						}
					}
					dataView.RowFilter = string.Format(FilterExpression, array);
				}
			}
			return dataView;
		}
		if (obj is IEnumerable)
		{
			return (IEnumerable)obj;
		}
		return new object[1] { obj };
	}

	private int QueryTotalRowCount(IOrderedDictionary mergedParameters, DataSourceSelectArguments arguments)
	{
		ObjectDataSourceSelectingEventArgs e = new ObjectDataSourceSelectingEventArgs(mergedParameters, arguments, executingSelectCount: true);
		OnSelecting(e);
		if (e.Cancel)
		{
			return 0;
		}
		return (int)Convert.ChangeType(InvokeSelect(SelectCountMethod, mergedParameters), typeof(int));
	}

	private object InvokeSelect(string methodName, IOrderedDictionary paramValues)
	{
		MethodInfo objectMethod = GetObjectMethod(methodName, paramValues, DataObjectMethodType.Select);
		ObjectDataSourceStatusEventArgs e = InvokeMethod(objectMethod, paramValues);
		OnSelected(e);
		if (e.Exception != null && !e.ExceptionHandled)
		{
			throw e.Exception;
		}
		return e.ReturnValue;
	}

	private ObjectDataSourceStatusEventArgs InvokeMethod(MethodInfo method, IOrderedDictionary paramValues)
	{
		object obj = null;
		if (!method.IsStatic)
		{
			obj = CreateObjectInstance();
		}
		ParameterInfo[] parameters = method.GetParameters();
		object[] parameterArray = GetParameterArray(parameters, paramValues, out var outParamInfos);
		if (parameterArray == null)
		{
			throw CreateMethodException(method.Name, paramValues);
		}
		object returnValue = null;
		Hashtable hashtable = null;
		try
		{
			returnValue = method.Invoke(obj, parameterArray);
			if (outParamInfos != null)
			{
				hashtable = new Hashtable();
				foreach (ParameterInfo item in outParamInfos)
				{
					hashtable[item.Name] = parameterArray[item.Position];
				}
			}
			return new ObjectDataSourceStatusEventArgs(returnValue, hashtable, null);
		}
		catch (Exception exception)
		{
			return new ObjectDataSourceStatusEventArgs(returnValue, hashtable, exception);
		}
		finally
		{
			if (obj != null)
			{
				DisposeObjectInstance(obj);
			}
		}
	}

	private MethodInfo GetObjectMethod(string methodName, IOrderedDictionary parameters, DataObjectMethodType methodType)
	{
		MemberInfo[] member = ObjectType.GetMember(methodName, MemberTypes.Method, BindingFlags.IgnoreCase | BindingFlags.Instance | BindingFlags.Static | BindingFlags.Public | BindingFlags.FlattenHierarchy);
		if (member.Length > 1)
		{
			DataObjectMethodAttribute dataObjectMethodAttribute = null;
			MethodInfo methodInfo = null;
			bool flag = false;
			MemberInfo[] array = member;
			for (int i = 0; i < array.Length; i++)
			{
				MethodInfo methodInfo2 = (MethodInfo)array[i];
				ParameterInfo[] parameters2 = methodInfo2.GetParameters();
				if (parameters2.Length != parameters.Count)
				{
					continue;
				}
				object[] customAttributes = methodInfo2.GetCustomAttributes(typeof(DataObjectMethodAttribute), inherit: true);
				DataObjectMethodAttribute dataObjectMethodAttribute2 = ((customAttributes != null && customAttributes.Length != 0) ? ((DataObjectMethodAttribute)customAttributes[0]) : null);
				if (dataObjectMethodAttribute2 != null && dataObjectMethodAttribute2.MethodType != methodType)
				{
					continue;
				}
				bool flag2 = true;
				ParameterInfo[] array2 = parameters2;
				foreach (ParameterInfo parameterInfo in array2)
				{
					if (!parameters.Contains(parameterInfo.Name))
					{
						flag2 = false;
						break;
					}
				}
				if (!flag2)
				{
					continue;
				}
				if (dataObjectMethodAttribute2 != null)
				{
					if (dataObjectMethodAttribute != null)
					{
						if (dataObjectMethodAttribute.IsDefault)
						{
							if (dataObjectMethodAttribute2.IsDefault)
							{
								methodInfo = null;
								break;
							}
							continue;
						}
						methodInfo = null;
						flag = !dataObjectMethodAttribute2.IsDefault;
					}
					else
					{
						methodInfo = null;
					}
				}
				if (methodInfo == null)
				{
					dataObjectMethodAttribute = dataObjectMethodAttribute2;
					methodInfo = methodInfo2;
				}
				else
				{
					flag = true;
				}
			}
			if (!flag && methodInfo != null)
			{
				return methodInfo;
			}
		}
		else if (member.Length == 1)
		{
			MethodInfo methodInfo3 = member[0] as MethodInfo;
			if (methodInfo3 != null && methodInfo3.GetParameters().Length == parameters.Count)
			{
				return methodInfo3;
			}
		}
		throw CreateMethodException(methodName, parameters);
	}

	private MethodInfo ResolveDataObjectMethod(string methodName, IDictionary values, IDictionary oldValues, out IOrderedDictionary paramValues)
	{
		MethodInfo methodInfo = ((oldValues == null) ? ObjectType.GetMethod(methodName, new Type[1] { DataObjectType }) : ObjectType.GetMethod(methodName, new Type[2] { DataObjectType, DataObjectType }));
		if (methodInfo == null)
		{
			throw new InvalidOperationException(string.Concat("ObjectDataSource ", owner.ID, " could not find a method named '", methodName, "' with parameters of type '", DataObjectType, "' in '", ObjectType, "'."));
		}
		paramValues = new OrderedDictionary(StringComparer.InvariantCultureIgnoreCase);
		ParameterInfo[] parameters = methodInfo.GetParameters();
		if (oldValues != null)
		{
			if (FormatOldParameter(parameters[0].Name) == parameters[1].Name)
			{
				paramValues[parameters[0].Name] = CreateDataObject(values);
				paramValues[parameters[1].Name] = CreateDataObject(oldValues);
			}
			else
			{
				if (!(FormatOldParameter(parameters[1].Name) == parameters[0].Name))
				{
					throw new InvalidOperationException("Method '" + methodName + "' does not have any parameter that fits the value of OldValuesParameterFormatString.");
				}
				paramValues[parameters[0].Name] = CreateDataObject(oldValues);
				paramValues[parameters[1].Name] = CreateDataObject(values);
			}
		}
		else
		{
			paramValues[parameters[0].Name] = CreateDataObject(values);
		}
		return methodInfo;
	}

	private Exception CreateMethodException(string methodName, IOrderedDictionary parameters)
	{
		string text = "";
		foreach (string key in parameters.Keys)
		{
			text = text + key + ", ";
		}
		return new InvalidOperationException(string.Concat("ObjectDataSource ", owner.ID, " could not find a method named '", methodName, "' with parameters ", text, "in type '", ObjectType, "'."));
	}

	private object CreateDataObject(IDictionary values)
	{
		object obj = Activator.CreateInstance(DataObjectType);
		foreach (DictionaryEntry value2 in values)
		{
			PropertyInfo property = DataObjectType.GetProperty((string)value2.Key);
			if (property == null)
			{
				throw new InvalidOperationException(string.Concat("Property ", value2.Key, " not found in type '", DataObjectType, "'."));
			}
			object[] customAttributes = property.GetCustomAttributes(typeof(TypeConverterAttribute), inherit: true);
			Type propertyType = property.PropertyType;
			object value = value2.Value;
			object obj2 = ConvertParameterWithTypeConverter(customAttributes, propertyType, value);
			if (obj2 == null)
			{
				obj2 = ConvertParameter(propertyType, value);
			}
			property.SetValue(obj, obj2, null);
		}
		return obj;
	}

	private object CreateObjectInstance()
	{
		ObjectDataSourceEventArgs e = new ObjectDataSourceEventArgs(null);
		OnObjectCreating(e);
		if (e.ObjectInstance != null)
		{
			return e.ObjectInstance;
		}
		object objectInstance = Activator.CreateInstance(ObjectType);
		e.ObjectInstance = objectInstance;
		OnObjectCreated(e);
		return e.ObjectInstance;
	}

	private void DisposeObjectInstance(object obj)
	{
		ObjectDataSourceDisposingEventArgs e = new ObjectDataSourceDisposingEventArgs(obj);
		OnObjectDisposing(e);
		if (!e.Cancel && obj is IDisposable disposable)
		{
			disposable.Dispose();
		}
	}

	private object FindValueByName(string name, IDictionary values, bool format)
	{
		if (values == null)
		{
			return null;
		}
		foreach (DictionaryEntry value in values)
		{
			string strB = (format ? FormatOldParameter(value.Key.ToString()) : value.Key.ToString());
			if (string.Compare(name, strB, StringComparison.InvariantCultureIgnoreCase) == 0)
			{
				return values[value.Key];
			}
		}
		return null;
	}

	private IOrderedDictionary MergeParameterValues(ParameterCollection viewParams, IDictionary values, IDictionary oldValues)
	{
		IOrderedDictionary values2 = viewParams.GetValues(context, owner);
		OrderedDictionary orderedDictionary = new OrderedDictionary(StringComparer.InvariantCultureIgnoreCase);
		foreach (string key in values2.Keys)
		{
			orderedDictionary[key] = values2[key];
			if (oldValues != null)
			{
				object obj = FindValueByName(key, oldValues, format: true);
				if (obj != null)
				{
					object value = viewParams[key].ConvertValue(obj);
					orderedDictionary[key] = value;
				}
			}
			if (values != null)
			{
				object obj2 = FindValueByName(key, values, format: false);
				if (obj2 != null)
				{
					object value2 = viewParams[key].ConvertValue(obj2);
					orderedDictionary[key] = value2;
				}
			}
		}
		if (values != null)
		{
			foreach (DictionaryEntry value3 in values)
			{
				if (FindValueByName((string)value3.Key, orderedDictionary, format: false) == null)
				{
					orderedDictionary[value3.Key] = value3.Value;
				}
			}
		}
		if (oldValues != null)
		{
			foreach (DictionaryEntry oldValue in oldValues)
			{
				string text2 = FormatOldParameter((string)oldValue.Key);
				if (FindValueByName(text2, orderedDictionary, format: false) == null)
				{
					orderedDictionary[text2] = oldValue.Value;
				}
			}
		}
		return orderedDictionary;
	}

	private object[] GetParameterArray(ParameterInfo[] methodParams, IOrderedDictionary viewParams, out ArrayList outParamInfos)
	{
		outParamInfos = null;
		object[] array = new object[methodParams.Length];
		foreach (ParameterInfo parameterInfo in methodParams)
		{
			if (!viewParams.Contains(parameterInfo.Name))
			{
				return null;
			}
			array[parameterInfo.Position] = ConvertParameter(parameterInfo.ParameterType, viewParams[parameterInfo.Name]);
			if (parameterInfo.ParameterType.IsByRef)
			{
				if (outParamInfos == null)
				{
					outParamInfos = new ArrayList();
				}
				outParamInfos.Add(parameterInfo);
			}
		}
		return array;
	}

	private object ConvertParameterWithTypeConverter(object[] attributes, Type targetType, object value)
	{
		if (attributes == null || attributes.Length == 0 || value == null)
		{
			return null;
		}
		for (int i = 0; i < attributes.Length; i++)
		{
			if (!(attributes[i] is TypeConverterAttribute typeConverterAttribute))
			{
				continue;
			}
			Type type = HttpApplication.LoadType(typeConverterAttribute.ConverterTypeName, throwOnMissing: false);
			if (!(type == null) && Activator.CreateInstance(type, targetType) is TypeConverter typeConverter)
			{
				if (typeConverter.CanConvertFrom(value.GetType()))
				{
					return typeConverter.ConvertFrom(value);
				}
				if (typeConverter.CanConvertFrom(typeof(string)))
				{
					return typeConverter.ConvertFrom(value.ToString());
				}
			}
		}
		return null;
	}

	private object ConvertParameter(Type targetType, object value)
	{
		return ConvertParameter(Type.GetTypeCode(targetType), value);
	}

	private object ConvertParameter(TypeCode targetType, object value)
	{
		if (value == null)
		{
			if (targetType != TypeCode.Object && targetType != TypeCode.String)
			{
				value = 0;
			}
			else if (ConvertNullToDBNull)
			{
				return DBNull.Value;
			}
		}
		if (targetType == TypeCode.Object || targetType == TypeCode.Empty)
		{
			return value;
		}
		return Convert.ChangeType(value, targetType);
	}

	private string FormatOldParameter(string name)
	{
		string text = OldValuesParameterFormatString;
		if (text.Length > 0)
		{
			return string.Format(text, name);
		}
		return name;
	}

	private void OnParametersChanged(object sender, EventArgs args)
	{
		OnDataSourceViewChanged(EventArgs.Empty);
	}

	protected virtual void LoadViewState(object savedState)
	{
		object[] array = ((savedState == null) ? new object[5] : ((object[])savedState));
		((IStateManager)SelectParameters).LoadViewState(array[0]);
		((IStateManager)UpdateParameters).LoadViewState(array[1]);
		((IStateManager)DeleteParameters).LoadViewState(array[2]);
		((IStateManager)InsertParameters).LoadViewState(array[3]);
		((IStateManager)FilterParameters).LoadViewState(array[4]);
	}

	protected virtual object SaveViewState()
	{
		object[] array = new object[5];
		if (selectParameters != null)
		{
			array[0] = ((IStateManager)selectParameters).SaveViewState();
		}
		if (updateParameters != null)
		{
			array[1] = ((IStateManager)updateParameters).SaveViewState();
		}
		if (deleteParameters != null)
		{
			array[2] = ((IStateManager)deleteParameters).SaveViewState();
		}
		if (insertParameters != null)
		{
			array[3] = ((IStateManager)insertParameters).SaveViewState();
		}
		if (filterParameters != null)
		{
			array[4] = ((IStateManager)filterParameters).SaveViewState();
		}
		object[] array2 = array;
		for (int i = 0; i < array2.Length; i++)
		{
			if (array2[i] != null)
			{
				return array;
			}
		}
		return null;
	}

	protected virtual void TrackViewState()
	{
		isTrackingViewState = true;
		if (selectParameters != null)
		{
			((IStateManager)selectParameters).TrackViewState();
		}
		if (filterParameters != null)
		{
			((IStateManager)filterParameters).TrackViewState();
		}
	}

	void IStateManager.TrackViewState()
	{
		TrackViewState();
	}

	void IStateManager.LoadViewState(object savedState)
	{
		LoadViewState(savedState);
	}

	object IStateManager.SaveViewState()
	{
		return SaveViewState();
	}
}
