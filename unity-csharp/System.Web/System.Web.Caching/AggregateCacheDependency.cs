using System.Collections.Generic;
using System.Text;
using Unity;

namespace System.Web.Caching;

public sealed class AggregateCacheDependency : CacheDependency
{
	private object dependenciesLock = new object();

	private List<CacheDependency> dependencies;

	public AggregateCacheDependency()
	{
		FinishInit();
	}

	public void Add(params CacheDependency[] dependencies)
	{
		if (dependencies == null)
		{
			throw new ArgumentNullException("dependencies");
		}
		if (dependencies.Length == 0)
		{
			return;
		}
		bool flag = false;
		CacheDependency[] array = dependencies;
		foreach (CacheDependency cacheDependency in array)
		{
			if (cacheDependency == null || cacheDependency.IsUsed)
			{
				throw new InvalidOperationException("Cache dependency already in use");
			}
			if (!flag && cacheDependency != null && cacheDependency.HasChanged)
			{
				flag = true;
			}
		}
		lock (dependenciesLock)
		{
			if (this.dependencies == null)
			{
				this.dependencies = new List<CacheDependency>(dependencies.Length);
			}
			array = dependencies;
			foreach (CacheDependency cacheDependency2 in array)
			{
				if (cacheDependency2 != null)
				{
					cacheDependency2.DependencyChanged += OnAnyChanged;
				}
			}
			this.dependencies.AddRange(dependencies);
			Start = DateTime.UtcNow;
		}
		if (flag)
		{
			NotifyDependencyChanged(this, null);
		}
	}

	public override string GetUniqueID()
	{
		if (dependencies == null || dependencies.Count == 0)
		{
			return null;
		}
		StringBuilder stringBuilder = new StringBuilder();
		lock (dependenciesLock)
		{
			string text = null;
			foreach (CacheDependency dependency in dependencies)
			{
				text = dependency.GetUniqueID();
				if (string.IsNullOrEmpty(text))
				{
					return null;
				}
				stringBuilder.Append(text);
				stringBuilder.Append(';');
			}
		}
		return stringBuilder.ToString();
	}

	protected override void DependencyDispose()
	{
		base.DependencyDispose();
	}

	internal override void DependencyDisposeInternal()
	{
		if (dependencies == null || dependencies.Count <= 0)
		{
			return;
		}
		foreach (CacheDependency dependency in dependencies)
		{
			dependency.DependencyChanged -= OnAnyChanged;
		}
	}

	private void OnAnyChanged(object sender, EventArgs args)
	{
		NotifyDependencyChanged(sender, args);
	}

	public override string[] GetFileDependencies()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}
}
