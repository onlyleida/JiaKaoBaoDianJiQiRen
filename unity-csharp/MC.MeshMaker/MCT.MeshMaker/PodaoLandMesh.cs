using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class PodaoLandMesh : BuildingMesh
{
	private BaseMesh frontMesh;

	private BaseMesh backMesh;

	private BaseMesh leftMesh;

	private BaseMesh rightMesh;

	public CurveMesh curveMesh;

	public List<Vector3> LeftVecs;

	private List<Vector3> points = new List<Vector3>();

	public void Create(PoDaoData data)
	{
		Create(gpsToVector3(data.landPoint[0]), "PaoDaoLand");
		buildingData = SetHeight(data);
		CreateSurface();
		CreateCurve();
		CreateConvex();
	}

	public void SetMaterial(Material material)
	{
		frontMesh.SetMaterial(material);
		backMesh.SetMaterial(material);
		leftMesh.SetMaterial(material);
		rightMesh.SetMaterial(material);
		curveMesh.SetMaterial(material);
	}

	private void CreateSurface()
	{
		PoDaoData poDaoData = (PoDaoData)buildingData;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 201;
		dTxBaseData.points = new List<Vector3>
		{
			points[0],
			points[1],
			points[2],
			points[7]
		};
		frontMesh = MakerFactory.Instance.Create(dTxBaseData);
		frontMesh.gameObject.name = "front";
		frontMesh.transform.SetParent(transform);
		frontMesh.gameObject.AddComponent<MeshCollider>();
		frontMesh.transform.position = points[0];
		DTxBaseData dTxBaseData2 = new DTxBaseData();
		dTxBaseData2.type = 201;
		dTxBaseData2.points = new List<Vector3>
		{
			points[6],
			points[3],
			points[4],
			points[5]
		};
		backMesh = MakerFactory.Instance.Create(dTxBaseData2);
		backMesh.gameObject.name = "back";
		backMesh.transform.SetParent(transform);
		backMesh.gameObject.AddComponent<MeshCollider>();
		backMesh.transform.position = points[6];
	}

	private void CreateCurve()
	{
		PoDaoData poDaoData = (PoDaoData)buildingData;
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 202;
		dTxBaseData.points = new List<Vector3>
		{
			points[7],
			points[2],
			points[3],
			points[6]
		};
		dTxBaseData.density = 10;
		curveMesh = (CurveMesh)MakerFactory.Instance.Create(dTxBaseData);
		curveMesh.transform.SetParent(transform);
		curveMesh.gameObject.AddComponent<MeshCollider>();
		curveMesh.gameObject.name = "curve";
		curveMesh.transform.position = points[7];
	}

	private void CreateConvex()
	{
		List<Vector3> leftVectors = GetLeftVectors(curveMesh.LeftVecs);
		List<Vector3> rightVectors = GetRightVectors(curveMesh.RightVecs);
		rightVectors = TransConvex(rightVectors);
		LeftVecs = leftVectors;
		leftMesh = CreateConvex(leftVectors);
		leftMesh.transform.SetParent(transform);
		leftMesh.gameObject.name = "left";
		leftMesh.transform.position = LeftVecs[0];
		rightMesh = CreateConvex(rightVectors);
		rightMesh.transform.SetParent(transform);
		rightMesh.gameObject.name = "right";
		rightMesh.transform.position = rightVectors[0];
	}

	private BaseMesh CreateConvex(List<Vector3> convex)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 203;
		dTxBaseData.points = convex;
		dTxBaseData.isAtLand = false;
		return MakerFactory.Instance.Create(dTxBaseData);
	}

	private PoDaoData SetHeight(PoDaoData model)
	{
		for (int i = 0; i < model.landPoint.Count; i++)
		{
			points.Add(gpsToVector3(model.landPoint[i]));
		}
		float num = (float)model.landPoint[2].altitude - (float)model.landPoint[0].altitude;
		if (num < 0.5f)
		{
			num = Vector3.Distance(points[0], points[1]) / 6f;
		}
		Debug.Log("坡道高度:" + num);
		Vector3 value = points[2];
		value.y = num;
		points[2] = value;
		value = points[3];
		value.y = num;
		points[3] = value;
		value = points[6];
		value.y = num;
		points[6] = value;
		value = points[7];
		value.y = num;
		points[7] = value;
		return model;
	}

	private List<Vector3> TransConvex(List<Vector3> res)
	{
		List<Vector3> list = new List<Vector3>(res);
		int num = 0;
		for (int num2 = res.Count - 1; num2 >= 0; num2--)
		{
			list[num++] = res[num2];
		}
		return list;
	}

	public List<Vector3> GetLeftVectors(List<Vector3> curveLeft)
	{
		PoDaoData poDaoData = (PoDaoData)buildingData;
		List<Vector3> list = new List<Vector3>(curveLeft);
		list.Insert(0, gpsToVector3(poDaoData.landPoint[0]));
		list.Add(gpsToVector3(poDaoData.landPoint[5]));
		return list;
	}

	public List<Vector3> GetRightVectors(List<Vector3> curveRight)
	{
		PoDaoData poDaoData = (PoDaoData)buildingData;
		List<Vector3> list = new List<Vector3>(curveRight);
		list.Insert(0, gpsToVector3(poDaoData.landPoint[1]));
		list.Add(gpsToVector3(poDaoData.landPoint[4]));
		return list;
	}

	public override Vector3 CenterPoint()
	{
		PoDaoData poDaoData = (PoDaoData)buildingData;
		return GetCenterPoint(gpsToVector3(poDaoData.landPoint));
	}
}
