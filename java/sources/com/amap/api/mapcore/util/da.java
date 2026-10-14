package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;

/* JADX INFO: loaded from: classes5.dex */
public class da {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f10692a = -1;
    private int b = -1;
    private int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10693d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Bitmap f10694e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f10695f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f10696g = null;

    public int a() {
        return this.f10692a;
    }

    public int b(int i) {
        if (i == 0) {
            return this.b;
        }
        if (i == 1) {
            return this.c;
        }
        return -1;
    }

    public void c(Context context) {
        Bitmap bitmap = this.f10694e;
        if (bitmap == null || bitmap.isRecycled()) {
            this.f10694e = r3.o(context, "amap_sdk_lineTexture.png");
        }
        Bitmap bitmap2 = this.f10695f;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            this.f10695f = r3.o(context, "amap_sdk_lineDashTexture_square.png");
        }
        Bitmap bitmap3 = this.f10696g;
        if (bitmap3 == null || bitmap3.isRecycled()) {
            this.f10696g = r3.o(context, "amap_sdk_lineDashTexture_circle.png");
        }
        this.f10692a = r3.k(this.f10694e);
        this.b = r3.l(this.f10695f, true);
        this.c = r3.l(this.f10696g, true);
        this.f10693d = r3.h(512, 1024);
    }

    public float d() {
        return 1.0f;
    }

    public int e() {
        return this.f10693d;
    }

    public void f() {
        GLES20.glDeleteTextures(4, new int[]{this.f10692a, this.b, this.c, this.f10693d}, 0);
    }

    public void g() {
        Bitmap bitmap = this.f10695f;
        if (bitmap != null && !bitmap.isRecycled()) {
            r3.g0(this.f10695f);
            this.f10695f = null;
        }
        Bitmap bitmap2 = this.f10696g;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            r3.g0(this.f10696g);
            this.f10696g = null;
        }
        Bitmap bitmap3 = this.f10694e;
        if (bitmap3 == null || bitmap3.isRecycled()) {
            return;
        }
        r3.g0(this.f10694e);
        this.f10694e = null;
    }
}
