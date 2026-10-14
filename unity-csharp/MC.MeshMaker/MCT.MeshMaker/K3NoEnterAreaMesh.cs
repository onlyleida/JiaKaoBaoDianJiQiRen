using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3NoEnterAreaMesh : K3Mesh
{
	private List<Vector3> points;

	public K3NoEnterAreaMesh Create(K3Common data)
	{
		string name = GetName(data.id, data.type, data.shape);
		Create(data, data.points[0], name);
		points = gpsToVector3(data.points);
		CreateConvex(data);
		return this;
	}

	public override float GetDistance(Vector3 point)
	{
		return GetDistance(point, points, seal: true);
	}

	private void CreateConvex(K3Common data)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 205;
		dTxBaseData.points = new List<Vector3>(gpsToVector3(data.points));
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(transform);
		baseMesh.gameObject.AddComponent<MeshCollider>();
		baseMesh.transform.localPosition = Vector3.zero;
		Material material = Resources.Load("base_other/Material/common_mat") as Material;
		if (material != null)
		{
			Color yellow = Color.yellow;
			yellow.a = 0.5f;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material = material;
			baseMesh.gameObject.GetComponent<MeshRenderer>().material.SetColor("_Color", yellow);
		}
		AddCollider(baseMesh.gameObject);
	}

	public override Vector3 CenterPoint()
	{
		return points[0];
	}
}
