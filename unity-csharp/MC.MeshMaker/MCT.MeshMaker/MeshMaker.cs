using System;
using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class MeshMaker
{
	public GameObject gameObject;

	public Transform transform;

	public GameObject nameText;

	public void Create(Vector3 position, string name = "defult_name")
	{
		Transform parent = Parent();
		gameObject = new GameObject(name);
		transform = gameObject.transform;
		transform.position = position;
		transform.SetParent(parent);
	}

	public Transform Parent()
	{
		GameObject gameObject = GameObject.Find("Meshes");
		if (gameObject == null)
		{
			gameObject = new GameObject("Meshes");
		}
		return gameObject.transform;
	}

	public virtual Vector3 CenterPoint()
	{
		return Vector3.zero;
	}

	public Vector3 GetCenterPoint(List<Vector3> points)
	{
		Vector3 zero = Vector3.zero;
		foreach (Vector3 point in points)
		{
			zero += point;
		}
		return zero / points.Count;
	}

	public virtual Vector3 gpsToVector3(Gps gps)
	{
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}

	public virtual List<Vector3> gpsToVector3(List<Gps> gps)
	{
		return MeshMakerManager.Instance.GetConverter().gpsToVector3(gps);
	}

	public static List<Vector3> cutPoints(List<Vector3> points)
	{
		if (points == null)
		{
			return null;
		}
		List<Vector3> list = new List<Vector3>();
		Vector3 a = points[0];
		list.Add(points[0]);
		for (int i = 0; i < points.Count; i++)
		{
			if (i == points.Count - 1)
			{
				list.Add(points[i]);
			}
			else if (Vector3.Distance(a, points[i]) > 0.3f)
			{
				list.Add(points[i]);
				a = points[i];
			}
		}
		return list;
	}

	public static List<Vector3> trimQua(List<Vector3> posList)
	{
		if (posList == null)
		{
			return null;
		}
		List<Vector3> list = new List<Vector3>();
		float[] array = new float[posList.Count];
		float[] out_points = new float[posList.Count];
		float[] array2 = new float[posList.Count];
		float[] out_points2 = new float[posList.Count];
		float[] array3 = new float[posList.Count];
		float[] out_points3 = new float[posList.Count];
		for (int i = 0; i < posList.Count; i++)
		{
			array[i] = posList[i].x;
			array2[i] = posList[i].y;
			array3[i] = posList[i].z;
		}
		linearSmooth5(array, ref out_points);
		linearSmooth5(array2, ref out_points2);
		linearSmooth5(array3, ref out_points3);
		for (int j = 0; j < array.Length; j++)
		{
			list.Add(new Vector3(out_points[j], out_points2[j], out_points3[j]));
		}
		return list;
	}

	public static void quadraticSmooth7(float[] in_points, ref float[] out_poin_pointsts)
	{
		int num = in_points.Length;
		if (num < 7)
		{
			Array.Copy(in_points, 0, out_poin_pointsts, 0, num);
			return;
		}
		out_poin_pointsts[0] = (32f * in_points[0] + 15f * in_points[1] + 3f * in_points[2] - 4f * in_points[3] - 6f * in_points[4] - 3f * in_points[5] + 5f * in_points[6]) / 42f;
		out_poin_pointsts[1] = (5f * in_points[0] + 4f * in_points[1] + 3f * in_points[2] + 2f * in_points[3] + in_points[4] - in_points[6]) / 14f;
		out_poin_pointsts[2] = (1f * in_points[0] + 3f * in_points[1] + 4f * in_points[2] + 4f * in_points[3] + 3f * in_points[4] + 1f * in_points[5] - 2f * in_points[6]) / 14f;
		for (int i = 3; i <= num - 4; i++)
		{
			out_poin_pointsts[i] = (-2f * (in_points[i - 3] + in_points[i + 3]) + 3f * (in_points[i - 2] + in_points[i + 2]) + 6f * (in_points[i - 1] + in_points[i + 1]) + 7f * in_points[i]) / 21f;
		}
		out_poin_pointsts[num - 3] = (1f * in_points[num - 1] + 3f * in_points[num - 2] + 4f * in_points[num - 3] + 4f * in_points[num - 4] + 3f * in_points[num - 5] + 1f * in_points[num - 6] - 2f * in_points[num - 7]) / 14f;
		out_poin_pointsts[num - 2] = (5f * in_points[num - 1] + 4f * in_points[num - 2] + 3f * in_points[num - 3] + 2f * in_points[num - 4] + in_points[num - 5] - in_points[num - 7]) / 14f;
		out_poin_pointsts[num - 1] = (32f * in_points[num - 1] + 15f * in_points[num - 2] + 3f * in_points[num - 3] - 4f * in_points[num - 4] - 6f * in_points[num - 5] - 3f * in_points[num - 6] + 5f * in_points[num - 7]) / 42f;
	}

	public static void linearSmooth5(float[] in_points, ref float[] out_points)
	{
		int num = in_points.Length;
		if (num < 5)
		{
			Array.Copy(in_points, 0, out_points, 0, num);
			return;
		}
		out_points[0] = (3f * in_points[0] + 2f * in_points[1] + in_points[2] - in_points[4]) / 5f;
		out_points[1] = (4f * in_points[0] + 3f * in_points[1] + 2f * in_points[2] + in_points[3]) / 10f;
		for (int i = 2; i <= num - 3; i++)
		{
			out_points[i] = (in_points[i - 2] + in_points[i - 1] + in_points[i] + in_points[i + 1] + in_points[i + 2]) / 5f;
		}
		out_points[num - 2] = (4f * in_points[num - 1] + 3f * in_points[num - 2] + 2f * in_points[num - 3] + in_points[num - 4]) / 10f;
		out_points[num - 1] = (3f * in_points[num - 1] + 2f * in_points[num - 2] + in_points[num - 3] - in_points[num - 5]) / 5f;
	}
}
