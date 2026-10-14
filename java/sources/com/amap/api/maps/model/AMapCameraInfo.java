package com.amap.api.maps.model;

/* JADX INFO: loaded from: classes5.dex */
public class AMapCameraInfo {
    private float aspectRatio;
    private float fov;
    private float positionX;
    private float positionY;
    private float positionZ;
    private float rotate;

    public AMapCameraInfo(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.fov = BitmapDescriptorFactory.HUE_RED;
        this.aspectRatio = 1.0f;
        this.rotate = BitmapDescriptorFactory.HUE_RED;
        this.positionX = BitmapDescriptorFactory.HUE_RED;
        this.positionY = BitmapDescriptorFactory.HUE_RED;
        this.positionZ = BitmapDescriptorFactory.HUE_RED;
        this.fov = f2;
        this.aspectRatio = f3;
        this.rotate = f4;
        this.positionX = f5;
        this.positionY = f6;
        this.positionZ = f7;
    }

    public float getAspectRatio() {
        return this.aspectRatio;
    }

    public float getFov() {
        return this.fov;
    }

    public float getRotate() {
        return this.rotate;
    }

    public float getX() {
        return this.positionX;
    }

    public float getY() {
        return this.positionY;
    }

    public float getZ() {
        return this.positionZ;
    }

    public String toString() {
        return "[fov:" + this.fov + " aspectRatio:" + this.aspectRatio + " rotate:" + this.rotate + " pos_x:" + this.positionX + " pos_y:" + this.positionY + " pos_z:" + this.positionZ + "]";
    }
}
