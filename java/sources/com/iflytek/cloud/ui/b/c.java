package com.iflytek.cloud.ui.b;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public class c extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected d f12433a;
    private b b;

    class a implements b {
        a() {
        }

        @Override // com.iflytek.cloud.ui.b.c.b
        public void a() {
            c.this.dismiss();
        }
    }

    public interface b {
        void a();
    }

    public c(Context context) {
        super(context);
        this.f12433a = null;
        this.b = new a();
    }

    public boolean destroy() {
        if (isShowing()) {
            return false;
        }
        boolean zB = this.f12433a.b();
        this.f12433a = null;
        return zB;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.f12433a.a();
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(this.f12433a);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // android.app.Dialog
    public void show() {
        setCanceledOnTouchOutside(true);
        this.f12433a.setExitCallBack(this.b);
        this.f12433a.e();
        super.show();
    }
}
