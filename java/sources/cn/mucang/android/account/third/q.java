package cn.mucang.android.account.third;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import cn.mucang.android.account.data.MCUserInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class q extends f.a.a.p011d.b {
    protected s c;

    protected static void g(Context context, Class<? extends q> cls, long j, String str) {
        Intent intent = new Intent(context, cls);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        intent.putExtra("BaseAssistActivity.listenerId", j);
        intent.putExtra("BaseAssistActivity.appId", str);
        context.startActivity(intent);
    }

    @Override // f.a.a.p011d.b
    public void a(int i, Throwable th) {
        s sVar = this.c;
        if (sVar != null) {
            sVar.b(i, th);
        }
        finish();
    }

    @Override // f.a.a.p011d.b
    protected void b(Bundle bundle) {
        if (bundle != null) {
            this.c = (s) cn.mucang.android.core.utils.i.c().d(bundle.getLong("BaseAssistActivity.listenerId", -1L));
        }
    }

    public void d() {
        s sVar = this.c;
        if (sVar != null) {
            sVar.onCancel();
        }
        finish();
    }

    protected void e(MCUserInfo mCUserInfo) {
        s sVar = this.c;
        if (sVar == null) {
            finish();
        } else {
            sVar.a(mCUserInfo);
            finish();
        }
    }

    public void f(Object obj) {
        if (obj instanceof MCUserInfo) {
            e((MCUserInfo) obj);
        } else {
            finish();
        }
    }
}
