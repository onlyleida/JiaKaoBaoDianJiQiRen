using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class MeshUtility
{
	public static Vector3 GetAtlandPos(Vector3 start)
	{
		Ray ray = new Ray(start + Vector3.up * 10f, -Vector3.up);
		if (Physics.Raycast(ray, out var hitInfo))
		{
			return hitInfo.point;
		}
		return start;
	}

	public static List<Vector3> GetAtlandPos(List<Vector3> points)
	{
		for (int i = 0; i < points.Count; i++)
		{
			points[i] = GetAtlandPos(points[i]);
		}
		return points;
	}

	private List<Vector3> ClearData(List<Vector3> list)
	{
		List<Vector3> list2 = new List<Vector3>();
		Vector3 vector = Vector3.zero;
		foreach (Vector3 item in list)
		{
			if (vector.x != item.x || vector.y != item.y || vector.z != item.z)
			{
				vector = item;
				list2.Add(item);
			}
		}
		return list2;
	}

	public static List<string> GetResDirectors()
	{
		List<string> dirs = new List<string>();
		GetDirs(Application.dataPath + "/[Game]/Res/Resources", ref dirs);
		return dirs;
	}

	private static void GetDirs(string dirPath, ref List<string> dirs)
	{
		string[] directories = Directory.GetDirectories(dirPath);
		foreach (string text in directories)
		{
			Debug.Log(text);
			if (text.Contains("base_"))
			{
				string item = text.Substring(text.IndexOf("base_"));
				dirs.Add(item);
			}
		}
		if (Directory.GetDirectories(dirPath).Length != 0)
		{
			string[] directories2 = Directory.GetDirectories(dirPath);
			foreach (string dirPath2 in directories2)
			{
				GetDirs(dirPath2, ref dirs);
			}
		}
	}
}
