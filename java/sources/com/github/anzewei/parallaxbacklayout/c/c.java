package com.github.anzewei.parallaxbacklayout.c;

import android.graphics.Canvas;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes5.dex */
public class c implements b {
    @Override // com.github.anzewei.parallaxbacklayout.c.b
    public void a(Canvas canvas, com.github.anzewei.parallaxbacklayout.d.a aVar, View view) {
        int edgeFlag = aVar.getEdgeFlag();
        int width = aVar.getWidth();
        int height = aVar.getHeight();
        int systemLeft = aVar.getSystemLeft();
        int systemTop = aVar.getSystemTop();
        if (edgeFlag == 1) {
            int left = (view.getLeft() - width) / 2;
            canvas.translate(left, BitmapDescriptorFactory.HUE_RED);
            canvas.clipRect(0, 0, left + width, view.getBottom());
            return;
        }
        if (edgeFlag == 4) {
            int top = (view.getTop() - view.getHeight()) / 2;
            canvas.translate(BitmapDescriptorFactory.HUE_RED, top);
            canvas.clipRect(0, 0, view.getRight(), view.getHeight() + top + systemTop);
        } else if (edgeFlag == 2) {
            int left2 = ((view.getLeft() + view.getWidth()) - systemLeft) / 2;
            canvas.translate(left2, BitmapDescriptorFactory.HUE_RED);
            canvas.clipRect(left2 + systemLeft, 0, width, view.getBottom());
        } else if (edgeFlag == 8) {
            int bottom = (view.getBottom() - systemTop) / 2;
            canvas.translate(BitmapDescriptorFactory.HUE_RED, bottom);
            canvas.clipRect(0, bottom + systemTop, view.getRight(), height);
        }
    }
}
