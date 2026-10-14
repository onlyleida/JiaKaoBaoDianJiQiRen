package com.amap.api.mapcore.util;

import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes5.dex */
public abstract class p1 {
    private IAMapDelegate map;

    public void destroy() {
    }

    public abstract int getZIndex();

    public abstract void onDrawFrame(GL10 gl10);
}
