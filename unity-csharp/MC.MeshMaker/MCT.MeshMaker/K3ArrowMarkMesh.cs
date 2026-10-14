using System.Collections.Generic;
using UnityEngine;

namespace MCT.MeshMaker;

public class K3ArrowMarkMesh : K3Mesh
{
	private Vector3 point1;

	private Vector3 point2;

	private Transform parent;

	public K3ArrowMarkMesh Create(K3ArrowMark data)
	{
		string name = GetName(data.id, data.type, data.arrowType);
		Create(data, data.gps2, name);
		point1 = gpsToVector3(data.gps1);
		point2 = gpsToVector3(data.gps2);
		GameObject gameObject = new GameObject("ArrowParent");
		gameObject.transform.SetParent(transform);
		gameObject.transform.localPosition = Vector3.zero;
		parent = gameObject.transform;
		if (data.arrowType == ShapeType.TurnLeft)
		{
			CreateTurnLeft();
		}
		else if (data.arrowType == ShapeType.TurnRight)
		{
			CreateTurnRight();
		}
		else if (data.arrowType == ShapeType.TurnLeftRight)
		{
			CreateLeftRight();
		}
		else if (data.arrowType == ShapeType.StraightTurnLeft)
		{
			CreateStraightTurnLeft();
		}
		else if (data.arrowType == ShapeType.StraightTurnRight)
		{
			CreateStraightTurnRight();
		}
		else if (data.arrowType == ShapeType.StraightTurnAround)
		{
			CreateStraightRound();
		}
		else if (data.arrowType == ShapeType.TurnAround)
		{
			CreateRound();
		}
		else if (data.arrowType == ShapeType.TurnLeftAround)
		{
			CreateLeftRound();
		}
		else
		{
			CreateStraight();
		}
		return this;
	}

	public override float GetDistance(Vector3 point)
	{
		return GetDistance(point, point1, point2);
	}

	private void CreateStraight()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(point2);
		list.Add(GetMovePoint(15f, 0f));
		list.Add(GetMovePoint(-7.5f, -120f));
		list.Add(GetMovePoint(-30f, 0f));
		list.Add(GetMovePoint(-15f, 0f));
		list.Add(GetMovePoint(-15f, 180f));
		list.Add(GetMovePoint(0f, 180f));
		CreateArrowMesh(list);
	}

	private void CreateTurnLeft()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(point2);
		list.Add(GetMovePoint(-55f, -55f));
		list.Add(GetMovePoint(-55f, -105f));
		list.Add(GetMovePoint(-75f, -25f));
		list.Add(GetMovePoint(-55f, 50f));
		list.Add(GetMovePoint(-55f, 5f));
		list.Add(GetMovePoint(-15f, 45f));
		list.Add(GetMovePoint(-15f, 195f));
		list.Add(GetMovePoint(0f, 195f));
		CreateArrowMesh(list);
	}

	private void CreateTurnRight()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(point2);
		list.Add(GetMovePoint(55f, -55f));
		list.Add(GetMovePoint(55f, -105f));
		list.Add(GetMovePoint(75f, -25f));
		list.Add(GetMovePoint(55f, 50f));
		list.Add(GetMovePoint(55f, 5f));
		list.Add(GetMovePoint(15f, 45f));
		list.Add(GetMovePoint(15f, 195f));
		list.Add(GetMovePoint(0f, 195f));
		CreateArrowMesh(list);
	}

	private void CreateLeftRight()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(point2);
		list.Add(GetMovePoint(40f, -40f));
		list.Add(GetMovePoint(40f, 5f));
		list.Add(GetMovePoint(60f, -70f));
		list.Add(GetMovePoint(40f, -150f));
		list.Add(GetMovePoint(40f, -100f));
		list.Add(GetMovePoint(-7.5f, -60f));
		list.Add(GetMovePoint(-55f, -100f));
		list.Add(GetMovePoint(-55f, -150f));
		list.Add(GetMovePoint(-75f, -70f));
		list.Add(GetMovePoint(-55f, 5f));
		list.Add(GetMovePoint(-55f, 5f));
		list.Add(GetMovePoint(-55f, -40f));
		list.Add(GetMovePoint(-15f, 0f));
		list.Add(GetMovePoint(-15f, 150f));
		list.Add(GetMovePoint(0f, 150f));
		CreateArrowMesh(list);
	}

	private void CreateStraightTurnLeft()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(point2);
		list.Add(GetMovePoint(15f, 0f));
		list.Add(GetMovePoint(-7.5f, -120f));
		list.Add(GetMovePoint(-30f, 0f));
		list.Add(GetMovePoint(-15f, 0f));
		list.Add(GetMovePoint(-15f, 100f));
		list.Add(GetMovePoint(-55f, 55f));
		list.Add(GetMovePoint(-55f, 5f));
		list.Add(GetMovePoint(-75f, 85f));
		list.Add(GetMovePoint(-55f, 160f));
		list.Add(GetMovePoint(-55f, 115f));
		list.Add(GetMovePoint(-15f, 160f));
		list.Add(GetMovePoint(-15f, 180f));
		list.Add(GetMovePoint(0f, 180f));
		CreateArrowMesh(list);
	}

	private void CreateStraightTurnRight()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(point2);
		list.Add(GetMovePoint(-15f, 0f));
		list.Add(GetMovePoint(7.5f, -120f));
		list.Add(GetMovePoint(30f, 0f));
		list.Add(GetMovePoint(15f, 0f));
		list.Add(GetMovePoint(15f, 100f));
		list.Add(GetMovePoint(55f, 55f));
		list.Add(GetMovePoint(55f, 5f));
		list.Add(GetMovePoint(75f, 85f));
		list.Add(GetMovePoint(55f, 160f));
		list.Add(GetMovePoint(55f, 115f));
		list.Add(GetMovePoint(15f, 160f));
		list.Add(GetMovePoint(15f, 180f));
		list.Add(GetMovePoint(0f, 180f));
		CreateArrowMesh(list);
	}

	private void CreateLeftRound()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(point2);
		list.Add(GetMovePoint(-55f, -55f));
		list.Add(GetMovePoint(-55f, -105f));
		list.Add(GetMovePoint(-75f, -25f));
		list.Add(GetMovePoint(-55f, 50f));
		list.Add(GetMovePoint(-55f, 5f));
		list.Add(GetMovePoint(-15f, 45f));
		List<Vector3> circlePoints = GetCirclePoints(-30f, new Vector3(0f, 0f, -75f), 0.27f);
		foreach (Vector3 item in circlePoints)
		{
			list.Add(GetMovePoint(item.x, 0f - item.z));
		}
		list.Add(GetMovePoint(-60f, 95f));
		list.Add(GetMovePoint(-75f, 95f));
		list.Add(GetMovePoint(-52.5f, 195f));
		list.Add(GetMovePoint(-30f, 95f));
		list.Add(GetMovePoint(-45f, 95f));
		List<Vector3> circlePoints2 = GetCirclePoints(15f, new Vector3(-45f, 0f, -75f));
		foreach (Vector3 item2 in circlePoints2)
		{
			list.Add(GetMovePoint(item2.x, 0f - item2.z));
		}
		list.Add(GetMovePoint(-15f, 195f));
		list.Add(GetMovePoint(0f, 195f));
		CreateArrowMesh(list);
	}

	private void CreateStraightRound()
	{
		List<Vector3> list = new List<Vector3>();
		list.Add(point2);
		list.Add(GetMovePoint(15f, 0f));
		list.Add(GetMovePoint(-7.5f, -120f));
		list.Add(GetMovePoint(-30f, 0f));
		list.Add(GetMovePoint(-15f, 0f));
		List<Vector3> circlePoints = GetCirclePoints(-30f, new Vector3(0f, 0f, -63f), 0.27f);
		foreach (Vector3 item in circlePoints)
		{
			list.Add(GetMovePoint(item.x, 0f - item.z));
		}
		list.Add(GetMovePoint(-60f, 63f));
		list.Add(GetMovePoint(-60f, 83f));
		list.Add(GetMovePoint(-75f, 83f));
		list.Add(GetMovePoint(-52.5f, 180f));
		list.Add(GetMovePoint(-30f, 83f));
		list.Add(GetMovePoint(-45f, 83f));
		List<Vector3> circlePoints2 = GetCirclePoints(15f, new Vector3(-45f, 0f, -63f));
		foreach (Vector3 item2 in circlePoints2)
		{
			list.Add(GetMovePoint(item2.x, 0f - item2.z));
		}
		list.Add(GetMovePoint(-15f, 180f));
		list.Add(GetMovePoint(0f, 180f));
		CreateArrowMesh(list);
	}

	private void CreateRound()
	{
		List<Vector3> list = new List<Vector3>();
		List<Vector3> circlePoints = GetCirclePoints(-45f, new Vector3(0f, 0f, 0f));
		foreach (Vector3 item in circlePoints)
		{
			list.Add(GetMovePoint(item.x, 0f - item.z));
		}
		list.Add(GetMovePoint(-90f, 55f));
		list.Add(GetMovePoint(-110f, 55f));
		list.Add(GetMovePoint(-80f, 175f));
		list.Add(GetMovePoint(-50f, 55f));
		list.Add(GetMovePoint(-70f, 55f));
		List<Vector3> circlePoints2 = GetCirclePoints(25f, new Vector3(-70f, 0f, -25f));
		foreach (Vector3 item2 in circlePoints2)
		{
			list.Add(GetMovePoint(item2.x, 0f - item2.z));
		}
		list.Add(GetMovePoint(-20f, 255f));
		list.Add(GetMovePoint(0f, 255f));
		CreateArrowMesh(list);
	}

	private Vector3 GetMovePoint(float right, float foward)
	{
		return point2 + parent.right * right / 100f - parent.forward * foward / 100f;
	}

	private List<Vector3> GetCirclePoints(float r, Vector3 start, float move = 0f)
	{
		List<Vector3> list = new List<Vector3>();
		float num = 50f;
		int num2 = (int)(move * 50f);
		for (int i = num2; (float)i < num; i++)
		{
			float num3 = (float)i * r * 2f / num;
			float z = Mathf.Sqrt(r * r - (0f - num3 + r) * (0f - num3 + r));
			list.Add(new Vector3(num3, 0f, z) + start);
		}
		return list;
	}

	private void CreateArrowMesh(List<Vector3> list)
	{
		DTxBaseData dTxBaseData = new DTxBaseData();
		dTxBaseData.type = 205;
		dTxBaseData.points = list;
		BaseMesh baseMesh = MakerFactory.Instance.Create(dTxBaseData);
		baseMesh.transform.SetParent(parent);
		baseMesh.gameObject.name = "arrowMesh";
		baseMesh.transform.position = dTxBaseData.points[0] - GetHeight() * Vector3.up;
		baseMesh.transform.forward = point2 - point1;
		baseMesh.SetMaterial(mainMaterial);
		AddCollider(baseMesh.gameObject);
	}

	public override Vector3 CenterPoint()
	{
		return (point1 + point2) / 2f;
	}
}
