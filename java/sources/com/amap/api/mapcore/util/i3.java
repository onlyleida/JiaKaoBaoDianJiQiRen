package com.amap.api.mapcore.util;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes5.dex */
public class i3 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f10898d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f10899e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f10900f = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f10901a = false;
    private int b = 0;
    private int c = 20;

    public static void a(boolean z) {
        f10898d = z;
    }

    public static boolean b() {
        return f10898d;
    }

    public static void d(boolean z) {
        f10899e = z;
    }

    public static boolean e() {
        return f10899e;
    }

    public static void f(boolean z) {
        f10900f = z;
    }

    public static boolean g() {
        return f10900f;
    }

    public boolean c(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int i = -1;
                for (int i2 = (int) (width / 4.0f); i2 < (width * 3) / 4.0f; i2++) {
                    for (int i3 = (int) (height / 4.0f); i3 < (height * 3) / 4.0f; i3++) {
                        int pixel = bitmap.getPixel(i2, i3);
                        if (i == -1) {
                            i = pixel;
                        }
                        if (pixel != i) {
                            this.f10901a = true;
                            return false;
                        }
                        if (pixel != -16777216) {
                            this.f10901a = true;
                            return false;
                        }
                    }
                }
            } catch (Throwable th) {
                try {
                    e6.r(th, "AMapdelegate", "checkBlackScreen");
                } finally {
                    this.f10901a = true;
                }
            }
        }
        return true;
    }

    public boolean h() {
        return this.f10901a;
    }

    public void i() {
        this.b++;
    }

    public boolean j() {
        return this.b >= this.c;
    }

    public void k() {
        e6.r(new Exception("BlackScreen"), "PureScreenCheckTool", "uploadInfo");
    }
}
