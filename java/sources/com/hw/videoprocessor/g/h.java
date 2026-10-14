package com.hw.videoprocessor.g;

import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f12107a;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f12108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Float f12110f;

    public h(i iVar) {
        this.f12107a = iVar;
    }

    public void a(float f2) {
        this.c = f2;
        i iVar = this.f12107a;
        if (iVar != null) {
            iVar.a((this.b + f2) / 2.0f);
        }
        b.f("mAudioProgress:" + this.c, new Object[0]);
    }

    public void b(long j) {
        if (this.f12107a == null) {
            return;
        }
        Float f2 = this.f12110f;
        if (f2 != null) {
            j = (long) (j * f2.floatValue());
        }
        float f3 = (j / 1000.0f) / (this.f12109e - this.f12108d);
        this.b = f3;
        if (f3 < BitmapDescriptorFactory.HUE_RED) {
            f3 = BitmapDescriptorFactory.HUE_RED;
        }
        this.b = f3;
        if (f3 > 1.0f) {
            f3 = 1.0f;
        }
        this.b = f3;
        this.f12107a.a((f3 + this.c) / 2.0f);
        b.f("mEncodeProgress:" + this.b, new Object[0]);
    }

    public void c(int i) {
        this.f12109e = i;
    }

    public void d(Float f2) {
        this.f12110f = f2;
    }

    public void e(int i) {
        this.f12108d = i;
    }
}
