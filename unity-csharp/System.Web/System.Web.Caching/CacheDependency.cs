using System.ComponentModel;
using System.IO;
using System.Security.Permissions;
using System.Text;
using Unity;

namespace System.Web.Caching;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
[AspNetHostingPermission(SecurityAction.InheritanceDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public class CacheDependency : IDisposable
{
	private static readonly object dependencyChangedEvent = new object();

	private string[] cachekeys;

	private CacheDependency dependency;

	private DateTime start;

	private Cache cache;

	private FileSystemWatcher[] watchers;

	private bool hasChanged;

	private bool used;

	private DateTime utcLastModified;

	private object locker = new object();

	private EventHandlerList events = new EventHandlerList();

	internal bool IsUsed => used;

	internal DateTime Start
	{
		get
		{
			return start;
		}
		set
		{
			start = value;
		}
	}

	public DateTime UtcLastModified => utcLastModified;

	public bool HasChanged
	{
		get
		{
			if (hasChanged)
			{
				return true;
			}
			if (DateTime.Now < start)
			{
				return false;
			}
			if (cache != null && cachekeys != null)
			{
				string[] array = cachekeys;
				foreach (string key in array)
				{
					if (cache.GetKeyLastChange(key) > start)
					{
						hasChanged = true;
						break;
					}
				}
			}
			if (hasChanged)
			{
				DisposeWatchers();
			}
			return hasChanged;
		}
	}

	internal event EventHandler DependencyChanged
	{
		add
		{
			events.AddHandler(dependencyChangedEvent, value);
		}
		remove
		{
			events.RemoveHandler(dependencyChangedEvent, value);
		}
	}

	protected CacheDependency()
		: this(null, null, null, DateTime.Now)
	{
	}

	public CacheDependency(string filename)
		: this(new string[1] { filename }, null, null, DateTime.Now)
	{
	}

	public CacheDependency(string[] filenames)
		: this(filenames, null, null, DateTime.Now)
	{
	}

	public CacheDependency(string filename, DateTime start)
		: this(new string[1] { filename }, null, null, start)
	{
	}

	public CacheDependency(string[] filenames, DateTime start)
		: this(filenames, null, null, start)
	{
	}

	public CacheDependency(string[] filenames, string[] cachekeys)
		: this(filenames, cachekeys, null, DateTime.Now)
	{
	}

	public CacheDependency(string[] filenames, string[] cachekeys, CacheDependency dependency)
		: this(filenames, cachekeys, dependency, DateTime.Now)
	{
	}

	public CacheDependency(string[] filenames, string[] cachekeys, DateTime start)
		: this(filenames, cachekeys, null, start)
	{
	}

	public CacheDependency(string[] filenames, string[] cachekeys, CacheDependency dependency, DateTime start)
	{
		int num = filenames?.Length ?? 0;
		if (num > 0)
		{
			watchers = new FileSystemWatcher[num];
			for (int i = 0; i < num; i++)
			{
				string text = filenames[i];
				if (string.IsNullOrEmpty(text))
				{
					continue;
				}
				FileSystemWatcher fileSystemWatcher = new FileSystemWatcher();
				if (Directory.Exists(text))
				{
					fileSystemWatcher.Path = text;
				}
				else
				{
					string directoryName = Path.GetDirectoryName(text);
					if (directoryName == null || !Directory.Exists(directoryName))
					{
						continue;
					}
					fileSystemWatcher.Path = directoryName;
					fileSystemWatcher.Filter = Path.GetFileName(text);
				}
				fileSystemWatcher.NotifyFilter |= NotifyFilters.Size;
				fileSystemWatcher.Created += OnChanged;
				fileSystemWatcher.Changed += OnChanged;
				fileSystemWatcher.Deleted += OnChanged;
				fileSystemWatcher.Renamed += OnChanged;
				fileSystemWatcher.EnableRaisingEvents = true;
				watchers[i] = fileSystemWatcher;
			}
		}
		this.cachekeys = cachekeys;
		this.dependency = dependency;
		if (dependency != null)
		{
			dependency.DependencyChanged += OnChildDependencyChanged;
		}
		this.start = start;
		FinishInit();
	}

	public virtual string GetUniqueID()
	{
		StringBuilder stringBuilder = new StringBuilder();
		lock (locker)
		{
			if (watchers != null)
			{
				FileSystemWatcher[] array = watchers;
				foreach (FileSystemWatcher fileSystemWatcher in array)
				{
					if (fileSystemWatcher != null && fileSystemWatcher.Path != null && fileSystemWatcher.Path.Length != 0)
					{
						stringBuilder.Append("_" + fileSystemWatcher.Path);
					}
				}
			}
		}
		if (cachekeys != null)
		{
			string[] array2 = cachekeys;
			foreach (string text in array2)
			{
				stringBuilder.AppendFormat("_" + text);
			}
		}
		return stringBuilder.ToString();
	}

	private void OnChanged(object sender, FileSystemEventArgs args)
	{
		OnDependencyChanged(sender, args);
	}

	private bool DoOnChanged()
	{
		DateTime now = DateTime.Now;
		if (now < start)
		{
			return false;
		}
		hasChanged = true;
		utcLastModified = now.ToUniversalTime();
		DisposeWatchers();
		if (cache != null)
		{
			cache.CheckDependencies();
		}
		return true;
	}

	private void DisposeWatchers()
	{
		lock (locker)
		{
			if (watchers != null)
			{
				FileSystemWatcher[] array = watchers;
				for (int i = 0; i < array.Length; i++)
				{
					array[i]?.Dispose();
				}
			}
			watchers = null;
		}
	}

	public void Dispose()
	{
		DependencyDispose();
	}

	internal virtual void DependencyDisposeInternal()
	{
	}

	protected virtual void DependencyDispose()
	{
		DependencyDisposeInternal();
		DisposeWatchers();
		if (dependency != null)
		{
			dependency.DependencyChanged -= OnChildDependencyChanged;
			dependency.Dispose();
		}
		cache = null;
	}

	internal void SetCache(Cache c)
	{
		cache = c;
		used = c != null;
	}

	protected internal void FinishInit()
	{
		utcLastModified = DateTime.UtcNow;
	}

	protected void SetUtcLastModified(DateTime utcLastModified)
	{
		this.utcLastModified = utcLastModified;
	}

	private void OnChildDependencyChanged(object o, EventArgs e)
	{
		hasChanged = true;
		OnDependencyChanged(o, e);
	}

	private void OnDependencyChanged(object sender, EventArgs e)
	{
		if (DoOnChanged() && events[dependencyChangedEvent] is EventHandler eventHandler)
		{
			eventHandler(sender, e);
		}
	}

	protected void NotifyDependencyChanged(object sender, EventArgs e)
	{
		OnDependencyChanged(sender, e);
	}

	public virtual string[] GetFileDependencies()
	{
		ThrowStub.ThrowNotSupportedException();
		return null;
	}

	public void ItemRemoved()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void KeepDependenciesAlive()
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public void SetCacheDependencyChanged(Action<object, EventArgs> dependencyChangedAction)
	{
		ThrowStub.ThrowNotSupportedException();
	}

	public bool TakeOwnership()
	{
		ThrowStub.ThrowNotSupportedException();
		return default;
	}
}
