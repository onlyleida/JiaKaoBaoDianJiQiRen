package com.amap.api.mapcore.util;

import com.autonavi.amap.mapcore.animation.GLAlphaAnimation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class fa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FloatBuffer f10803a;
    public ShortBuffer b;
    float[] c = {-1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    short[] f10804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private GLAlphaAnimation f10805e;

    public fa() {
        short[] sArr = {0, 1, 3, 0, 3, 2};
        this.f10804d = sArr;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(sArr.length * 2);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        ShortBuffer shortBufferAsShortBuffer = byteBufferAllocateDirect.asShortBuffer();
        this.b = shortBufferAsShortBuffer;
        shortBufferAsShortBuffer.put(this.f10804d);
        this.b.position(0);
        ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(this.c.length * 4);
        byteBufferAllocateDirect2.order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer = byteBufferAllocateDirect2.asFloatBuffer();
        this.f10803a = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(this.c);
        this.f10803a.position(0);
    }

    public void a(int i, int i2, int i3, int i4) {
    }

    public void b(GLAlphaAnimation gLAlphaAnimation) {
        GLAlphaAnimation gLAlphaAnimation2 = this.f10805e;
        if (gLAlphaAnimation2 != null && !gLAlphaAnimation2.hasEnded()) {
            this.f10805e.cancel();
        }
        if (gLAlphaAnimation == null) {
            return;
        }
        this.f10805e = gLAlphaAnimation;
        gLAlphaAnimation.start();
    }
}
