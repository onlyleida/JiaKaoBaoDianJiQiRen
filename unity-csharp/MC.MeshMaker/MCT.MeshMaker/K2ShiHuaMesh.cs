using System;
using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K2ShiHuaMesh : K2Mesh
{
	private List<Vector3> leftPoints;

	private List<Vector3> rightPoints;

	public K2ShiHuaMesh Create(K2ShiHua data)
	{
		Create(data.leftPoints[0], data, "SSLM");
		List<Vector3> posList = cutPoints(gpsToVector3(data.leftPoints));
		List<Vector3> posList2 = cutPoints(gpsToVector3(data.rightPoints));
		leftPoints = MoveLeft(trimQua(posList));
		rightPoints = MoveRight(trimQua(posList2));
		CreateLeft(data);
		CreateRight(data);
		CreateStartEnd(data);
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

	private new static void quadraticSmooth7(float[] in_points, ref float[] out_poin_pointsts)
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

	protected void CreateLeft(K2ShiHua data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = leftPoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("SSLM-Line-1");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.leftPoints[0]) + gpsToVector3(data.leftPoints[data.leftPoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateRight(K2ShiHua data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = rightPoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("SSLM-Line-2");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.rightPoints[0]) + gpsToVector3(data.rightPoints[data.rightPoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateStartEnd(K2ShiHua data)
	{
		Gps gps = data.leftPoints[0];
		Gps gps2 = data.rightPoints[0];
		Gps gps3 = data.leftPoints[data.leftPoints.Count - 1];
		Gps gps4 = data.rightPoints[data.rightPoints.Count - 1];
		CreateLine(gpsToVector3(gps), gpsToVector3(gps2), isReal: false, data.lineWidth, "SSLM-Start", -1);
		CreateLine(gpsToVector3(gps3), gpsToVector3(gps4), isReal: false, data.lineWidth, "SSLM-End", -1);
		CreateObjectName((gpsToVector3(gps) + gpsToVector3(gps2)) / 2f, Quaternion.AngleAxis(90f, Vector3.up) * (gpsToVector3(gps) - gpsToVector3(gps2)), "湿滑路面");
	}

	public override Vector3 CenterPoint()
	{
		K2ShiHua k2ShiHua = (K2ShiHua)k2Data;
		return (gpsToVector3(k2ShiHua.rightPoints[0]) + gpsToVector3(k2ShiHua.rightPoints[k2ShiHua.rightPoints.Count - 1])) / 2f;
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
