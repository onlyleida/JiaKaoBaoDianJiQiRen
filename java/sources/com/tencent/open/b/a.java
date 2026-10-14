package com.tencent.open.b;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes6.dex */
public class a extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f14101a = a.class.getName();
    private Rect b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InterfaceC0280a f14102d;

    /* JADX INFO: renamed from: com.tencent.open.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0280a {
        void a();

        void a(int i);
    }

    public a(Context context) {
        super(context);
        this.b = null;
        this.c = false;
        this.f14102d = null;
        this.b = new Rect();
    }

    public void a(InterfaceC0280a interfaceC0280a) {
        this.f14102d = interfaceC0280a;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i2);
        Activity activity = (Activity) getContext();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(this.b);
        int height = (activity.getWindowManager().getDefaultDisplay().getHeight() - this.b.top) - size;
        InterfaceC0280a interfaceC0280a = this.f14102d;
        if (interfaceC0280a != null && size != 0) {
            if (height > 100) {
                interfaceC0280a.a((Math.abs(this.b.height()) - getPaddingBottom()) - getPaddingTop());
            } else {
                interfaceC0280a.a();
            }
        }
        super.onMeasure(i, i2);
    }
}
