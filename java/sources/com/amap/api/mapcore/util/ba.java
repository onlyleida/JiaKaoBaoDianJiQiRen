package com.amap.api.mapcore.util;

import android.opengl.GLES20;
import android.opengl.Matrix;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.glutils.ShaderConst;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<Float> f10521a;
    List<Float> b;
    private FloatBuffer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FloatBuffer f10522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10523e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f10524f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f10525g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f10526h;

    public ba(List<Float> list, List<Float> list2) {
        this.f10521a = new ArrayList();
        new ArrayList();
        this.f10523e = 0;
        float fMax = BitmapDescriptorFactory.HUE_RED;
        this.f10525g = BitmapDescriptorFactory.HUE_RED;
        this.f10526h = BitmapDescriptorFactory.HUE_RED;
        this.f10521a = list;
        this.b = list2;
        if (this.c == null) {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(list.size() * 4);
            byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
            this.c = byteBufferAllocateDirect.asFloatBuffer();
        }
        this.c.clear();
        float fMax2 = BitmapDescriptorFactory.HUE_RED;
        float fMax3 = BitmapDescriptorFactory.HUE_RED;
        float fMin = 1000000.0f;
        float fMin2 = 1000000.0f;
        int i = 1;
        for (int i2 = 1; i2 < list.size() + 1; i2++) {
            Float f2 = list.get(i2 - 1);
            this.c.put(f2.floatValue());
            if (i == 1) {
                fMax = Math.max(f2.floatValue(), fMax);
                fMin = Math.min(f2.floatValue(), fMin);
            }
            if (i == 2) {
                fMax2 = Math.max(f2.floatValue(), fMax2);
                fMin2 = Math.min(f2.floatValue(), fMin2);
            }
            if (i == 3) {
                fMax3 = Math.max(fMax3, f2.floatValue());
                i = 0;
            }
            i++;
        }
        float fAbs = Math.abs(fMax - fMin);
        float fAbs2 = Math.abs(fMax2 - fMin2);
        this.f10525g = fAbs > fAbs2 ? fAbs : fAbs2;
        this.f10526h = fAbs > fAbs2 ? fAbs2 : fAbs;
        this.c.position(0);
        if (this.f10522d == null) {
            ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(list2.size() * 4);
            byteBufferAllocateDirect2.order(ByteOrder.nativeOrder());
            this.f10522d = byteBufferAllocateDirect2.asFloatBuffer();
        }
        this.f10522d.clear();
        Iterator<Float> it = list2.iterator();
        while (it.hasNext()) {
            this.f10522d.put(it.next().floatValue());
        }
        this.f10522d.position(0);
    }

    public float a() {
        return this.f10525g;
    }

    public void b(float f2) {
        this.f10524f = -f2;
    }

    public void c(int i) {
        this.f10523e = i;
    }

    public void d(h2.b bVar, float[] fArr) {
        Matrix.rotateM(fArr, 0, this.f10524f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        GLES20.glUseProgram(bVar.f10808a);
        GLES20.glClear(256);
        GLES20.glEnable(2929);
        GLES20.glDepthMask(true);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        GLES20.glBlendColor(1.0f, 1.0f, 1.0f, 1.0f);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, this.f10523e);
        GLES20.glEnableVertexAttribArray(bVar.i);
        GLES20.glVertexAttribPointer(bVar.i, 2, 5126, false, 8, (Buffer) this.f10522d);
        GLES20.glEnableVertexAttribArray(bVar.f10849g);
        GLES20.glVertexAttribPointer(bVar.f10849g, 3, 5126, false, 12, (Buffer) this.c);
        GLES20.glUniformMatrix4fv(bVar.f10850h, 1, false, fArr, 0);
        GLES20.glDrawArrays(4, 0, this.f10521a.size() / 3);
        GLES20.glBindTexture(ShaderConst.GL_TEXTURE_2D, 0);
        GLES20.glDisable(2929);
        GLES20.glDisableVertexAttribArray(bVar.f10849g);
        GLES20.glDisableVertexAttribArray(bVar.i);
        GLES20.glUseProgram(0);
    }

    public float e() {
        return this.f10526h;
    }

    public void f() {
        this.f10521a.clear();
        this.f10522d.clear();
    }
}
