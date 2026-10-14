package com.loc;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public final class ep implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SensorManager f12826a;
    Sensor b;
    Sensor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Sensor f12827d;
    private Context s;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f12828e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public double f12829f = 0.0d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f12830g = BitmapDescriptorFactory.HUE_RED;
    private float t = 1013.25f;
    private float u = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Handler f12831h = new Handler();
    double i = 0.0d;
    double j = 0.0d;
    double k = 0.0d;
    double l = 0.0d;
    double[] m = new double[3];
    volatile double n = 0.0d;
    long o = 0;
    long p = 0;
    final int q = 100;
    final int r = 30;

    public ep(Context context) {
        this.s = null;
        this.f12826a = null;
        this.b = null;
        this.c = null;
        this.f12827d = null;
        try {
            this.s = context;
            if (this.f12826a == null) {
                this.f12826a = (SensorManager) context.getSystemService("sensor");
            }
            try {
                this.b = this.f12826a.getDefaultSensor(6);
            } catch (Throwable unused) {
            }
            try {
                this.c = this.f12826a.getDefaultSensor(11);
            } catch (Throwable unused2) {
            }
            try {
                this.f12827d = this.f12826a.getDefaultSensor(1);
            } catch (Throwable unused3) {
            }
        } catch (Throwable th) {
            fi.a(th, "AMapSensorManager", "<init>");
        }
    }

    private void a(float[] fArr) {
        double[] dArr = this.m;
        dArr[0] = (dArr[0] * 0.800000011920929d) + ((double) (fArr[0] * 0.19999999f));
        dArr[1] = (dArr[1] * 0.800000011920929d) + ((double) (fArr[1] * 0.19999999f));
        dArr[2] = (dArr[2] * 0.800000011920929d) + ((double) (fArr[2] * 0.19999999f));
        this.i = ((double) fArr[0]) - dArr[0];
        this.j = ((double) fArr[1]) - dArr[1];
        this.k = ((double) fArr[2]) - dArr[2];
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.o < 100) {
            return;
        }
        double d2 = this.i;
        double d3 = this.j;
        double d4 = (d2 * d2) + (d3 * d3);
        double d5 = this.k;
        double dSqrt = Math.sqrt(d4 + (d5 * d5));
        this.p++;
        this.o = jCurrentTimeMillis;
        this.n += dSqrt;
        if (this.p >= 30) {
            this.l = this.n / this.p;
            this.n = 0.0d;
            this.p = 0L;
        }
    }

    private void b(float[] fArr) {
        if (fArr != null) {
            this.f12829f = fp.a(SensorManager.getAltitude(this.t, fArr[0]));
        }
    }

    private void c(float[] fArr) {
        if (fArr != null) {
            float[] fArr2 = new float[9];
            SensorManager.getRotationMatrixFromVector(fArr2, fArr);
            float[] fArr3 = new float[3];
            SensorManager.getOrientation(fArr2, fArr3);
            float degrees = (float) Math.toDegrees(fArr3[0]);
            this.u = degrees;
            if (degrees <= BitmapDescriptorFactory.HUE_RED) {
                degrees += 360.0f;
            }
            this.u = (float) Math.floor(degrees);
        }
    }

    public final void a() {
        SensorManager sensorManager = this.f12826a;
        if (sensorManager == null || this.f12828e) {
            return;
        }
        this.f12828e = true;
        try {
            Sensor sensor = this.b;
            if (sensor != null) {
                sensorManager.registerListener(this, sensor, 3, this.f12831h);
            }
        } catch (Throwable th) {
            fi.a(th, "AMapSensorManager", "registerListener mPressure");
        }
        try {
            Sensor sensor2 = this.c;
            if (sensor2 != null) {
                this.f12826a.registerListener(this, sensor2, 3, this.f12831h);
            }
        } catch (Throwable th2) {
            fi.a(th2, "AMapSensorManager", "registerListener mRotationVector");
        }
        try {
            Sensor sensor3 = this.f12827d;
            if (sensor3 != null) {
                this.f12826a.registerListener(this, sensor3, 3, this.f12831h);
            }
        } catch (Throwable th3) {
            fi.a(th3, "AMapSensorManager", "registerListener mAcceleroMeterVector");
        }
    }

    public final void b() {
        SensorManager sensorManager = this.f12826a;
        if (sensorManager == null || !this.f12828e) {
            return;
        }
        this.f12828e = false;
        try {
            Sensor sensor = this.b;
            if (sensor != null) {
                sensorManager.unregisterListener(this, sensor);
            }
        } catch (Throwable unused) {
        }
        try {
            Sensor sensor2 = this.c;
            if (sensor2 != null) {
                this.f12826a.unregisterListener(this, sensor2);
            }
        } catch (Throwable unused2) {
        }
        try {
            Sensor sensor3 = this.f12827d;
            if (sensor3 != null) {
                this.f12826a.unregisterListener(this, sensor3);
            }
        } catch (Throwable unused3) {
        }
    }

    public final double c() {
        return this.f12829f;
    }

    public final float d() {
        return this.u;
    }

    public final double e() {
        return this.l;
    }

    public final void f() {
        try {
            b();
            this.b = null;
            this.c = null;
            this.f12826a = null;
            this.f12827d = null;
            this.f12828e = false;
        } catch (Throwable th) {
            fi.a(th, "AMapSensorManager", "destroy");
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent == null) {
            return;
        }
        try {
            int type = sensorEvent.sensor.getType();
            if (type == 1) {
                if (this.f12827d != null) {
                    a((float[]) sensorEvent.values.clone());
                    return;
                }
                return;
            }
            if (type != 6) {
                if (type != 11) {
                    return;
                }
                try {
                    if (this.c != null) {
                        c((float[]) sensorEvent.values.clone());
                        return;
                    }
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
            try {
                if (this.b != null) {
                    float[] fArr = (float[]) sensorEvent.values.clone();
                    if (fArr != null) {
                        this.f12830g = fArr[0];
                    }
                    b(fArr);
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
        }
    }
}
