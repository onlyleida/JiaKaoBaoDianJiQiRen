using System;
using System.Collections.Generic;
using System.Reflection;

namespace MCT.MeshMaker;

public class MakerFactory
{
	private List<BaseMesh> makerList = new List<BaseMesh>();

	private MeshMakerManager makerManager;

	public static MakerFactory Instance;

	public MakerFactory(MeshMakerManager mgr)
	{
		Instance = this;
		makerManager = mgr;
		Assembly executingAssembly = Assembly.GetExecutingAssembly();
		Type[] types = executingAssembly.GetTypes();
		Type[] array = types;
		foreach (Type type in array)
		{
			SurportType customAttribute = type.GetCustomAttribute<SurportType>();
			if (customAttribute != null)
			{
				BaseMesh item = Activator.CreateInstance(type) as BaseMesh;
				makerList.Add(item);
			}
		}
	}

	public BaseMesh Create(DTxBaseData data)
	{
		for (int i = 0; i < makerList.Count; i++)
		{
			Type type = makerList[i].GetType();
			SurportType customAttribute = type.GetCustomAttribute<SurportType>();
			if (customAttribute.CanUse((MeshType)data.type))
			{
				BaseMesh baseMesh = Activator.CreateInstance(type) as BaseMesh;
				baseMesh.Create(data);
				return baseMesh;
			}
		}
		return null;
	}
}
