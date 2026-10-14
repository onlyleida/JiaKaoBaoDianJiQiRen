using System;
using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

[SurportType(MeshType.cube)]
public class CubeMesh : BaseMesh
{
	private List<Vector3> left_points = new List<Vector3>();

	private List<Vector3> right_points = new List<Vector3>();

	private List<Vector3> upleft_points = new List<Vector3>();

	private List<Vector3> upright_points = new List<Vector3>();

	private List<Vector3> vecs = new List<Vector3>();

	public override void Make(DTxBaseData data)
	{
		catchData = data;
		data.width /= 2f;
		GetDownPoints();
		GetUpPoints();
		base.Make(data);
	}

	public override List<Vector3> GetVertices()
	{
		int num = 0;
		if (!catchData.isOnlyUp)
		{
			AddItem(vecs, left_points[0], num++);
			AddItem(vecs, right_points[0], num++);
			AddItem(vecs, upright_points[0], num++);
			AddItem(vecs, upleft_points[0], num++);
		}
		for (int i = 0; i < left_points.Count - 1; i++)
		{
			if (!catchData.isOnlyUp)
			{
				AddItem(vecs, right_points[i], num++);
				AddItem(vecs, left_points[i], num++);
				AddItem(vecs, left_points[i + 1], num++);
				AddItem(vecs, right_points[i + 1], num++);
			}
			AddItem(vecs, upleft_points[i], num++);
			AddItem(vecs, upright_points[i], num++);
			AddItem(vecs, upright_points[i + 1], num++);
			AddItem(vecs, upleft_points[i + 1], num++);
			if (!catchData.isOnlyUp)
			{
				AddItem(vecs, left_points[i], num++);
				AddItem(vecs, upleft_points[i], num++);
				AddItem(vecs, upleft_points[i + 1], num++);
				AddItem(vecs, left_points[i + 1], num++);
				AddItem(vecs, upright_points[i], num++);
				AddItem(vecs, right_points[i], num++);
				AddItem(vecs, right_points[i + 1], num++);
				AddItem(vecs, upright_points[i + 1], num++);
			}
		}
		if (!catchData.isOnlyUp)
		{
			int index = left_points.Count - 1;
			AddItem(vecs, left_points[index], num++);
			AddItem(vecs, upleft_points[index], num++);
			AddItem(vecs, upright_points[index], num++);
			AddItem(vecs, right_points[index], num++);
		}
		return vecs;
	}

	public override List<int> GetTriangles()
	{
		if (triangles != null && triangles.Count > 0)
		{
			return triangles;
		}
		int count = vertices.Count;
		int num = count / 4;
		List<int> list = new List<int>();
		for (int i = 0; i < num; i++)
		{
			int item = i * 4;
			int item2 = i * 4 + 1;
			int item3 = i * 4 + 2;
			int item4 = i * 4 + 3;
			list.Add(item);
			list.Add(item4);
			list.Add(item2);
			list.Add(item2);
			list.Add(item4);
			list.Add(item3);
		}
		return list;
	}

	public override List<Vector2> GetUVs()
	{
		if (uvs != null && uvs.Count > 0)
		{
			return uvs;
		}
		float lineLength = GetLineLength(catchData.points, catchData.points.Count);
		List<Vector2> list = new List<Vector2>();
		int num = vertices.Count / 4;
		if (!catchData.isOnlyUp)
		{
			list.Add(Vector3.zero);
			list.Add(Vector3.zero);
			list.Add(Vector3.zero);
			list.Add(Vector3.zero);
		}
		if (!catchData.isOnlyUp)
		{
			for (int i = 0; i < num - 2; i++)
			{
				int num2 = i / 4;
				float lineLength2 = GetLineLength(catchData.points, num2);
				float lineLength3 = GetLineLength(catchData.points, num2 + 1);
				list.Add(new Vector2(0f, lineLength2 / lineLength));
				list.Add(new Vector2(1f, lineLength2 / lineLength));
				list.Add(new Vector2(1f, lineLength3 / lineLength));
				list.Add(new Vector2(0f, lineLength3 / lineLength));
			}
		}
		else
		{
			for (int j = 0; j < num; j++)
			{
				float lineLength4 = GetLineLength(catchData.points, j);
				float lineLength5 = GetLineLength(catchData.points, j + 1);
				list.Add(new Vector2(0f, lineLength4 / lineLength));
				list.Add(new Vector2(1f, lineLength4 / lineLength));
				list.Add(new Vector2(1f, lineLength5 / lineLength));
				list.Add(new Vector2(0f, lineLength5 / lineLength));
			}
		}
		if (!catchData.isOnlyUp)
		{
			list.Add(Vector3.one);
			list.Add(Vector3.one);
			list.Add(Vector3.one);
			list.Add(Vector3.one);
		}
		return list;
	}

	public override void SetMaterial(Material material)
	{
		base.SetMaterial(material);
		float num = 2f * catchData.width / 0.1f;
		gameObject.GetComponent<MeshRenderer>().material.SetTextureScale("_MainTex", new Vector2(1f, GetCubeLength()));
	}

	public override void SetMaterial(Material material, bool changeScale)
	{
		base.SetMaterial(material);
		if (changeScale)
		{
			float num = 2f * catchData.width / 0.1f;
			gameObject.GetComponent<MeshRenderer>().material.SetTextureScale("_MainTex", new Vector2(1f, GetCubeLength()));
		}
	}

	private void GetDownPoints()
	{
		Vector3 one = Vector3.one;
		List<Vector3> list = new List<Vector3>(catchData.points);
		for (int i = 0; i < list.Count; i++)
		{
			Vector3 value = list[i];
			value.y = 0f;
			list[i] = value;
		}
		for (int j = 0; j < list.Count; j++)
		{
			float num = catchData.width;
			if (j == list.Count - 1)
			{
				Vector3 vector = list[j] - list[j - 1];
				one = (Quaternion.AngleAxis(90f, Vector3.up) * vector).normalized;
			}
			else if (j == 0)
			{
				Vector3 vector2 = list[j + 1] - list[j];
				one = (Quaternion.AngleAxis(90f, Vector3.up) * vector2).normalized;
			}
			else
			{
				Vector3 vector3 = list[j + 1] - list[j];
				Vector3 to = list[j - 1] - list[j];
				float num2 = Vector3.Angle(vector3, to) / 2f;
				if (Mathf.Abs(num2 - 90f) <= 5f)
				{
					one = (Quaternion.AngleAxis(num2, Vector3.up) * vector3).normalized;
				}
				else if (Mathf.Abs(num2) < 5f)
				{
					one = (Quaternion.AngleAxis(90f, Vector3.up) * vector3).normalized;
				}
				else
				{
					float num3 = (float)Math.PI;
					num /= Mathf.Sin(num2 * num3 / 180f);
					one = (vector3.normalized + to.normalized).normalized;
					if (j > 0 && Vector3.Cross(list[j] - list[j - 1], one).y < 0f)
					{
						one = -one;
					}
				}
			}
			Vector3 vector4 = catchData.points[j] + one * num;
			Vector3 vector5 = catchData.points[j] - one * num;
			if (catchData.isAtLand)
			{
				vector4 = MeshUtility.GetAtlandPos(vector4);
				vector5 = MeshUtility.GetAtlandPos(vector5);
			}
			AddItem(right_points, vector4 - catchData.points[0], j);
			AddItem(left_points, vector5 - catchData.points[0], j);
		}
	}

	private void GetUpPoints()
	{
		for (int i = 0; i < left_points.Count; i++)
		{
			Vector3 item = left_points[i];
			item.y += catchData.height;
			Vector3 item2 = right_points[i];
			item2.y += catchData.height;
			AddItem(upleft_points, item, i);
			AddItem(upright_points, item2, i);
		}
	}

	private float GetLineLength(List<Vector3> points, int count)
	{
		float num = 0f;
		for (int i = 0; i < count; i++)
		{
			if (i + 1 < points.Count)
			{
				num += Vector3.Distance(points[i], points[i + 1]);
			}
		}
		return num;
	}

	private void ShowRay(float time)
	{
		Vector3 vector = catchData.points[0];
		for (int i = 0; i < right_points.Count - 1; i++)
		{
			DebugHelper.DrawLine(left_points[i] + vector, left_points[i + 1] + vector, time, Color.red);
			DebugHelper.DrawLine(right_points[i] + vector, right_points[i + 1] + vector, time, Color.red);
			DebugHelper.DrawLine(upright_points[i] + vector, upright_points[i + 1] + vector, time, Color.green);
			DebugHelper.DrawLine(upleft_points[i] + vector, upleft_points[i + 1] + vector, time, Color.green);
		}
		for (int j = 0; j < catchData.points.Count - 1; j++)
		{
		}
	}

	public void SetSize(float w, float h)
	{
		catchData.height = h;
		catchData.width = w;
	}

	private float GetCubeLength()
	{
		float num = 0f;
		for (int i = 0; i < catchData.points.Count - 1; i++)
		{
			num += Vector3.Distance(catchData.points[i], catchData.points[i + 1]);
		}
		return num;
	}

	private void AddItem(List<Vector3> list, Vector3 item, int index)
	{
		if (list.Count > index)
		{
			list[index] = item;
		}
		else
		{
			list.Add(item);
		}
	}
}
