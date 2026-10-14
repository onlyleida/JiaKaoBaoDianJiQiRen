package org.opencv.core;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class KeyPoint {
    public float angle;
    public int class_id;
    public int octave;
    public Point pt;
    public float response;
    public float size;

    public KeyPoint(float f2, float f3, float f4, float f5, float f6, int i, int i2) {
        this.pt = new Point(f2, f3);
        this.size = f4;
        this.angle = f5;
        this.response = f6;
        this.octave = i;
        this.class_id = i2;
    }

    public String toString() {
        return "KeyPoint [pt=" + this.pt + ", size=" + this.size + ", angle=" + this.angle + ", response=" + this.response + ", octave=" + this.octave + ", class_id=" + this.class_id + "]";
    }

    public KeyPoint() {
        this(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, 0, -1);
    }

    public KeyPoint(float f2, float f3, float f4, float f5, float f6, int i) {
        this(f2, f3, f4, f5, f6, i, -1);
    }

    public KeyPoint(float f2, float f3, float f4, float f5, float f6) {
        this(f2, f3, f4, f5, f6, 0, -1);
    }

    public KeyPoint(float f2, float f3, float f4, float f5) {
        this(f2, f3, f4, f5, BitmapDescriptorFactory.HUE_RED, 0, -1);
    }

    public KeyPoint(float f2, float f3, float f4) {
        this(f2, f3, f4, -1.0f, BitmapDescriptorFactory.HUE_RED, 0, -1);
    }
}
