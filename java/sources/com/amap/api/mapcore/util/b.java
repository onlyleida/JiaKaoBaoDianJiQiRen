package com.amap.api.mapcore.util;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.WindowManager;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.Marker;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;

/* JADX INFO: loaded from: classes5.dex */
public class b implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SensorManager f10475a;
    private Sensor b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f10476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f10477e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private IAMapDelegate f10478f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Marker f10479g;
    private long c = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f10480h = true;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SensorEvent f10481a;

        a(SensorEvent sensorEvent) {
            this.f10481a = sensorEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f10481a.sensor.getType() != 3) {
                return;
            }
            float fB = (this.f10481a.values[0] + b.b(b.this.f10477e)) % 360.0f;
            if (fB > 180.0f) {
                fB -= 360.0f;
            } else if (fB < -180.0f) {
                fB += 360.0f;
            }
            if (Math.abs(b.this.f10476d - fB) < 3.0f) {
                return;
            }
            b bVar = b.this;
            if (Float.isNaN(fB)) {
                fB = BitmapDescriptorFactory.HUE_RED;
            }
            bVar.f10476d = fB;
            if (b.this.f10479g != null) {
                try {
                    if (b.this.f10480h) {
                        b.this.f10478f.moveCamera(h.q(b.this.f10476d));
                        b.this.f10479g.setRotateAngle(-b.this.f10476d);
                    } else {
                        b.this.f10479g.setRotateAngle(360.0f - b.this.f10476d);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            b.this.c = System.currentTimeMillis();
        }
    }

    public b(Context context, IAMapDelegate iAMapDelegate) {
        this.f10477e = context.getApplicationContext();
        this.f10478f = iAMapDelegate;
        try {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            this.f10475a = sensorManager;
            if (sensorManager != null) {
                this.b = sensorManager.getDefaultSensor(3);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static int b(Context context) {
        WindowManager windowManager;
        if (context == null || (windowManager = (WindowManager) context.getSystemService("window")) == null) {
            return 0;
        }
        try {
            int rotation = windowManager.getDefaultDisplay().getRotation();
            if (rotation == 1) {
                return 90;
            }
            if (rotation != 2) {
                return rotation != 3 ? 0 : -90;
            }
            return 180;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public void e() {
        Sensor sensor;
        SensorManager sensorManager = this.f10475a;
        if (sensorManager == null || (sensor = this.b) == null) {
            return;
        }
        sensorManager.registerListener(this, sensor, 3);
    }

    public void f(Marker marker) {
        this.f10479g = marker;
    }

    public void g(boolean z) {
        this.f10480h = z;
    }

    public void i() {
        Sensor sensor;
        SensorManager sensorManager = this.f10475a;
        if (sensorManager == null || (sensor = this.b) == null) {
            return;
        }
        sensorManager.unregisterListener(this, sensor);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        try {
            if (System.currentTimeMillis() - this.c < 100) {
                return;
            }
            if (this.f10478f.getGLMapEngine() == null || this.f10478f.getGLMapEngine().getAnimateionsCount() <= 0) {
                q3.a().b(new a(sensorEvent));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
