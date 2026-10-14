package com.amap.api.mapcore.util;

import android.content.Context;
import android.opengl.GLES20;
import com.amap.api.maps.model.GL3DModel;
import com.amap.api.maps.model.GL3DModelOptions;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class z9 {
    private IAMapDelegate b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f11466a = 0;
    private List<t1> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<Integer> f11467d = new ArrayList();

    public z9(Context context, IAMapDelegate iAMapDelegate) {
        this.b = iAMapDelegate;
    }

    public GL3DModel a(GL3DModelOptions gL3DModelOptions) {
        GL3DModel gL3DModel;
        if (gL3DModelOptions == null) {
            return null;
        }
        t1 t1Var = new t1(this, gL3DModelOptions, this.b);
        StringBuilder sb = new StringBuilder();
        sb.append("model_");
        long j = this.f11466a;
        this.f11466a = 1 + j;
        sb.append(j);
        t1Var.d(sb.toString());
        synchronized (this.c) {
            this.c.add(t1Var);
            gL3DModel = new GL3DModel(t1Var);
        }
        return gL3DModel;
    }

    public void b() {
        for (t1 t1Var : this.c) {
            if (t1Var.isVisible()) {
                t1Var.b();
            }
        }
    }

    public void c(int i) {
        this.f11467d.add(Integer.valueOf(i));
    }

    public void d(String str) {
        try {
            List<t1> list = this.c;
            if (list == null || list.size() <= 0) {
                return;
            }
            t1 t1Var = null;
            for (int i = 0; i < this.c.size(); i++) {
                t1Var = this.c.get(i);
                if (str.equals(t1Var.getId())) {
                    break;
                }
            }
            if (t1Var != null) {
                this.c.remove(t1Var);
                t1Var.destroy();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean e(t1 t1Var) {
        return this.c.contains(t1Var);
    }

    public void f() {
        List<t1> list = this.c;
        if (list != null) {
            list.clear();
        }
    }

    public void g() {
        List<t1> list = this.c;
        if (list != null) {
            Iterator<t1> it = list.iterator();
            while (it.hasNext()) {
                it.next().destroy();
            }
            this.c.clear();
        }
    }

    public void h() {
        List<Integer> list = this.f11467d;
        if (list != null) {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                GLES20.glDeleteTextures(1, new int[]{it.next().intValue()}, 0);
            }
        }
    }
}
