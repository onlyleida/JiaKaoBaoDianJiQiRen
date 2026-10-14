package com.amap.api.trace;

/* JADX INFO: loaded from: classes5.dex */
public class TraceLocation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private double f11584a;
    private double b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f11585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f11586e;

    public TraceLocation(double d2, double d3, float f2, float f3, long j) {
        this.f11584a = a(d2);
        this.b = a(d3);
        this.c = (int) ((f2 * 3600.0f) / 1000.0f);
        this.f11585d = (int) f3;
        this.f11586e = j;
    }

    private static double a(double d2) {
        return Math.round(d2 * 1000000.0d) / 1000000.0d;
    }

    public TraceLocation copy() {
        TraceLocation traceLocation = new TraceLocation();
        traceLocation.f11585d = this.f11585d;
        traceLocation.f11584a = this.f11584a;
        traceLocation.b = this.b;
        traceLocation.c = this.c;
        traceLocation.f11586e = this.f11586e;
        return traceLocation;
    }

    public float getBearing() {
        return this.f11585d;
    }

    public double getLatitude() {
        return this.f11584a;
    }

    public double getLongitude() {
        return this.b;
    }

    public float getSpeed() {
        return this.c;
    }

    public long getTime() {
        return this.f11586e;
    }

    public void setBearing(float f2) {
        this.f11585d = (int) f2;
    }

    public void setLatitude(double d2) {
        this.f11584a = a(d2);
    }

    public void setLongitude(double d2) {
        this.b = a(d2);
    }

    public void setSpeed(float f2) {
        this.c = (int) ((f2 * 3600.0f) / 1000.0f);
    }

    public void setTime(long j) {
        this.f11586e = j;
    }

    public String toString() {
        return this.f11584a + ",longtitude " + this.b + ",speed " + this.c + ",bearing " + this.f11585d + ",time " + this.f11586e;
    }

    public TraceLocation() {
    }
}
