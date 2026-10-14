package com.github.anzewei.parallaxbacklayout.c;

import android.graphics.Canvas;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class a implements b {
    @Override // com.github.anzewei.parallaxbacklayout.c.b
    public void a(Canvas canvas, com.github.anzewei.parallaxbacklayout.d.a aVar, View view) {
        int edgeFlag = aVar.getEdgeFlag();
        if (edgeFlag == 1) {
            canvas.clipRect(0, 0, view.getLeft(), view.getBottom());
            return;
        }
        if (edgeFlag == 4) {
            canvas.clipRect(0, 0, view.getRight(), view.getTop() + aVar.getSystemTop());
        } else if (edgeFlag == 2) {
            canvas.clipRect(view.getRight(), 0, aVar.getWidth(), view.getBottom());
        } else if (edgeFlag == 8) {
            canvas.clipRect(0, view.getBottom(), view.getRight(), aVar.getHeight());
        }
    }
}
