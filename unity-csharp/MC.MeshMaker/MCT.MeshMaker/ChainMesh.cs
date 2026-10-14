using System;
using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

[SurportType(MeshType.chain)]
public class ChainMesh : BaseMesh
{
	private List<Vector3> left_points = new List<Vector3>();

	private List<Vector3> right_points = new List<Vector3>();

	public override void Make(DTxBaseData data)
	{
		catchData = data;
		data.width /= 2f;
		GetDownPoints();
		base.Make(data);
	}

	public override List<Vector3> GetVertices()
	{
		vertices = new List<Vector3>();
		for (int i = 0; i < left_points.Count; i++)
		{
			vertices.Add(left_points[i]);
			vertices.Add(right_points[i]);
		}
		return vertices;
	}

	public override List<int> GetTriangles()
	{
		List<int> list = new List<int>();
		for (int i = 0; i < vertices.Count / 2 - 1; i++)
		{
			int item = i * 2;
			int item2 = i * 2 + 1;
			int item3 = i * 2 + 2;
			int item4 = i * 2 + 3;
			list.Add(item);
			list.Add(item3);
			list.Add(item2);
			list.Add(item4);
			list.Add(item2);
			list.Add(item3);
		}
		return list;
	}

	public override List<Vector2> GetUVs()
	{
		List<Vector2> list = new List<Vector2>();
		float num = vertices.Count / 2;
		for (int i = 0; (float)i < num; i++)
		{
			list.Add(new Vector2(0f, (float)i / num));
			list.Add(new Vector2(1f, (float)i / num));
		}
		return list;
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
				if ((double)Mathf.Abs(num2 - 90f) <= 0.05)
				{
					one = (Quaternion.AngleAxis(num2, Vector3.up) * vector3).normalized;
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
		static void AddItem(List<Vector3> list2, Vector3 item, int index)
		{
			if (list2.Count > index)
			{
				list2[index] = item;
			}
			else
			{
				list2.Add(item);
			}
		}
	}

	public override void SetMaterial(Material material)
	{
		base.SetMaterial(material);
		float num = 2f * catchData.width / 0.1f;
		gameObject.GetComponent<MeshRenderer>().material.SetTextureScale("_MainTex", new Vector2(1f, GetLength()));
	}

	private float GetLength()
	{
		float num = 0f;
		for (int i = 0; i < catchData.points.Count - 1; i++)
		{
			num += Vector3.Distance(catchData.points[i], catchData.points[i + 1]);
		}
		return num;
	}
}
