using System;
using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2SuiDaoMesh : K2Mesh
{
	private List<Vector3> leftPoints;

	private List<Vector3> rightPoints;

	private List<Vector3> centerPoints;

	private Vector3 point1;

	private Vector3 point2;

	private Vector3 point3;

	private Vector3 point4;

	public K2SuiDaoMesh Create(K2SuiDao data)
	{
		Create(data.gps1, data, "MNSD");
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		point3 = gpsToVector3(data.gps3);
		point4 = gpsToVector3(data.gps4);
		CreateLine(point1, point2, isReal: false, data.lineWidth, "MNSD-Line-1-2");
		CreateLine(point3, point4, isReal: false, data.lineWidth, "MNSD-Line-3-4");
		CreateObjectName((point1 + point2) / 2f - (point1 - point2).normalized * Vector3.Distance(point1, point2) / 4f, Quaternion.AngleAxis(90f, Vector3.up) * (point1 - point2), "模拟隧道");
		CreateObjectName((point1 + point2) / 2f + (point1 - point2).normalized * Vector3.Distance(point1, point2) / 4f, Quaternion.AngleAxis(90f, Vector3.up) * (point1 - point2), "模拟隧道");
		if (data.leftPoints != null && data.leftPoints.Count >= 2)
		{
			List<Vector3> posList = cutPoints(gpsToVector3(data.leftPoints));
			leftPoints = MoveLeft(trimQua(posList));
			CreateCurveLine(leftPoints, data.lineWidth, "MNSD-Line-1");
		}
		if (data.centerPoints != null && data.centerPoints.Count >= 2)
		{
			List<Vector3> posList2 = cutPoints(gpsToVector3(data.centerPoints));
			centerPoints = MoveLeft(trimQua(posList2));
			CreateCurveLine(centerPoints, data.lineWidth, "MNSD-Line-3");
		}
		if (data.rightPoints != null && data.rightPoints.Count >= 2)
		{
			List<Vector3> posList3 = cutPoints(gpsToVector3(data.rightPoints));
			rightPoints = MoveLeft(trimQua(posList3));
			CreateCurveLine(rightPoints, data.lineWidth, "MNSD-Line-2");
		}
		return this;
	}

	private new static List<Vector3> cutPoints(List<Vector3> points)
	{
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

	private new static List<Vector3> trimQua(List<Vector3> posList)
	{
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

	private new static void linearSmooth5(float[] in_points, ref float[] out_points)
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

	protected void CreateCurveLine(List<Vector3> points, float width, string name)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = points;
		dTxBaseData.height = height;
		dTxBaseData.width = width / 100f;
		GameObject gameObject = new GameObject(name);
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (points[0] + points[points.Count - 1]) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	public override Vector3 CenterPoint()
	{
		return (point1 + point2 + point3 + point4) / 4f;
	}

	public List<Vector3> MoveLeft(List<Vector3> points)
	{
		for (int i = 0; i < points.Count - 1; i++)
		{
			Vector3 vector = points[i + 1] - points[i];
			Vector3 normalized = (Quaternion.AngleAxis(90f, Vector3.up) * vector).normalized;
			points[i] -= normalized.normalized * k2Data.lineWidth / 100f / 2f;
			if (i == points.Count - 2)
			{
				points[i + 1] -= normalized.normalized * k2Data.lineWidth / 100f / 2f;
			}
		}
		return points;
	}

	public List<Vector3> MoveRight(List<Vector3> points)
	{
		for (int i = 0; i < points.Count - 1; i++)
		{
			Vector3 vector = points[i + 1] - points[i];
			Vector3 normalized = (Quaternion.AngleAxis(90f, Vector3.up) * vector).normalized;
			points[i] += normalized.normalized * k2Data.lineWidth / 100f / 2f;
			if (i == points.Count - 2)
			{
				points[i + 1] += normalized.normalized * k2Data.lineWidth / 100f / 2f;
			}
		}
		return points;
	}
}
