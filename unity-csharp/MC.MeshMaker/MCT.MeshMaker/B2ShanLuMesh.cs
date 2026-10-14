using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class B2ShanLuMesh : B2Mesh
{
	private List<Vector3> leftPoints;

	private List<Vector3> rightPoints;

	private List<Vector3> middlePoints;

	public Vector3 firstHonkReport1;

	public Vector3 firstHonkReport2;

	public Vector3 secondHonkReport1;

	public Vector3 secondHonkReport2;

	public Vector3 firstHonk1;

	public Vector3 firstHonk2;

	public Vector3 secondHonk1;

	public Vector3 secondHonk2;

	public B2ShanLuMesh Create(B2ShanLu data)
	{
		Create(data.leftPoints[0], data, "SL");
		firstHonkReport1 = gpsToVector3(data.firstHonkReport1);
		firstHonkReport2 = gpsToVector3(data.firstHonkReport2);
		secondHonkReport1 = gpsToVector3(data.secondHonkReport1);
		secondHonkReport2 = gpsToVector3(data.secondHonkReport2);
		firstHonk1 = gpsToVector3(data.firstHonk1);
		firstHonk2 = gpsToVector3(data.firstHonk2);
		secondHonk1 = gpsToVector3(data.secondHonk1);
		secondHonk2 = gpsToVector3(data.secondHonk2);
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

	public override Vector3 CenterPoint()
	{
		B2ShanLu b2ShanLu = (B2ShanLu)b2Data;
		return (gpsToVector3(b2ShanLu.rightPoints[0]) + gpsToVector3(b2ShanLu.leftPoints[0])) / 2f;
	}

	protected void CreateLeft(B2ShanLu data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = leftPoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("SL-Line-1");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.leftPoints[0]) + gpsToVector3(data.leftPoints[data.leftPoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateRight(B2ShanLu data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = rightPoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("SL-Line-2");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.rightPoints[0]) + gpsToVector3(data.rightPoints[data.rightPoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateMiddle(B2ShanLu data)
	{
		float height = 0.01f;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = true;
		dTxBaseData.points = middlePoints;
		dTxBaseData.height = height;
		dTxBaseData.width = data.lineWidth / 100f;
		GameObject gameObject = new GameObject("SL-Line-3");
		gameObject.transform.SetParent(transform);
		gameObject.transform.position = (gpsToVector3(data.middlePoints[0]) + gpsToVector3(data.middlePoints[data.middlePoints.Count - 1])) / 2f;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.transform.position = dTxBaseData.points[0];
		baseMesh.SetMaterial(realMaterial);
	}

	protected void CreateStartEnd(B2ShanLu data)
	{
		Gps gps = data.leftPoints[0];
		Gps gps2 = data.rightPoints[0];
		Gps gps3 = data.middlePoints[0];
		Gps gps4 = data.leftPoints[data.leftPoints.Count - 1];
		Gps gps5 = data.rightPoints[data.rightPoints.Count - 1];
		Gps gps6 = data.middlePoints[data.middlePoints.Count - 1];
		CreateObjectName((gpsToVector3(gps) + gpsToVector3(gps3)) / 2f, Quaternion.AngleAxis(90f, Vector3.up) * (gpsToVector3(gps) - gpsToVector3(gps3)), "山路", -0.5f);
		CreateObjectName((gpsToVector3(gps3) + gpsToVector3(gps2)) / 2f, Quaternion.AngleAxis(90f, Vector3.up) * (gpsToVector3(gps3) - gpsToVector3(gps2)), "山路", -0.5f);
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
