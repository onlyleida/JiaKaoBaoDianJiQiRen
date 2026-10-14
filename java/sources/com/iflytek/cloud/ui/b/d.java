package com.iflytek.cloud.ui.b;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class d extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c.b f12435a;
    protected boolean b;
    protected boolean c;

    public d(Context context) {
        super(context);
        this.f12435a = null;
        this.b = true;
        this.c = true;
    }

    protected static boolean a(ViewGroup viewGroup) {
        try {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                childAt.setOnClickListener(null);
                childAt.setBackgroundDrawable(null);
            }
            viewGroup.removeAllViews();
            viewGroup.setOnClickListener(null);
            viewGroup.setBackgroundDrawable(null);
            return true;
        } catch (Exception e2) {
            DebugLog.LogE(e2);
            return false;
        }
    }

    protected void a() {
    }

    protected boolean b() {
        try {
            a(this);
            return true;
        } catch (Exception e2) {
            DebugLog.LogE(e2);
            return false;
        }
    }

    public void c() {
        c.b bVar = this.f12435a;
        if (bVar != null) {
            bVar.a();
        }
    }

    protected void d() {
        Intent intent = new Intent();
        if (Build.VERSION.SDK_INT > 10) {
            intent.setAction("android.settings.SETTINGS");
        } else {
            intent.setAction("android.settings.WIRELESS_SETTINGS");
        }
        intent.addFlags(268435456);
        getContext().startActivity(intent);
    }

    protected void e() {
    }

    public void setExitCallBack(c.b bVar) {
        this.f12435a = bVar;
    }
}
