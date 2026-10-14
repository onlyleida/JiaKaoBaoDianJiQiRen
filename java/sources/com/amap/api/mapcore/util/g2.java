package com.amap.api.mapcore.util;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes5.dex */
public class g2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f10808a;
    public int b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10809d;

    public int a(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        return iGlCreateShader;
    }

    public void b() {
        GLES20.glUseProgram(this.f10808a);
    }

    protected boolean c(String str) {
        int iJ = j(str);
        this.f10808a = iJ;
        return iJ != 0;
    }

    protected boolean d(String str, String str2) {
        int iF = f(str, str2);
        this.f10808a = iF;
        return iF != 0;
    }

    protected int e(String str) {
        return GLES20.glGetAttribLocation(this.f10808a, str);
    }

    public int f(String str, String str2) {
        this.b = a(35633, str);
        this.c = a(35632, str2);
        int iGlCreateProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(iGlCreateProgram, this.b);
        GLES20.glAttachShader(iGlCreateProgram, this.c);
        GLES20.glLinkProgram(iGlCreateProgram);
        return iGlCreateProgram;
    }

    public void g() {
        int i = this.f10808a;
        if (i >= 0) {
            GLES20.glDeleteProgram(i);
        }
        int i2 = this.b;
        if (i2 >= 0) {
            GLES20.glDeleteShader(i2);
        }
        int i3 = this.c;
        if (i3 >= 0) {
            GLES20.glDeleteShader(i3);
        }
        this.f10809d = true;
    }

    protected int h(String str) {
        return GLES20.glGetUniformLocation(this.f10808a, str);
    }

    public boolean i() {
        return this.f10809d;
    }

    public int j(String str) {
        String str2 = "amap_sdk_shaders/" + str;
        String strA = s2.a(str2);
        if (strA == null) {
            throw new IllegalArgumentException("shader file not found: " + str2);
        }
        int iIndexOf = strA.indexOf(36);
        if (iIndexOf >= 0 && strA.charAt(iIndexOf + 1) == '$') {
            return f(strA.substring(0, iIndexOf), strA.substring(iIndexOf + 2));
        }
        throw new IllegalArgumentException("not a shader file " + str2);
    }
}
