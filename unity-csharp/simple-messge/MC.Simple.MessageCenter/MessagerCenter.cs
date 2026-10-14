using System;
using System.Collections.Generic;
using UnityEngine;

namespace MC.Simple.MessageCenter;

public class MessagerCenter
{
	private static MessagerCenter _instance;

	private Dictionary<string, List<EventHelper>> eventTable = new Dictionary<string, List<EventHelper>>();

	public static MessagerCenter Instance
	{
		get
		{
			if (_instance == null)
			{
				_instance = new MessagerCenter();
			}
			return _instance;
		}
	}

	public static void Register(string eventType, DelegateDef handler)
	{
		Instance._Register(eventType, handler);
	}

	public static void UnRegister(string eventType, DelegateDef handler)
	{
		Instance._UnRegister(eventType, handler);
	}

	public static void Broadcast(string eventType)
	{
		Instance._Broadcast(eventType);
	}

	private void _Register(string eventType, DelegateDef handler)
	{
		lock (eventTable)
		{
			EventHelper eventHelper = new EventHelper();
			eventHelper.obj = handler.Target;
			eventHelper.handler = handler;
			if (eventTable.ContainsKey(eventType))
			{
				eventTable[eventType].Add(eventHelper);
				return;
			}
			eventTable.Add(eventType, new List<EventHelper> { eventHelper });
		}
	}

	private void _UnRegister(string eventType, DelegateDef handler)
	{
		lock (eventTable)
		{
			if (!eventTable.TryGetValue(eventType, out var value))
			{
				return;
			}
			for (int num = value.Count - 1; num >= 0; num--)
			{
				if (value[num].obj == handler.Target && value[num].handler == handler)
				{
					value.Remove(value[num]);
					break;
				}
			}
		}
	}

	private void _Broadcast(string eventType)
	{
		if (!eventTable.TryGetValue(eventType, out var value))
		{
			return;
		}
		for (int num = value.Count - 1; num >= 0; num--)
		{
			if (value[num].obj.ToString() == "null")
			{
				value.RemoveAt(num);
			}
		}
		for (int i = 0; i < value.Count; i++)
		{
			try
			{
				value[i].handler();
			}
			catch (Exception exception)
			{
				Debug.LogException(exception);
			}
		}
	}
}
public class MessagerCenter<T>
{
	private static MessagerCenter<T> _instance;

	private Dictionary<string, List<EventHelper<T>>> eventTable = new Dictionary<string, List<EventHelper<T>>>();

	public static MessagerCenter<T> Instance
	{
		get
		{
			if (_instance == null)
			{
				_instance = new MessagerCenter<T>();
			}
			return _instance;
		}
	}

	public static void Register(string eventType, DelegateDef<T> handler)
	{
		Instance._Register(eventType, handler);
	}

	public static void UnRegister(string eventType, DelegateDef<T> handler)
	{
		Instance._UnRegister(eventType, handler);
	}

	public static void Broadcast(string eventType, T arg1)
	{
		Instance._Broadcast(eventType, arg1);
	}

	private void _Register(string eventType, DelegateDef<T> handler)
	{
		lock (eventTable)
		{
			EventHelper<T> eventHelper = new EventHelper<T>();
			eventHelper.obj = handler.Target;
			eventHelper.handler = handler;
			if (eventTable.ContainsKey(eventType))
			{
				eventTable[eventType].Add(eventHelper);
				return;
			}
			eventTable.Add(eventType, new List<EventHelper<T>> { eventHelper });
		}
	}

	private void _UnRegister(string eventType, DelegateDef<T> handler)
	{
		lock (eventTable)
		{
			if (!eventTable.TryGetValue(eventType, out var value))
			{
				return;
			}
			for (int num = value.Count - 1; num >= 0; num--)
			{
				if (value[num].obj == handler.Target && value[num].handler == handler)
				{
					value.Remove(value[num]);
					break;
				}
			}
		}
	}

	private void _Broadcast(string eventType, T arg1)
	{
		if (!eventTable.TryGetValue(eventType, out var value))
		{
			return;
		}
		for (int num = value.Count - 1; num >= 0; num--)
		{
			if (value[num].obj.ToString() == "null")
			{
				value.RemoveAt(num);
			}
		}
		for (int i = 0; i < value.Count; i++)
		{
			try
			{
				value[i].handler(arg1);
			}
			catch (Exception exception)
			{
				Debug.LogException(exception);
			}
		}
	}
}
public class MessagerCenter<T, U>
{
	private static MessagerCenter<T, U> _instance;

	private Dictionary<string, List<EventHelper<T, U>>> eventTable = new Dictionary<string, List<EventHelper<T, U>>>();

	public static MessagerCenter<T, U> Instance
	{
		get
		{
			if (_instance == null)
			{
				_instance = new MessagerCenter<T, U>();
			}
			return _instance;
		}
	}

	public static void Register(string eventType, DelegateDef<T, U> handler)
	{
		Instance._Register(eventType, handler);
	}

	public static void UnRegister(string eventType, DelegateDef<T, U> handler)
	{
		Instance._UnRegister(eventType, handler);
	}

	public static void Broadcast(string eventType, T arg1, U arg2)
	{
		Instance._Broadcast(eventType, arg1, arg2);
	}

	private void _Register(string eventType, DelegateDef<T, U> handler)
	{
		lock (eventTable)
		{
			EventHelper<T, U> eventHelper = new EventHelper<T, U>();
			eventHelper.obj = handler.Target;
			eventHelper.handler = handler;
			if (eventTable.ContainsKey(eventType))
			{
				eventTable[eventType].Add(eventHelper);
				return;
			}
			eventTable.Add(eventType, new List<EventHelper<T, U>> { eventHelper });
		}
	}

	private void _UnRegister(string eventType, DelegateDef<T, U> handler)
	{
		lock (eventTable)
		{
			if (!eventTable.TryGetValue(eventType, out var value))
			{
				return;
			}
			for (int num = value.Count - 1; num >= 0; num--)
			{
				if (value[num].obj == handler.Target && value[num].handler == handler)
				{
					value.Remove(value[num]);
					break;
				}
			}
		}
	}

	private void _Broadcast(string eventType, T arg1, U arg2)
	{
		if (!eventTable.TryGetValue(eventType, out var value))
		{
			return;
		}
		for (int num = value.Count - 1; num >= 0; num--)
		{
			if (value[num].obj.ToString() == "null")
			{
				value.RemoveAt(num);
			}
		}
		for (int i = 0; i < value.Count; i++)
		{
			try
			{
				value[i].handler(arg1, arg2);
			}
			catch (Exception exception)
			{
				Debug.LogException(exception);
			}
		}
	}
}
public class MessagerCenter<T, U, V>
{
	private static MessagerCenter<T, U, V> _instance;

	private Dictionary<string, List<EventHelper<T, U, V>>> eventTable = new Dictionary<string, List<EventHelper<T, U, V>>>();

	public static MessagerCenter<T, U, V> Instance
	{
		get
		{
			if (_instance == null)
			{
				_instance = new MessagerCenter<T, U, V>();
			}
			return _instance;
		}
	}

	public static void Register(string eventType, DelegateDef<T, U, V> handler)
	{
		Instance._Register(eventType, handler);
	}

	public static void UnRegister(string eventType, DelegateDef<T, U, V> handler)
	{
		Instance._UnRegister(eventType, handler);
	}

	public static void Broadcast(string eventType, T arg1, U arg2, V arg3)
	{
		Instance._Broadcast(eventType, arg1, arg2, arg3);
	}

	private void _Register(string eventType, DelegateDef<T, U, V> handler)
	{
		lock (eventTable)
		{
			EventHelper<T, U, V> eventHelper = new EventHelper<T, U, V>();
			eventHelper.obj = handler.Target;
			eventHelper.handler = handler;
			if (eventTable.ContainsKey(eventType))
			{
				eventTable[eventType].Add(eventHelper);
				return;
			}
			eventTable.Add(eventType, new List<EventHelper<T, U, V>> { eventHelper });
		}
	}

	private void _UnRegister(string eventType, DelegateDef<T, U, V> handler)
	{
		lock (eventTable)
		{
			if (!eventTable.TryGetValue(eventType, out var value))
			{
				return;
			}
			for (int num = value.Count - 1; num >= 0; num--)
			{
				if (value[num].obj == handler.Target && value[num].handler == handler)
				{
					value.Remove(value[num]);
					break;
				}
			}
		}
	}

	private void _Broadcast(string eventType, T arg1, U arg2, V arg3)
	{
		if (!eventTable.TryGetValue(eventType, out var value))
		{
			return;
		}
		for (int num = value.Count - 1; num >= 0; num--)
		{
			if (value[num].obj.ToString() == "null")
			{
				value.RemoveAt(num);
			}
		}
		for (int i = 0; i < value.Count; i++)
		{
			try
			{
				value[i].handler(arg1, arg2, arg3);
			}
			catch (Exception exception)
			{
				Debug.LogException(exception);
			}
		}
	}
}
public class MessagerCenter<T, U, V, W>
{
	private static MessagerCenter<T, U, V, W> _instance;

	private Dictionary<string, List<EventHelper<T, U, V, W>>> eventTable = new Dictionary<string, List<EventHelper<T, U, V, W>>>();

	public static MessagerCenter<T, U, V, W> Instance
	{
		get
		{
			if (_instance == null)
			{
				_instance = new MessagerCenter<T, U, V, W>();
			}
			return _instance;
		}
	}

	public static void Register(string eventType, DelegateDef<T, U, V, W> handler)
	{
		Instance._Register(eventType, handler);
	}

	public static void UnRegister(string eventType, DelegateDef<T, U, V, W> handler)
	{
		Instance._UnRegister(eventType, handler);
	}

	public static void Broadcast(string eventType, T arg1, U arg2, V arg3, W atg4)
	{
		Instance._Broadcast(eventType, arg1, arg2, arg3, atg4);
	}

	private void _Register(string eventType, DelegateDef<T, U, V, W> handler)
	{
		lock (eventTable)
		{
			EventHelper<T, U, V, W> eventHelper = new EventHelper<T, U, V, W>();
			eventHelper.obj = handler.Target;
			eventHelper.handler = handler;
			if (eventTable.ContainsKey(eventType))
			{
				eventTable[eventType].Add(eventHelper);
				return;
			}
			eventTable.Add(eventType, new List<EventHelper<T, U, V, W>> { eventHelper });
		}
	}

	private void _UnRegister(string eventType, DelegateDef<T, U, V, W> handler)
	{
		lock (eventTable)
		{
			if (!eventTable.TryGetValue(eventType, out var value))
			{
				return;
			}
			for (int num = value.Count - 1; num >= 0; num--)
			{
				if (value[num].obj == handler.Target && value[num].handler == handler)
				{
					value.Remove(value[num]);
					break;
				}
			}
		}
	}

	private void _Broadcast(string eventType, T arg1, U arg2, V arg3, W atg4)
	{
		if (!eventTable.TryGetValue(eventType, out var value))
		{
			return;
		}
		for (int num = value.Count - 1; num >= 0; num--)
		{
			if (value[num].obj.ToString() == "null")
			{
				value.RemoveAt(num);
			}
		}
		for (int i = 0; i < value.Count; i++)
		{
			try
			{
				value[i].handler(arg1, arg2, arg3, atg4);
			}
			catch (Exception exception)
			{
				Debug.LogException(exception);
			}
		}
	}
}
