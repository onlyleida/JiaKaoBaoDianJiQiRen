using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2QuXianMesh : B2Mesh
{
	private List<Vector3> leftPoints;

	private List<Vector3> rightPoints;

	public B2QuXianMesh Create(B2QuXian data)
	{
		Create(data.leftPoints[0], data, "QXXS");
		List<Vector3> posList = MeshMaker.cutPoints(gpsToVector3(data.leftPoints));
		List<Vector3> posList2 = MeshMaker.cutPoints(gpsToVector3(data.rightPoints));
		leftPoints = MoveLeft(MeshMaker.trimQua(posList));
		rightPoints = MoveRight(MeshMaker.trimQua(posList2));
		CreateLeft(data);
		CreateRight(data);
		CreateStartEnd(data);
		return this;
	}

	protected void CreateLeft(B2QuXian data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = leftPoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("QXXS-Line-1");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.leftPoints[0]) + gpsToVector3(data.leftPoints[data.leftPoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateRight(B2QuXian data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = rightPoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("QXXS-Line-2");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.rightPoints[0]) + gpsToVector3(data.rightPoints[data.rightPoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateStartEnd(B2QuXian data)
	{
		Gps gps = data.leftPoints[0];
		Gps gps2 = data.rightPoints[0];
		Gps gps3 = data.leftPoints[data.leftPoints.Count - 1];
		Gps gps4 = data.rightPoints[data.rightPoints.Count - 1];
		CreateLine(gpsToVector3(gps), gpsToVector3(gps2), isReal: false, data.lineWidth, "QXXS-Start", -1);
		CreateLine(gpsToVector3(gps3), gpsToVector3(gps4), isReal: false, data.lineWidth, "QXXS-End", -1);
		CreateObjectName((gpsToVector3(gps) + gpsToVector3(gps2)) / 2f, Quaternion.AngleAxis(90f, Vector3.up) * (gpsToVector3(gps) - gpsToVector3(gps2)), "曲线行驶", -0.5f);
	}

	public override Vector3 CenterPoint()
	{
		B2QuXian b2QuXian = (B2QuXian)b2Data;
		return (gpsToVector3(b2QuXian.rightPoints[0]) + gpsToVector3(b2QuXian.rightPoints[b2QuXian.rightPoints.Count - 1])) / 2f;
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
