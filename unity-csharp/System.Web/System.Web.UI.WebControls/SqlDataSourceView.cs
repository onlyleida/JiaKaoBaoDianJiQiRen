using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Data;
using System.Data.Common;

namespace System.Web.UI.WebControls;

public class SqlDataSourceView : DataSourceView, IStateManager
{
	private HttpContext context;

	private DbProviderFactory factory;

	private DbConnection connection;

	private bool cancelSelectOnNullParameter = true;

	private ConflictOptions conflictDetection;

	private string deleteCommand = string.Empty;

	private SqlDataSourceCommandType deleteCommandType;

	private string filterExpression;

	private string insertCommand = string.Empty;

	private SqlDataSourceCommandType insertCommandType;

	private string oldValuesParameterFormatString = "{0}";

	private string selectCommand;

	private SqlDataSourceCommandType selectCommandType;

	private string sortParameterName = string.Empty;

	private string updateCommand = string.Empty;

	private SqlDataSourceCommandType updateCommandType;

	private ParameterCollection deleteParameters;

	private ParameterCollection filterParameters;

	private ParameterCollection insertParameters;

	private ParameterCollection selectParameters;

	private ParameterCollection updateParameters;

	private bool tracking;

	private string name;

	private SqlDataSource owner;

	private static readonly object EventDeleted = new object();

	private static readonly object EventDeleting = new object();

	private static readonly object EventFiltering = new object();

	private static readonly object EventInserted = new object();

	private static readonly object EventInserting = new object();

	private static readonly object EventSelected = new object();

	private static readonly object EventSelecting = new object();

	private static readonly object EventUpdated = new object();

	private static readonly object EventUpdating = new object();

	bool IStateManager.IsTrackingViewState => IsTrackingViewState;

	public bool CancelSelectOnNullParameter
	{
		get
		{
			return cancelSelectOnNullParameter;
		}
		set
		{
			if (CancelSelectOnNullParameter != value)
			{
				cancelSelectOnNullParameter = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public override bool CanDelete
	{
		get
		{
			if (DeleteCommand != null)
			{
				return DeleteCommand != "";
			}
			return false;
		}
	}

	public override bool CanInsert
	{
		get
		{
			if (InsertCommand != null)
			{
				return InsertCommand != "";
			}
			return false;
		}
	}

	public override bool CanPage => false;

	public override bool CanRetrieveTotalRowCount => false;

	public override bool CanSort
	{
		get
		{
			if (owner.DataSourceMode != SqlDataSourceMode.DataSet)
			{
				if (SortParameterName != null)
				{
					return SortParameterName != "";
				}
				return false;
			}
			return true;
		}
	}

	public override bool CanUpdate
	{
		get
		{
			if (UpdateCommand != null)
			{
				return UpdateCommand != "";
			}
			return false;
		}
	}

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

	public string DeleteCommand
	{
		get
		{
			return deleteCommand;
		}
		set
		{
			deleteCommand = value;
		}
	}

	public SqlDataSourceCommandType DeleteCommandType
	{
		get
		{
			return deleteCommandType;
		}
		set
		{
			deleteCommandType = value;
		}
	}

	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[DefaultValue(null)]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	public ParameterCollection DeleteParameters => GetParameterCollection(ref deleteParameters, propagateTrackViewState: false, subscribeChanged: false);

	public string FilterExpression
	{
		get
		{
			return filterExpression ?? string.Empty;
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

	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	public ParameterCollection FilterParameters => GetParameterCollection(ref filterParameters, propagateTrackViewState: true, subscribeChanged: true);

	public string InsertCommand
	{
		get
		{
			return insertCommand;
		}
		set
		{
			insertCommand = value;
		}
	}

	public SqlDataSourceCommandType InsertCommandType
	{
		get
		{
			return insertCommandType;
		}
		set
		{
			insertCommandType = value;
		}
	}

	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	public ParameterCollection InsertParameters => GetParameterCollection(ref insertParameters, propagateTrackViewState: false, subscribeChanged: false);

	protected bool IsTrackingViewState => tracking;

	[DefaultValue("{0}")]
	public string OldValuesParameterFormatString
	{
		get
		{
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

	public string SelectCommand
	{
		get
		{
			if (selectCommand == null)
			{
				return string.Empty;
			}
			return selectCommand;
		}
		set
		{
			if (!(SelectCommand == value))
			{
				selectCommand = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public SqlDataSourceCommandType SelectCommandType
	{
		get
		{
			return selectCommandType;
		}
		set
		{
			selectCommandType = value;
		}
	}

	public ParameterCollection SelectParameters => GetParameterCollection(ref selectParameters, propagateTrackViewState: true, subscribeChanged: true);

	public string SortParameterName
	{
		get
		{
			return sortParameterName;
		}
		set
		{
			if (!(SortParameterName == value))
			{
				sortParameterName = value;
				OnDataSourceViewChanged(EventArgs.Empty);
			}
		}
	}

	public string UpdateCommand
	{
		get
		{
			return updateCommand;
		}
		set
		{
			updateCommand = value;
		}
	}

	public SqlDataSourceCommandType UpdateCommandType
	{
		get
		{
			return updateCommandType;
		}
		set
		{
			updateCommandType = value;
		}
	}

	[Editor("System.Web.UI.Design.WebControls.ParameterCollectionEditor, System.Design, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", "System.Drawing.Design.UITypeEditor, System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")]
	[PersistenceMode(PersistenceMode.InnerProperty)]
	[DefaultValue(null)]
	public ParameterCollection UpdateParameters => GetParameterCollection(ref updateParameters, propagateTrackViewState: false, subscribeChanged: false);

	protected virtual string ParameterPrefix
	{
		get
		{
			string providerName = owner.ProviderName;
			if ((providerName == null || providerName.Length != 0) && !(providerName == "System.Data.SqlClient"))
			{
				if (providerName == "System.Data.OracleClient")
				{
					return ":";
				}
				return "";
			}
			return "@";
		}
	}

	public event SqlDataSourceStatusEventHandler Deleted
	{
		add
		{
			Events.AddHandler(EventDeleted, value);
		}
		remove
		{
			Events.RemoveHandler(EventDeleted, value);
		}
	}

	public event SqlDataSourceCommandEventHandler Deleting
	{
		add
		{
			Events.AddHandler(EventDeleting, value);
		}
		remove
		{
			Events.RemoveHandler(EventDeleting, value);
		}
	}

	public event SqlDataSourceFilteringEventHandler Filtering
	{
		add
		{
			Events.AddHandler(EventFiltering, value);
		}
		remove
		{
			Events.RemoveHandler(EventFiltering, value);
		}
	}

	public event SqlDataSourceStatusEventHandler Inserted
	{
		add
		{
			Events.AddHandler(EventInserted, value);
		}
		remove
		{
			Events.RemoveHandler(EventInserted, value);
		}
	}

	public event SqlDataSourceCommandEventHandler Inserting
	{
		add
		{
			Events.AddHandler(EventInserting, value);
		}
		remove
		{
			Events.RemoveHandler(EventInserting, value);
		}
	}

	public event SqlDataSourceStatusEventHandler Selected
	{
		add
		{
			Events.AddHandler(EventSelected, value);
		}
		remove
		{
			Events.RemoveHandler(EventSelected, value);
		}
	}

	public event SqlDataSourceSelectingEventHandler Selecting
	{
		add
		{
			Events.AddHandler(EventSelecting, value);
		}
		remove
		{
			Events.RemoveHandler(EventSelecting, value);
		}
	}

	public event SqlDataSourceStatusEventHandler Updated
	{
		add
		{
			Events.AddHandler(EventUpdated, value);
		}
		remove
		{
			Events.RemoveHandler(EventUpdated, value);
		}
	}

	public event SqlDataSourceCommandEventHandler Updating
	{
		add
		{
			Events.AddHandler(EventUpdating, value);
		}
		remove
		{
			Events.RemoveHandler(EventUpdating, value);
		}
	}

	public SqlDataSourceView(SqlDataSource owner, string name, HttpContext context)
		: base(owner, name)
	{
		this.owner = owner;
		this.name = name;
		this.context = context;
	}

	private void InitConnection()
	{
		if (factory == null)
		{
			factory = owner.GetDbProviderFactoryInternal();
		}
		if (connection == null)
		{
			connection = factory.CreateConnection();
			connection.ConnectionString = owner.ConnectionString;
		}
	}

	public int Delete(IDictionary keys, IDictionary oldValues)
	{
		return ExecuteDelete(keys, oldValues);
	}

	protected override int ExecuteDelete(IDictionary keys, IDictionary oldValues)
	{
		if (!CanDelete)
		{
			throw new NotSupportedException("Delete operation is not supported");
		}
		if (oldValues == null && ConflictDetection == ConflictOptions.CompareAllValues)
		{
			throw new InvalidOperationException("oldValues parameters should be specified when ConflictOptions is set to CompareAllValues");
		}
		InitConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = DeleteCommand;
		dbCommand.Connection = connection;
		if (DeleteCommandType == SqlDataSourceCommandType.Text)
		{
			dbCommand.CommandType = CommandType.Text;
		}
		else
		{
			dbCommand.CommandType = CommandType.StoredProcedure;
		}
		IDictionary dictionary;
		if (ConflictDetection == ConflictOptions.CompareAllValues)
		{
			dictionary = new Hashtable();
			if (keys != null)
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
		}
		else
		{
			dictionary = keys;
		}
		InitializeParameters(dbCommand, DeleteParameters, null, dictionary, parametersMayMatchOldValues: true);
		SqlDataSourceCommandEventArgs e = new SqlDataSourceCommandEventArgs(dbCommand);
		OnDeleting(e);
		if (e.Cancel)
		{
			return -1;
		}
		bool flag = connection.State == ConnectionState.Closed;
		if (flag)
		{
			connection.Open();
		}
		Exception ex = null;
		int num = -1;
		try
		{
			num = dbCommand.ExecuteNonQuery();
		}
		catch (Exception ex2)
		{
			ex = ex2;
		}
		if (flag)
		{
			connection.Close();
		}
		OnDataSourceViewChanged(EventArgs.Empty);
		SqlDataSourceStatusEventArgs e2 = new SqlDataSourceStatusEventArgs(dbCommand, num, ex);
		OnDeleted(e2);
		if (ex != null && !e2.ExceptionHandled)
		{
			throw ex;
		}
		return num;
	}

	public int Insert(IDictionary values)
	{
		return ExecuteInsert(values);
	}

	protected override int ExecuteInsert(IDictionary values)
	{
		if (!CanInsert)
		{
			throw new NotSupportedException("Insert operation is not supported");
		}
		InitConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = InsertCommand;
		dbCommand.Connection = connection;
		if (InsertCommandType == SqlDataSourceCommandType.Text)
		{
			dbCommand.CommandType = CommandType.Text;
		}
		else
		{
			dbCommand.CommandType = CommandType.StoredProcedure;
		}
		InitializeParameters(dbCommand, InsertParameters, values, null, parametersMayMatchOldValues: false);
		SqlDataSourceCommandEventArgs e = new SqlDataSourceCommandEventArgs(dbCommand);
		OnInserting(e);
		if (e.Cancel)
		{
			return -1;
		}
		bool flag = connection.State == ConnectionState.Closed;
		if (flag)
		{
			connection.Open();
		}
		Exception ex = null;
		int num = -1;
		try
		{
			num = dbCommand.ExecuteNonQuery();
		}
		catch (Exception ex2)
		{
			ex = ex2;
		}
		if (flag)
		{
			connection.Close();
		}
		OnDataSourceViewChanged(EventArgs.Empty);
		OnInserted(new SqlDataSourceStatusEventArgs(dbCommand, num, ex));
		if (ex != null)
		{
			throw ex;
		}
		return num;
	}

	public IEnumerable Select(DataSourceSelectArguments arguments)
	{
		return ExecuteSelect(arguments);
	}

	protected internal override IEnumerable ExecuteSelect(DataSourceSelectArguments arguments)
	{
		if (SortParameterName.Length > 0 && SelectCommandType == SqlDataSourceCommandType.Text)
		{
			throw new NotSupportedException("The SortParameterName property is only supported with stored procedure commands in SqlDataSource");
		}
		if (arguments.SortExpression.Length > 0 && owner.DataSourceMode == SqlDataSourceMode.DataReader)
		{
			throw new NotSupportedException("SqlDataSource cannot sort. Set DataSourceMode to DataSet to enable sorting.");
		}
		if (arguments.StartRowIndex > 0 || arguments.MaximumRows > 0)
		{
			throw new NotSupportedException("SqlDataSource does not have paging enabled. Set the DataSourceMode to DataSet to enable paging.");
		}
		if (FilterExpression.Length > 0 && owner.DataSourceMode == SqlDataSourceMode.DataReader)
		{
			throw new NotSupportedException("SqlDataSource only supports filtering when the data source's DataSourceMode is set to DataSet.");
		}
		InitConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = SelectCommand;
		dbCommand.Connection = connection;
		if (SelectCommandType == SqlDataSourceCommandType.Text)
		{
			dbCommand.CommandType = CommandType.Text;
		}
		else
		{
			dbCommand.CommandType = CommandType.StoredProcedure;
			if (SortParameterName.Length > 0 && arguments.SortExpression.Length > 0)
			{
				dbCommand.Parameters.Add(CreateDbParameter(SortParameterName, arguments.SortExpression));
			}
		}
		if (SelectParameters.Count > 0)
		{
			InitializeParameters(dbCommand, SelectParameters, null, null, parametersMayMatchOldValues: false);
		}
		Exception ex = null;
		if (owner.DataSourceMode == SqlDataSourceMode.DataSet)
		{
			DataView dataView = null;
			if (owner.EnableCaching)
			{
				dataView = (DataView)owner.Cache.GetCachedObject(SelectCommand, SelectParameters);
			}
			if (dataView == null)
			{
				SqlDataSourceSelectingEventArgs e = new SqlDataSourceSelectingEventArgs(dbCommand, arguments);
				OnSelecting(e);
				if (e.Cancel || !PrepareNullParameters(dbCommand, CancelSelectOnNullParameter))
				{
					return null;
				}
				try
				{
					DbDataAdapter dbDataAdapter = factory.CreateDataAdapter();
					DataSet dataSet = new DataSet();
					dbDataAdapter.SelectCommand = dbCommand;
					dbDataAdapter.Fill(dataSet, name);
					dataView = dataSet.Tables[0].DefaultView;
					if (dataView == null)
					{
						throw new InvalidOperationException();
					}
				}
				catch (Exception ex2)
				{
					ex = ex2;
				}
				int affectedRows = dataView?.Count ?? 0;
				SqlDataSourceStatusEventArgs e2 = new SqlDataSourceStatusEventArgs(dbCommand, affectedRows, ex);
				OnSelected(e2);
				if (ex != null && !e2.ExceptionHandled)
				{
					throw ex;
				}
				if (owner.EnableCaching)
				{
					owner.Cache.SetCachedObject(SelectCommand, selectParameters, dataView);
				}
			}
			if (SortParameterName.Length == 0 || SelectCommandType == SqlDataSourceCommandType.Text)
			{
				dataView.Sort = arguments.SortExpression;
			}
			if (FilterExpression.Length > 0)
			{
				IOrderedDictionary values = FilterParameters.GetValues(context, owner);
				SqlDataSourceFilteringEventArgs e3 = new SqlDataSourceFilteringEventArgs(values);
				OnFiltering(e3);
				if (!e3.Cancel)
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
		SqlDataSourceSelectingEventArgs e4 = new SqlDataSourceSelectingEventArgs(dbCommand, arguments);
		OnSelecting(e4);
		if (e4.Cancel || !PrepareNullParameters(dbCommand, CancelSelectOnNullParameter))
		{
			return null;
		}
		DbDataReader dbDataReader = null;
		bool flag = connection.State == ConnectionState.Closed;
		if (flag)
		{
			connection.Open();
		}
		try
		{
			dbDataReader = dbCommand.ExecuteReader(flag ? CommandBehavior.CloseConnection : CommandBehavior.Default);
		}
		catch (Exception ex3)
		{
			ex = ex3;
		}
		int affectedRows2 = dbDataReader?.RecordsAffected ?? 0;
		SqlDataSourceStatusEventArgs e5 = new SqlDataSourceStatusEventArgs(dbCommand, affectedRows2, ex);
		OnSelected(e5);
		if (ex != null && !e5.ExceptionHandled)
		{
			throw ex;
		}
		return dbDataReader;
	}

	private static bool PrepareNullParameters(DbCommand command, bool cancelIfHas)
	{
		for (int i = 0; i < command.Parameters.Count; i++)
		{
			DbParameter dbParameter = command.Parameters[i];
			if (dbParameter.Value == null && (dbParameter.Direction & ParameterDirection.Input) != 0)
			{
				if (cancelIfHas)
				{
					return false;
				}
				dbParameter.Value = DBNull.Value;
			}
		}
		return true;
	}

	public int Update(IDictionary keys, IDictionary values, IDictionary oldValues)
	{
		return ExecuteUpdate(keys, values, oldValues);
	}

	protected override int ExecuteUpdate(IDictionary keys, IDictionary values, IDictionary oldValues)
	{
		if (!CanUpdate)
		{
			throw new NotSupportedException("Update operation is not supported");
		}
		if (oldValues == null && ConflictDetection == ConflictOptions.CompareAllValues)
		{
			throw new InvalidOperationException("oldValues parameters should be specified when ConflictOptions is set to CompareAllValues");
		}
		InitConnection();
		DbCommand dbCommand = factory.CreateCommand();
		dbCommand.CommandText = UpdateCommand;
		dbCommand.Connection = connection;
		if (UpdateCommandType == SqlDataSourceCommandType.Text)
		{
			dbCommand.CommandType = CommandType.Text;
		}
		else
		{
			dbCommand.CommandType = CommandType.StoredProcedure;
		}
		IDictionary dictionary;
		if (ConflictDetection == ConflictOptions.CompareAllValues)
		{
			dictionary = new OrderedDictionary();
			if (keys != null)
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
		}
		else
		{
			dictionary = keys;
		}
		InitializeParameters(dbCommand, UpdateParameters, values, dictionary, ConflictDetection == ConflictOptions.OverwriteChanges);
		SqlDataSourceCommandEventArgs e = new SqlDataSourceCommandEventArgs(dbCommand);
		OnUpdating(e);
		if (e.Cancel)
		{
			return -1;
		}
		bool flag = connection.State == ConnectionState.Closed;
		if (flag)
		{
			connection.Open();
		}
		Exception ex = null;
		int num = -1;
		try
		{
			num = dbCommand.ExecuteNonQuery();
		}
		catch (Exception ex2)
		{
			ex = ex2;
		}
		if (flag)
		{
			connection.Close();
		}
		OnDataSourceViewChanged(EventArgs.Empty);
		SqlDataSourceStatusEventArgs e2 = new SqlDataSourceStatusEventArgs(dbCommand, num, ex);
		OnUpdated(e2);
		if (ex != null && !e2.ExceptionHandled)
		{
			throw ex;
		}
		return num;
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

	private object FindValueByName(string parameterName, IDictionary values, bool format)
	{
		if (values == null)
		{
			return null;
		}
		foreach (DictionaryEntry value in values)
		{
			string strB = (format ? FormatOldParameter(value.Key.ToString()) : value.Key.ToString());
			if (string.Compare(parameterName, strB, StringComparison.InvariantCultureIgnoreCase) == 0)
			{
				return values[value.Key];
			}
		}
		return null;
	}

	private void InitializeParameters(DbCommand command, ParameterCollection parameters, IDictionary values, IDictionary oldValues, bool parametersMayMatchOldValues)
	{
		IOrderedDictionary values2 = parameters.GetValues(context, owner);
		foreach (string key in values2.Keys)
		{
			Parameter parameter = parameters[key];
			object obj = FindValueByName(key, values, format: false);
			string text2 = key;
			if (obj == null)
			{
				obj = FindValueByName(key, oldValues, format: true);
			}
			if ((obj == null) & parametersMayMatchOldValues)
			{
				obj = FindValueByName(key, oldValues, format: false);
				text2 = FormatOldParameter(key);
			}
			if (obj != null)
			{
				object value = parameter.ConvertValue(obj);
				DbParameter dbParameter = CreateDbParameter(text2, value, parameter.Direction, parameter.Size);
				if (!command.Parameters.Contains(dbParameter.ParameterName))
				{
					command.Parameters.Add(dbParameter);
				}
			}
			else
			{
				command.Parameters.Add(CreateDbParameter(parameter.Name, values2[key], parameter.Direction, parameter.Size));
			}
		}
		if (values != null)
		{
			foreach (DictionaryEntry value2 in values)
			{
				if (!command.Parameters.Contains(ParameterPrefix + (string)value2.Key))
				{
					command.Parameters.Add(CreateDbParameter((string)value2.Key, value2.Value));
				}
			}
		}
		if (oldValues == null)
		{
			return;
		}
		foreach (DictionaryEntry oldValue in oldValues)
		{
			if (!command.Parameters.Contains(ParameterPrefix + FormatOldParameter((string)oldValue.Key)))
			{
				command.Parameters.Add(CreateDbParameter(FormatOldParameter((string)oldValue.Key), oldValue.Value));
			}
		}
	}

	private DbParameter CreateDbParameter(string name, object value)
	{
		return CreateDbParameter(name, value, ParameterDirection.Input, -1);
	}

	private DbParameter CreateDbParameter(string name, object value, ParameterDirection dir, int size)
	{
		DbParameter dbParameter = factory.CreateParameter();
		dbParameter.ParameterName = ParameterPrefix + name;
		dbParameter.Value = value;
		dbParameter.Direction = dir;
		if (size != -1)
		{
			dbParameter.Size = size;
		}
		return dbParameter;
	}

	void IStateManager.LoadViewState(object savedState)
	{
		LoadViewState(savedState);
	}

	object IStateManager.SaveViewState()
	{
		return SaveViewState();
	}

	void IStateManager.TrackViewState()
	{
		TrackViewState();
	}

	private NotSupportedException CreateNotSupportedException(string capabilityName)
	{
		return new NotSupportedException("Data source does not have the '" + capabilityName + "' capability enabled.");
	}

	protected internal override void RaiseUnsupportedCapabilityError(DataSourceCapabilities capability)
	{
		if ((capability & DataSourceCapabilities.Sort) != 0 && !CanSort)
		{
			throw CreateNotSupportedException("Sort");
		}
		if ((capability & DataSourceCapabilities.Page) != 0 && !CanPage)
		{
			throw CreateNotSupportedException("Page");
		}
		if ((capability & DataSourceCapabilities.RetrieveTotalRowCount) != 0 && !CanRetrieveTotalRowCount)
		{
			throw CreateNotSupportedException("RetrieveTotalRowCount");
		}
	}

	protected virtual void LoadViewState(object savedState)
	{
		if (savedState is object[] array)
		{
			if (array[0] != null)
			{
				((IStateManager)deleteParameters).LoadViewState(array[0]);
			}
			if (array[1] != null)
			{
				((IStateManager)filterParameters).LoadViewState(array[1]);
			}
			if (array[2] != null)
			{
				((IStateManager)insertParameters).LoadViewState(array[2]);
			}
			if (array[3] != null)
			{
				((IStateManager)selectParameters).LoadViewState(array[3]);
			}
			if (array[4] != null)
			{
				((IStateManager)updateParameters).LoadViewState(array[4]);
			}
		}
	}

	protected virtual object SaveViewState()
	{
		object[] array = new object[5];
		if (deleteParameters != null)
		{
			array[0] = ((IStateManager)deleteParameters).SaveViewState();
		}
		if (filterParameters != null)
		{
			array[1] = ((IStateManager)filterParameters).SaveViewState();
		}
		if (insertParameters != null)
		{
			array[2] = ((IStateManager)insertParameters).SaveViewState();
		}
		if (selectParameters != null)
		{
			array[3] = ((IStateManager)selectParameters).SaveViewState();
		}
		if (updateParameters != null)
		{
			array[4] = ((IStateManager)updateParameters).SaveViewState();
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
		tracking = true;
		if (filterParameters != null)
		{
			((IStateManager)filterParameters).TrackViewState();
		}
		if (selectParameters != null)
		{
			((IStateManager)selectParameters).TrackViewState();
		}
	}

	private void ParametersChanged(object source, EventArgs args)
	{
		OnDataSourceViewChanged(EventArgs.Empty);
	}

	private ParameterCollection GetParameterCollection(ref ParameterCollection output, bool propagateTrackViewState, bool subscribeChanged)
	{
		if (output != null)
		{
			return output;
		}
		output = new ParameterCollection();
		if (subscribeChanged)
		{
			output.ParametersChanged += ParametersChanged;
		}
		if (IsTrackingViewState & propagateTrackViewState)
		{
			((IStateManager)output).TrackViewState();
		}
		return output;
	}

	protected virtual void OnDeleted(SqlDataSourceStatusEventArgs e)
	{
		if (HasEvents() && Events[EventDeleted] is SqlDataSourceStatusEventHandler sqlDataSourceStatusEventHandler)
		{
			sqlDataSourceStatusEventHandler(this, e);
		}
	}

	protected virtual void OnDeleting(SqlDataSourceCommandEventArgs e)
	{
		if (HasEvents() && Events[EventDeleting] is SqlDataSourceCommandEventHandler sqlDataSourceCommandEventHandler)
		{
			sqlDataSourceCommandEventHandler(this, e);
		}
	}

	protected virtual void OnFiltering(SqlDataSourceFilteringEventArgs e)
	{
		if (HasEvents() && Events[EventFiltering] is SqlDataSourceFilteringEventHandler sqlDataSourceFilteringEventHandler)
		{
			sqlDataSourceFilteringEventHandler(this, e);
		}
	}

	protected virtual void OnInserted(SqlDataSourceStatusEventArgs e)
	{
		if (HasEvents() && Events[EventInserted] is SqlDataSourceStatusEventHandler sqlDataSourceStatusEventHandler)
		{
			sqlDataSourceStatusEventHandler(this, e);
		}
	}

	protected virtual void OnInserting(SqlDataSourceCommandEventArgs e)
	{
		if (HasEvents() && Events[EventInserting] is SqlDataSourceCommandEventHandler sqlDataSourceCommandEventHandler)
		{
			sqlDataSourceCommandEventHandler(this, e);
		}
	}

	protected virtual void OnSelected(SqlDataSourceStatusEventArgs e)
	{
		if (HasEvents() && Events[EventSelected] is SqlDataSourceStatusEventHandler sqlDataSourceStatusEventHandler)
		{
			sqlDataSourceStatusEventHandler(this, e);
		}
	}

	protected virtual void OnSelecting(SqlDataSourceSelectingEventArgs e)
	{
		if (HasEvents() && Events[EventSelecting] is SqlDataSourceSelectingEventHandler sqlDataSourceSelectingEventHandler)
		{
			sqlDataSourceSelectingEventHandler(this, e);
		}
	}

	protected virtual void OnUpdated(SqlDataSourceStatusEventArgs e)
	{
		if (owner.EnableCaching)
		{
			owner.Cache.Expire();
		}
		if (HasEvents() && Events[EventUpdated] is SqlDataSourceStatusEventHandler sqlDataSourceStatusEventHandler)
		{
			sqlDataSourceStatusEventHandler(this, e);
		}
	}

	protected virtual void OnUpdating(SqlDataSourceCommandEventArgs e)
	{
		if (HasEvents() && Events[EventUpdating] is SqlDataSourceCommandEventHandler sqlDataSourceCommandEventHandler)
		{
			sqlDataSourceCommandEventHandler(this, e);
		}
	}
}
