package com.iflytek.cloud.util;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class Accelerometer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static CLOCKWISE_ANGLE f12438a;
    private SensorManager b;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SensorEventListener f12439d = new a();

    public enum CLOCKWISE_ANGLE {
        Deg0(0),
        Deg90(1),
        Deg180(2),
        Deg270(3);

        private int value;

        CLOCKWISE_ANGLE(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    class a implements SensorEventListener {
        a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor.getType() == 1) {
                float[] fArr = sensorEvent.values;
                float f2 = fArr[0];
                float f3 = fArr[1];
                float f4 = fArr[2];
                if (Math.abs(f2) > 3.0f || Math.abs(f3) > 3.0f) {
                    if (Math.abs(f2) > Math.abs(f3)) {
                        if (f2 > BitmapDescriptorFactory.HUE_RED) {
                            CLOCKWISE_ANGLE unused = Accelerometer.f12438a = CLOCKWISE_ANGLE.Deg0;
                            return;
                        } else {
                            CLOCKWISE_ANGLE unused2 = Accelerometer.f12438a = CLOCKWISE_ANGLE.Deg180;
                            return;
                        }
                    }
                    if (f3 > BitmapDescriptorFactory.HUE_RED) {
                        CLOCKWISE_ANGLE unused3 = Accelerometer.f12438a = CLOCKWISE_ANGLE.Deg90;
                    } else {
                        CLOCKWISE_ANGLE unused4 = Accelerometer.f12438a = CLOCKWISE_ANGLE.Deg270;
                    }
                }
            }
        }
    }

    public Accelerometer(Context context) {
        this.b = null;
        this.b = (SensorManager) context.getSystemService("sensor");
        f12438a = CLOCKWISE_ANGLE.Deg0;
    }

    public static int getDirection() {
        return f12438a.getValue();
    }

    public void start() {
        if (this.c) {
            return;
        }
        this.c = true;
        f12438a = CLOCKWISE_ANGLE.Deg0;
        SensorManager sensorManager = this.b;
        sensorManager.registerListener(this.f12439d, sensorManager.getDefaultSensor(1), 3);
    }

    public void stop() {
        if (this.c) {
            this.c = false;
            this.b.unregisterListener(this.f12439d);
        }
    }
}
