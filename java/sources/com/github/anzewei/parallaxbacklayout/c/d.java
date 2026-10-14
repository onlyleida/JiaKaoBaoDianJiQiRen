package com.github.anzewei.parallaxbacklayout.c;

import android.graphics.Canvas;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class d implements b {
    @Override // com.github.anzewei.parallaxbacklayout.c.b
    public void a(Canvas canvas, com.github.anzewei.parallaxbacklayout.d.a aVar, View view) {
        int edgeFlag = aVar.getEdgeFlag();
        int width = aVar.getWidth();
        int height = aVar.getHeight();
        int systemLeft = aVar.getSystemLeft();
        int systemTop = aVar.getSystemTop();
        if (edgeFlag == 1) {
            canvas.translate((view.getLeft() - view.getWidth()) - systemLeft, BitmapDescriptorFactory.HUE_RED);
            return;
        }
        if (edgeFlag == 4) {
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (view.getTop() - view.getHeight()) + systemTop);
            return;
        }
        if (edgeFlag == 2) {
            canvas.translate(view.getRight() - systemLeft, BitmapDescriptorFactory.HUE_RED);
            canvas.clipRect(systemLeft, 0, width, height);
        } else if (edgeFlag == 8) {
            canvas.translate(BitmapDescriptorFactory.HUE_RED, view.getBottom() - systemTop);
            canvas.clipRect(0, systemTop, view.getRight(), height);
        }
    }
}
