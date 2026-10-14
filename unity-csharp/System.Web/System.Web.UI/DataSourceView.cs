using System.Collections;
using System.ComponentModel;
using Unity;

namespace System.Web.UI;

public abstract class DataSourceView
{
	private string viewName = string.Empty;

	private EventHandlerList eventsList;

	private static readonly object EventDataSourceViewChanged = new object();

	public virtual bool CanDelete => false;

	public virtual bool CanInsert => false;

	public virtual bool CanPage => false;

	public virtual bool CanRetrieveTotalRowCount => false;

	public virtual bool CanSort => false;

	public virtual bool CanUpdate => false;

	protected EventHandlerList Events
	{
		get
		{
			if (eventsList == null)
			{
				eventsList = new EventHandlerList();
			}
			return eventsList;
		}
	}

	public string Name => viewName;

	public event EventHandler DataSourceViewChanged
	{
		add
		{
			Events.AddHandler(EventDataSourceViewChanged, value);
		}
		remove
		{
			Events.RemoveHandler(EventDataSourceViewChanged, value);
		}
	}

	protected DataSourceView(IDataSource owner, string viewName)
	{
		if (owner == null)
		{
			throw new ArgumentNullException("owner");
		}
		this.viewName = viewName;
		owner.DataSourceChanged += OnDataSourceChanged;
	}

	private void OnDataSourceChanged(object sender, EventArgs e)
	{
		OnDataSourceViewChanged(EventArgs.Empty);
	}

	public virtual void Delete(IDictionary keys, IDictionary oldValues, DataSourceViewOperationCallback callback)
	{
		if (callback == null)
		{
			throw new ArgumentNullException("callBack");
		}
		int affectedRecords;
		try
		{
			affectedRecords = ExecuteDelete(keys, oldValues);
		}
		catch (Exception ex)
		{
			if (!callback(0, ex))
			{
				throw;
			}
			return;
		}
		callback(affectedRecords, null);
	}

	protected virtual int ExecuteDelete(IDictionary keys, IDictionary oldValues)
	{
		throw new NotSupportedException();
	}

	protected virtual int ExecuteInsert(IDictionary values)
	{
		throw new NotSupportedException();
	}

	protected internal abstract IEnumerable ExecuteSelect(DataSourceSelectArguments arguments);

	protected virtual int ExecuteUpdate(IDictionary keys, IDictionary values, IDictionary oldValues)
	{
		throw new NotSupportedException();
	}

	public virtual void Insert(IDictionary values, DataSourceViewOperationCallback callback)
	{
		if (callback == null)
		{
			throw new ArgumentNullException("callback");
		}
		int affectedRecords;
		try
		{
			affectedRecords = ExecuteInsert(values);
		}
		catch (Exception ex)
		{
			if (!callback(0, ex))
			{
				throw;
			}
			return;
		}
		callback(affectedRecords, null);
	}

	protected virtual void OnDataSourceViewChanged(EventArgs e)
	{
		if (eventsList != null && eventsList[EventDataSourceViewChanged] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected internal virtual void RaiseUnsupportedCapabilityError(DataSourceCapabilities capability)
	{
		if ((capability & DataSourceCapabilities.Sort) != 0 && !CanSort)
		{
			throw new NotSupportedException("Sort Capabilites");
		}
		if ((capability & DataSourceCapabilities.Page) != 0 && !CanPage)
		{
			throw new NotSupportedException("Page Capabilites");
		}
		if ((capability & DataSourceCapabilities.RetrieveTotalRowCount) != 0 && !CanRetrieveTotalRowCount)
		{
			throw new NotSupportedException("RetrieveTotalRowCount Capabilites");
		}
	}

	public virtual void Select(DataSourceSelectArguments arguments, DataSourceViewSelectCallback callback)
	{
		if (callback == null)
		{
			throw new ArgumentNullException("callBack");
		}
		arguments.RaiseUnsupportedCapabilitiesError(this);
		IEnumerable data = ExecuteSelect(arguments);
		callback(data);
	}

	public virtual void Update(IDictionary keys, IDictionary values, IDictionary oldValues, DataSourceViewOperationCallback callback)
	{
		if (callback == null)
		{
			throw new ArgumentNullException("callback");
		}
		int affectedRecords;
		try
		{
			affectedRecords = ExecuteUpdate(keys, values, oldValues);
		}
		catch (Exception ex)
		{
			if (!callback(0, ex))
			{
				throw;
			}
			return;
		}
		callback(affectedRecords, null);
	}

	internal bool HasEvents()
	{
		return eventsList != null;
	}

	public virtual bool CanExecute(string commandName)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	protected virtual int ExecuteCommand(string commandName, IDictionary keys, IDictionary values)
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}

	public virtual void ExecuteCommand(string commandName, IDictionary keys, IDictionary values, DataSourceViewOperationCallback callback)
	{
		ThrowStub.ThrowNotSupportedException();
	}
}
