package com.amap.api.mapcore.util;

import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ha {
    private BitmapDescriptor b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f10887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f10888e = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f10889f = BitmapDescriptorFactory.HUE_RED;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f10890g = 1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f10891h = 1.0f;
    private boolean i = false;
    private float j = BitmapDescriptorFactory.HUE_RED;
    private float k = BitmapDescriptorFactory.HUE_RED;
    private float l = BitmapDescriptorFactory.HUE_RED;
    private float m = BitmapDescriptorFactory.HUE_RED;
    private int n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f10886a = j3.a();

    public ha(BitmapDescriptor bitmapDescriptor, int i) {
        this.f10887d = 1.0f;
        this.b = bitmapDescriptor;
        this.c = i;
        BitmapDescriptor bitmapDescriptor2 = this.b;
        if (bitmapDescriptor2 != null) {
            this.f10887d = (float) ((((double) bitmapDescriptor2.getWidth()) * 1.0d) / ((double) this.b.getHeight()));
        }
    }

    public void a(float f2) {
        this.l = f2;
    }

    public void b(int i) {
        this.c = i;
    }

    public void c(boolean z) {
        this.i = z;
    }

    public boolean d() {
        return this.i;
    }

    public float e() {
        return this.l;
    }

    public void f(float f2) {
        this.m = f2;
    }

    public float g() {
        return this.m;
    }

    public void h(float f2) {
        this.j = f2;
    }

    public float i() {
        return this.j;
    }

    public void j(float f2) {
        this.k = f2;
    }

    public float k() {
        return this.k;
    }

    public void l(float f2) {
        this.f10889f = f2;
    }

    public float m() {
        return this.f10889f;
    }

    public void n(float f2) {
        this.f10888e = f2;
    }

    public float o() {
        return this.f10888e;
    }

    public void p(float f2) {
        this.f10890g = f2;
    }

    public float q() {
        return this.f10890g;
    }

    public void r(float f2) {
        this.f10891h = f2;
    }

    public float s() {
        return this.f10891h;
    }

    public BitmapDescriptor t() {
        return this.b;
    }

    public int u() {
        return this.c;
    }

    public float v() {
        return this.f10887d;
    }

    public void w() {
        this.n++;
    }

    public void x() {
        this.n--;
    }

    public int y() {
        return this.n;
    }

    public String z() {
        return this.f10886a;
    }
}
