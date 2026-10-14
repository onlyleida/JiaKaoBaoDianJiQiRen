using System.Collections;
using System.Collections.Generic;
using System.Security.Permissions;
using System.Threading;
using System.Web.Configuration;

namespace System.Web.Caching;

[AspNetHostingPermission(SecurityAction.LinkDemand, Level = AspNetHostingPermissionLevel.Minimal)]
public sealed class Cache : IEnumerable
{
	private const int LOW_WATER_MARK = 10000;

	private const int HIGH_WATER_MARK = 15000;

	public static readonly DateTime NoAbsoluteExpiration = DateTime.MaxValue;

	public static readonly TimeSpan NoSlidingExpiration = TimeSpan.Zero;

	private ReaderWriterLockSlim cacheLock;

	private CacheItemLRU cache;

	private CacheItemPriorityQueue timedItems;

	private Timer expirationTimer;

	private long expirationTimerPeriod;

	private Cache dependencyCache;

	private bool? disableExpiration;

	private long privateBytesLimit = -1L;

	private long percentagePhysicalMemoryLimit = -1L;

	private bool DisableExpiration
	{
		get
		{
			if (!disableExpiration.HasValue)
			{
				if (!(WebConfigurationManager.GetWebApplicationSection("system.web/caching/cache") is CacheSection cacheSection))
				{
					disableExpiration = false;
				}
				else
				{
					disableExpiration = cacheSection.DisableExpiration;
				}
			}
			return disableExpiration.Value;
		}
	}

	public long EffectivePrivateBytesLimit
	{
		get
		{
			if (privateBytesLimit == -1)
			{
				if (!(WebConfigurationManager.GetWebApplicationSection("system.web/caching/cache") is CacheSection cacheSection))
				{
					privateBytesLimit = 0L;
				}
				else
				{
					privateBytesLimit = cacheSection.PrivateBytesLimit;
				}
				if (privateBytesLimit == 0L)
				{
					privateBytesLimit = 734003200L;
				}
			}
			return privateBytesLimit;
		}
	}

	public long EffectivePercentagePhysicalMemoryLimit
	{
		get
		{
			if (percentagePhysicalMemoryLimit == -1)
			{
				if (!(WebConfigurationManager.GetWebApplicationSection("system.web/caching/cache") is CacheSection cacheSection))
				{
					percentagePhysicalMemoryLimit = 0L;
				}
				else
				{
					percentagePhysicalMemoryLimit = cacheSection.PercentagePhysicalMemoryUsedLimit;
				}
				if (percentagePhysicalMemoryLimit == 0L)
				{
					percentagePhysicalMemoryLimit = 97L;
				}
			}
			return percentagePhysicalMemoryLimit;
		}
	}

	public int Count => cache.Count;

	public object this[string key]
	{
		get
		{
			return Get(key);
		}
		set
		{
			Insert(key, value);
		}
	}

	internal Cache DependencyCache
	{
		get
		{
			if (dependencyCache == null)
			{
				return this;
			}
			return dependencyCache;
		}
		set
		{
			dependencyCache = value;
		}
	}

	public Cache()
	{
		cacheLock = new ReaderWriterLockSlim();
		cache = new CacheItemLRU(this, 15000, 10000);
	}

	private CacheItem RemoveCacheItem(string key)
	{
		if (key == null)
		{
			return null;
		}
		CacheItem cacheItem = cache[key];
		if (cacheItem == null)
		{
			return null;
		}
		_ = timedItems;
		cacheItem.Disabled = true;
		cache.Remove(key);
		return cacheItem;
	}

	public object Add(string key, object value, CacheDependency dependencies, DateTime absoluteExpiration, TimeSpan slidingExpiration, CacheItemPriority priority, CacheItemRemovedCallback onRemoveCallback)
	{
		if (key == null)
		{
			throw new ArgumentNullException("key");
		}
		try
		{
			cacheLock.EnterWriteLock();
			CacheItem cacheItem = cache[key];
			if (cacheItem != null)
			{
				return cacheItem.Value;
			}
			Insert(key, value, dependencies, absoluteExpiration, slidingExpiration, priority, onRemoveCallback, null, doLock: false);
		}
		finally
		{
			cacheLock.ExitWriteLock();
		}
		return null;
	}

	public object Get(string key)
	{
		try
		{
			cacheLock.EnterUpgradeableReadLock();
			CacheItem cacheItem = cache[key];
			if (cacheItem == null)
			{
				return null;
			}
			if (cacheItem.Dependency != null && cacheItem.Dependency.HasChanged)
			{
				try
				{
					cacheLock.EnterWriteLock();
					if (!NeedsUpdate(cacheItem, CacheItemUpdateReason.DependencyChanged, needLock: false))
					{
						Remove(cacheItem.Key, CacheItemRemovedReason.DependencyChanged, doLock: false, invokeCallback: true);
					}
				}
				finally
				{
					cacheLock.ExitWriteLock();
				}
				return null;
			}
			if (!DisableExpiration)
			{
				if (cacheItem.SlidingExpiration != NoSlidingExpiration)
				{
					cacheItem.AbsoluteExpiration = DateTime.Now + cacheItem.SlidingExpiration;
					long num = (long)cacheItem.SlidingExpiration.TotalMilliseconds;
					cacheItem.ExpiresAt = cacheItem.AbsoluteExpiration.Ticks;
					if (expirationTimer != null && (expirationTimerPeriod == 0L || expirationTimerPeriod > num))
					{
						expirationTimerPeriod = num;
						expirationTimer.Change(expirationTimerPeriod, expirationTimerPeriod);
					}
				}
				else if (DateTime.Now >= cacheItem.AbsoluteExpiration)
				{
					try
					{
						cacheLock.EnterWriteLock();
						if (!NeedsUpdate(cacheItem, CacheItemUpdateReason.Expired, needLock: false))
						{
							Remove(key, CacheItemRemovedReason.Expired, doLock: false, invokeCallback: true);
						}
					}
					finally
					{
						cacheLock.ExitWriteLock();
					}
					return null;
				}
			}
			return cacheItem.Value;
		}
		finally
		{
			cacheLock.ExitUpgradeableReadLock();
		}
	}

	public void Insert(string key, object value)
	{
		Insert(key, value, null, NoAbsoluteExpiration, NoSlidingExpiration, CacheItemPriority.Normal, null, null, doLock: true);
	}

	public void Insert(string key, object value, CacheDependency dependencies)
	{
		Insert(key, value, dependencies, NoAbsoluteExpiration, NoSlidingExpiration, CacheItemPriority.Normal, null, null, doLock: true);
	}

	public void Insert(string key, object value, CacheDependency dependencies, DateTime absoluteExpiration, TimeSpan slidingExpiration)
	{
		Insert(key, value, dependencies, absoluteExpiration, slidingExpiration, CacheItemPriority.Normal, null, null, doLock: true);
	}

	public void Insert(string key, object value, CacheDependency dependencies, DateTime absoluteExpiration, TimeSpan slidingExpiration, CacheItemUpdateCallback onUpdateCallback)
	{
		Insert(key, value, dependencies, absoluteExpiration, slidingExpiration, CacheItemPriority.Normal, null, onUpdateCallback, doLock: true);
	}

	public void Insert(string key, object value, CacheDependency dependencies, DateTime absoluteExpiration, TimeSpan slidingExpiration, CacheItemPriority priority, CacheItemRemovedCallback onRemoveCallback)
	{
		Insert(key, value, dependencies, absoluteExpiration, slidingExpiration, priority, onRemoveCallback, null, doLock: true);
	}

	private void Insert(string key, object value, CacheDependency dependencies, DateTime absoluteExpiration, TimeSpan slidingExpiration, CacheItemPriority priority, CacheItemRemovedCallback onRemoveCallback, CacheItemUpdateCallback onUpdateCallback, bool doLock)
	{
		if (key == null)
		{
			throw new ArgumentNullException("key");
		}
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		if (slidingExpiration < TimeSpan.Zero || slidingExpiration > TimeSpan.FromDays(365.0))
		{
			throw new ArgumentNullException("slidingExpiration");
		}
		if (absoluteExpiration != NoAbsoluteExpiration && slidingExpiration != NoSlidingExpiration)
		{
			throw new ArgumentException("Both absoluteExpiration and slidingExpiration are specified");
		}
		CacheItem cacheItem = new CacheItem();
		cacheItem.Value = value;
		cacheItem.Key = key;
		if (dependencies != null)
		{
			cacheItem.Dependency = dependencies;
			dependencies.DependencyChanged += OnDependencyChanged;
			dependencies.SetCache(DependencyCache);
		}
		cacheItem.Priority = priority;
		SetItemTimeout(cacheItem, absoluteExpiration, slidingExpiration, onRemoveCallback, onUpdateCallback, key, doLock);
	}

	internal void SetItemTimeout(string key, DateTime absoluteExpiration, TimeSpan slidingExpiration, bool doLock)
	{
		CacheItem cacheItem = null;
		try
		{
			if (doLock)
			{
				cacheLock.EnterWriteLock();
			}
			cacheItem = cache[key];
			if (cacheItem != null)
			{
				SetItemTimeout(cacheItem, absoluteExpiration, slidingExpiration, cacheItem.OnRemoveCallback, null, key, doLock: false);
			}
		}
		finally
		{
			if (doLock)
			{
				cacheLock.ExitWriteLock();
			}
		}
	}

	private void SetItemTimeout(CacheItem ci, DateTime absoluteExpiration, TimeSpan slidingExpiration, CacheItemRemovedCallback onRemoveCallback, CacheItemUpdateCallback onUpdateCallback, string key, bool doLock)
	{
		bool flag = DisableExpiration;
		if (!flag)
		{
			ci.SlidingExpiration = slidingExpiration;
			if (slidingExpiration != NoSlidingExpiration)
			{
				ci.AbsoluteExpiration = DateTime.Now + slidingExpiration;
			}
			else
			{
				ci.AbsoluteExpiration = absoluteExpiration;
			}
		}
		ci.OnRemoveCallback = onRemoveCallback;
		ci.OnUpdateCallback = onUpdateCallback;
		try
		{
			if (doLock)
			{
				cacheLock.EnterWriteLock();
			}
			if (key != null)
			{
				cache[key] = ci;
				cache.EvictIfNecessary();
			}
			ci.LastChange = DateTime.Now;
			if (flag || !(ci.AbsoluteExpiration != NoAbsoluteExpiration))
			{
				return;
			}
			bool flag2;
			if (ci.IsTimedItem)
			{
				flag2 = UpdateTimedItem(ci);
				if (!flag2)
				{
					UpdateTimerPeriod(ci);
				}
			}
			else
			{
				flag2 = true;
			}
			if (flag2)
			{
				ci.IsTimedItem = true;
				EnqueueTimedItem(ci);
			}
		}
		finally
		{
			if (doLock)
			{
				cacheLock.ExitWriteLock();
			}
		}
	}

	private bool UpdateTimedItem(CacheItem item)
	{
		if (timedItems == null)
		{
			return true;
		}
		item.ExpiresAt = item.AbsoluteExpiration.Ticks;
		return !timedItems.Update(item);
	}

	private void UpdateTimerPeriod(CacheItem item)
	{
		if (timedItems == null)
		{
			timedItems = new CacheItemPriorityQueue();
		}
		long num = Math.Max(0L, (long)(item.AbsoluteExpiration - DateTime.Now).TotalMilliseconds);
		item.ExpiresAt = item.AbsoluteExpiration.Ticks;
		if (num > 4294967294u)
		{
			num = 4294967294L;
		}
		if (expirationTimer == null || expirationTimerPeriod > num)
		{
			expirationTimerPeriod = num;
			if (expirationTimer == null)
			{
				expirationTimer = new Timer(ExpireItems, null, expirationTimerPeriod, expirationTimerPeriod);
			}
			else
			{
				expirationTimer.Change(expirationTimerPeriod, expirationTimerPeriod);
			}
		}
	}

	private void EnqueueTimedItem(CacheItem item)
	{
		UpdateTimerPeriod(item);
		timedItems.Enqueue(item);
	}

	public object Remove(string key)
	{
		return Remove(key, CacheItemRemovedReason.Removed, doLock: true, invokeCallback: true);
	}

	internal object Remove(string key, CacheItemRemovedReason reason, bool doLock, bool invokeCallback)
	{
		CacheItem cacheItem = null;
		try
		{
			if (doLock)
			{
				cacheLock.EnterWriteLock();
			}
			cacheItem = RemoveCacheItem(key);
		}
		finally
		{
			if (doLock)
			{
				cacheLock.ExitWriteLock();
			}
		}
		object result = null;
		if (cacheItem != null)
		{
			if (cacheItem.Dependency != null)
			{
				cacheItem.Dependency.SetCache(null);
				cacheItem.Dependency.DependencyChanged -= OnDependencyChanged;
				cacheItem.Dependency.Dispose();
			}
			if (invokeCallback && cacheItem.OnRemoveCallback != null)
			{
				try
				{
					cacheItem.OnRemoveCallback(key, cacheItem.Value, reason);
				}
				catch
				{
				}
			}
			result = cacheItem.Value;
			cacheItem.Value = null;
			cacheItem.Key = null;
			cacheItem.Dependency = null;
			cacheItem.OnRemoveCallback = null;
			cacheItem.OnUpdateCallback = null;
			cacheItem = null;
		}
		return result;
	}

	internal void InvokePrivateCallbacks()
	{
		try
		{
			cacheLock.EnterReadLock();
			cache.InvokePrivateCallbacks();
		}
		finally
		{
			cacheLock.ExitReadLock();
		}
	}

	public IDictionaryEnumerator GetEnumerator()
	{
		List<CacheItem> list = null;
		try
		{
			cacheLock.EnterReadLock();
			list = cache.ToList();
		}
		finally
		{
			cacheLock.ExitReadLock();
		}
		return new CacheItemEnumerator(list);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}

	private void OnDependencyChanged(object o, EventArgs a)
	{
		CheckDependencies();
	}

	private bool NeedsUpdate(CacheItem item, CacheItemUpdateReason reason, bool needLock)
	{
		try
		{
			if (needLock)
			{
				cacheLock.EnterWriteLock();
			}
			if (item == null || item.OnUpdateCallback == null)
			{
				return false;
			}
			string key = item.Key;
			CacheItemUpdateCallback onUpdateCallback = item.OnUpdateCallback;
			onUpdateCallback(key, reason, out var expensiveObject, out var dependency, out var absoluteExpiration, out var slidingExpiration);
			if (expensiveObject == null)
			{
				return false;
			}
			CacheItemPriority priority = item.Priority;
			CacheItemRemovedCallback onRemoveCallback = item.OnRemoveCallback;
			Remove(key, reason switch
			{
				CacheItemUpdateReason.Expired => CacheItemRemovedReason.Expired, 
				CacheItemUpdateReason.DependencyChanged => CacheItemRemovedReason.DependencyChanged, 
				_ => CacheItemRemovedReason.Removed, 
			}, doLock: false, invokeCallback: false);
			Insert(key, expensiveObject, dependency, absoluteExpiration, slidingExpiration, priority, onRemoveCallback, onUpdateCallback, doLock: false);
			return true;
		}
		catch (Exception)
		{
			return false;
		}
		finally
		{
			if (needLock)
			{
				cacheLock.ExitWriteLock();
			}
		}
	}

	private void ExpireItems(object data)
	{
		DateTime now = DateTime.Now;
		CacheItem cacheItem = null;
		expirationTimer.Change(-1, -1);
		try
		{
			cacheLock.EnterWriteLock();
			while (true)
			{
				cacheItem = timedItems.Peek();
				if (cacheItem == null)
				{
					if (timedItems.Count == 0)
					{
						break;
					}
					timedItems.Dequeue();
					continue;
				}
				if (!cacheItem.Disabled && cacheItem.ExpiresAt > now.Ticks)
				{
					break;
				}
				if (cacheItem.Disabled)
				{
					cacheItem = timedItems.Dequeue();
					continue;
				}
				cacheItem = timedItems.Dequeue();
				if (cacheItem != null && !NeedsUpdate(cacheItem, CacheItemUpdateReason.Expired, needLock: false))
				{
					Remove(cacheItem.Key, CacheItemRemovedReason.Expired, doLock: false, invokeCallback: true);
				}
			}
		}
		finally
		{
			cacheLock.ExitWriteLock();
		}
		if (cacheItem != null)
		{
			long num = Math.Max(0L, (long)(cacheItem.AbsoluteExpiration - now).TotalMilliseconds);
			if (num > 0 && (expirationTimerPeriod == 0L || expirationTimerPeriod > num))
			{
				expirationTimerPeriod = num;
				expirationTimer.Change(expirationTimerPeriod, expirationTimerPeriod);
				return;
			}
			if (expirationTimerPeriod > 0)
			{
				return;
			}
		}
		expirationTimer.Change(-1, -1);
		expirationTimerPeriod = 0L;
	}

	internal void CheckDependencies()
	{
		try
		{
			cacheLock.EnterWriteLock();
			List<CacheItem> list = cache.SelectItems((CacheItem it) =>
			{
				if (it == null)
				{
					return false;
				}
				return (it.Dependency != null && it.Dependency.HasChanged && !NeedsUpdate(it, CacheItemUpdateReason.DependencyChanged, needLock: false)) ? true : false;
			});
			foreach (CacheItem item in list)
			{
				Remove(item.Key, CacheItemRemovedReason.DependencyChanged, doLock: false, invokeCallback: true);
			}
			list.Clear();
			list.TrimExcess();
		}
		finally
		{
			cacheLock.ExitWriteLock();
		}
	}

	internal DateTime GetKeyLastChange(string key)
	{
		try
		{
			cacheLock.EnterReadLock();
			return cache[key]?.LastChange ?? DateTime.MaxValue;
		}
		finally
		{
			cacheLock.ExitReadLock();
		}
	}
}
