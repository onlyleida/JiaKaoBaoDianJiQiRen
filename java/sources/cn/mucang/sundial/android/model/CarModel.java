package cn.mucang.sundial.android.model;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class CarModel {
    public float gpsSpeed;
    public int rpm;
    public float speed;
    public int wheelDegree;
    public KeyState keyState = KeyState.None;
    public float totalDistance = BitmapDescriptorFactory.HUE_RED;
    public float currentDistance = BitmapDescriptorFactory.HUE_RED;

    public void copy(CarModel carModel) {
        this.rpm = carModel.rpm;
        this.speed = carModel.speed;
        this.keyState = carModel.keyState;
        this.totalDistance = carModel.totalDistance;
        this.currentDistance = carModel.currentDistance;
        this.gpsSpeed = carModel.gpsSpeed;
        this.wheelDegree = carModel.wheelDegree;
    }
}
