using System.Collections;

namespace System.Data.SqlClient;

public sealed class SqlBulkCopyColumnMappingCollection : CollectionBase
{
	private enum MappingSchema
	{
		Undefined,
		NamesNames,
		NemesOrdinals,
		OrdinalsNames,
		OrdinalsOrdinals
	}

	private MappingSchema _mappingSchema;

	internal bool ReadOnly { get; set; }

	public SqlBulkCopyColumnMapping this[int index] => (SqlBulkCopyColumnMapping)List[index];

	internal SqlBulkCopyColumnMappingCollection()
	{
	}

	public SqlBulkCopyColumnMapping Add(SqlBulkCopyColumnMapping bulkCopyColumnMapping)
	{
		AssertWriteAccess();
		if ((string.IsNullOrEmpty(bulkCopyColumnMapping.SourceColumn) && bulkCopyColumnMapping.SourceOrdinal == -1) || (string.IsNullOrEmpty(bulkCopyColumnMapping.DestinationColumn) && bulkCopyColumnMapping.DestinationOrdinal == -1))
		{
			throw SQL.BulkLoadNonMatchingColumnMapping();
		}
		InnerList.Add(bulkCopyColumnMapping);
		return bulkCopyColumnMapping;
	}

	public SqlBulkCopyColumnMapping Add(string sourceColumn, string destinationColumn)
	{
		AssertWriteAccess();
		return Add(new SqlBulkCopyColumnMapping(sourceColumn, destinationColumn));
	}

	public SqlBulkCopyColumnMapping Add(int sourceColumnIndex, string destinationColumn)
	{
		AssertWriteAccess();
		return Add(new SqlBulkCopyColumnMapping(sourceColumnIndex, destinationColumn));
	}

	public SqlBulkCopyColumnMapping Add(string sourceColumn, int destinationColumnIndex)
	{
		AssertWriteAccess();
		return Add(new SqlBulkCopyColumnMapping(sourceColumn, destinationColumnIndex));
	}

	public SqlBulkCopyColumnMapping Add(int sourceColumnIndex, int destinationColumnIndex)
	{
		AssertWriteAccess();
		return Add(new SqlBulkCopyColumnMapping(sourceColumnIndex, destinationColumnIndex));
	}

	private void AssertWriteAccess()
	{
		if (ReadOnly)
		{
			throw SQL.BulkLoadMappingInaccessible();
		}
	}

	public new void Clear()
	{
		AssertWriteAccess();
		base.Clear();
	}

	public bool Contains(SqlBulkCopyColumnMapping value)
	{
		return InnerList.Contains(value);
	}

	public void CopyTo(SqlBulkCopyColumnMapping[] array, int index)
	{
		InnerList.CopyTo(array, index);
	}

	internal void CreateDefaultMapping(int columnCount)
	{
		for (int i = 0; i < columnCount; i++)
		{
			InnerList.Add(new SqlBulkCopyColumnMapping(i, i));
		}
	}

	public int IndexOf(SqlBulkCopyColumnMapping value)
	{
		return InnerList.IndexOf(value);
	}

	public void Insert(int index, SqlBulkCopyColumnMapping value)
	{
		AssertWriteAccess();
		InnerList.Insert(index, value);
	}

	public void Remove(SqlBulkCopyColumnMapping value)
	{
		AssertWriteAccess();
		InnerList.Remove(value);
	}

	public new void RemoveAt(int index)
	{
		AssertWriteAccess();
		base.RemoveAt(index);
	}

	internal void ValidateCollection()
	{
		foreach (SqlBulkCopyColumnMapping inner in InnerList)
		{
			MappingSchema mappingSchema;
			if (inner.SourceOrdinal == -1)
			{
				mappingSchema = ((inner.DestinationOrdinal == -1) ? MappingSchema.NamesNames : MappingSchema.NemesOrdinals);
			}
			else
			{
				mappingSchema = ((inner.DestinationOrdinal != -1) ? MappingSchema.OrdinalsOrdinals : MappingSchema.OrdinalsNames);
			}
			if (_mappingSchema == MappingSchema.Undefined)
			{
				_mappingSchema = mappingSchema;
			}
			else if (_mappingSchema != mappingSchema)
			{
				throw SQL.BulkLoadMappingsNamesOrOrdinalsOnly();
			}
		}
	}
}
