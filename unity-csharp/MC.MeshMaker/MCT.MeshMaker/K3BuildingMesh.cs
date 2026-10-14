using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3BuildingMesh : K3Mesh
{
	private List<Vector3> points;

	private float height = 3f;

	private Color color = Color.cyan;

	public K3BuildingMesh Create(K3Common data)
	{
		Create(data, data.points[0], "Building-shap" + data.shape + "-" + data.id);
		if (data.shape == ShapeType.Bulding_Traffic_Light)
		{
			height = 5f;
			color = Color.green;
		}
		GameObject gameObject = new GameObject(data.name + "-" + data.desc);
		gameObject.transform.SetParent(transform);
		gameObject.transform.localPosition = Vector3.zero;
		points = gpsToVector3(data.points);
		CreateLine();
		return this;
	}

	public override float GetDistance(Vector3 point)
	{
		float num = 100f;
		foreach (Vector3 point2 in points)
		{
			Vector3 a = point2;
			a.y = 0f;
			float num2 = Vector3.Distance(a, point);
			if (num > num2)
			{
				num = num2;
			}
		}
		return num;
	}

	public override Vector3 CenterPoint()
	{
		return points[0];
	}

	private void CreateLine()
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 204;
		dTxBaseData.isOnlyUp = false;
		dTxBaseData.points = points;
		dTxBaseData.height = height;
		dTxBaseData.width = 0.3f;
		GameObject gameObject = new GameObject("Building");
		gameObject.transform.SetParent(transform);
		gameObject.transform.localPosition = Vector3.zero;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(gameObject.transform);
		baseMesh.gameObject.name = "lineMesh";
		baseMesh.SetMaterial(mainMaterial);
		baseMesh.transform.position = points[0] - GetHeight() * Vector3.up;
		baseMesh.gameObject.GetComponent<MeshRenderer>().material.SetColor("_Color", color);
		AddCollider(baseMesh.gameObject);
	}

	public override void SetMat()
	{
		k3Data.mainMat = 6;
		mainMaterial = MeshMakerManager.Instance.GetMaterial(k3Data.mainMat);
	}
}
