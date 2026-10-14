using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2ChunHuaLuMesh : B2Mesh
{
	private List<Vector3> leftPoints;

	private List<Vector3> rightPoints;

	private List<Vector3> middlePoints;

	public B2ChunHuaLuMesh Create(B2ChunHuaLu data)
	{
		Create(data.leftPoints[0], data, "CH");
		List<Vector3> posList = MeshMaker.cutPoints(gpsToVector3(data.leftPoints));
		List<Vector3> posList2 = MeshMaker.cutPoints(gpsToVector3(data.rightPoints));
		List<Vector3> posList3 = MeshMaker.cutPoints(gpsToVector3(data.middlePoints));
		leftPoints = MoveLeft(MeshMaker.trimQua(posList));
		rightPoints = MoveRight(MeshMaker.trimQua(posList2));
		middlePoints = MeshMaker.trimQua(posList3);
		CreateLeft(data);
		CreateRight(data);
		CreateMiddle(data);
		CreateStartEnd(data);
		return this;
	}

	protected void CreateLeft(B2ChunHuaLu data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = leftPoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("CH-Line-1");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.leftPoints[0]) + gpsToVector3(data.leftPoints[data.leftPoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateRight(B2ChunHuaLu data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = rightPoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("CH-Line-2");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.rightPoints[0]) + gpsToVector3(data.rightPoints[data.rightPoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateMiddle(B2ChunHuaLu data)
	{
		if (middlePoints != null)
		{
			float height = 0.01f;
			DTxBaseData dTxBaseData = new DTxBaseData();
			dTxBaseData.type = 204;
			dTxBaseData.isOnlyUp = true;
			dTxBaseData.points = middlePoints;
			dTxBaseData.height = height;
			dTxBaseData.width = data.lineWidth / 100f;
			GameObject gameObject = new GameObject("CH-Line-3");
			gameObject.transform.SetParent(transform);
			gameObject.transform.position = (gpsToVector3(data.middlePoints[0]) + gpsToVector3(data.middlePoints[data.middlePoints.Count - 1])) / 2f;
			BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
			baseMesh.transform.SetParent(gameObject.transform);
			baseMesh.gameObject.name = "lineMesh";
			baseMesh.transform.position = dTxBaseData.points[0];
			baseMesh.SetMaterial(realMaterial);
		}
	}

	protected void CreateStartEnd(B2ChunHuaLu data)
	{
		Gps gps = data.leftPoints[0];
		Gps gps2 = data.rightPoints[0];
		Gps gps3 = data.leftPoints[data.leftPoints.Count - 1];
		Gps gps4 = data.rightPoints[data.rightPoints.Count - 1];
		CreateObjectName((gpsToVector3(gps) + gpsToVector3(gps2)) / 2f, Quaternion.AngleAxis(90f, Vector3.up) * (gpsToVector3(gps) - gpsToVector3(gps2)), "湿滑路面", -0.5f);
	}

	public override Vector3 CenterPoint()
	{
		B2ChunHuaLu b2ChunHuaLu = (B2ChunHuaLu)b2Data;
		return (gpsToVector3(b2ChunHuaLu.rightPoints[0]) + gpsToVector3(b2ChunHuaLu.rightPoints[b2ChunHuaLu.rightPoints.Count - 1])) / 2f;
	}

	public List<Vector3> MoveLeft(List<Vector3> points)
	{
		for (int i = 0; i < points.Count - 1; i++)
		{
			Vector3 vector = points[i + 1] - points[i];
			Vector3 normalized = (Quaternion.AngleAxis(90f, Vector3.up) * vector).normalized;
			points[i] -= normalized.normalized * b2Data.lineWidth / 100f / 2f;
			if (i == points.Count - 2)
			{
				points[i + 1] -= normalized.normalized * b2Data.lineWidth / 100f / 2f;
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
			points[i] += normalized.normalized * b2Data.lineWidth / 100f / 2f;
			if (i == points.Count - 2)
			{
				points[i + 1] += normalized.normalized * b2Data.lineWidth / 100f / 2f;
			}
		}
		return points;
	}
}
