package cn.mucang.android.core.webview.protocol;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.net.Uri;
import cn.mucang.android.core.callphone.PhoneCallRequest;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.core.h;
import f.a.a.a.c;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f2808a;

    class a implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.core.webview.j.a f2809a;
        final /* synthetic */ String b;

        a(b bVar, cn.mucang.android.core.webview.j.a aVar, String str) {
            this.f2809a = aVar;
            this.b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            cn.mucang.android.core.callphone.a.h().f(this.f2809a.f2786e);
            c.c(this.b);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.b$b, reason: collision with other inner class name */
    class DialogInterfaceOnClickListenerC0089b implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.core.webview.j.a f2810a;
        final /* synthetic */ String b;

        DialogInterfaceOnClickListenerC0089b(b bVar, cn.mucang.android.core.webview.j.a aVar, String str) {
            this.f2810a = aVar;
            this.b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            cn.mucang.android.core.callphone.a.h().e(this.f2810a.f2786e);
            c.a(this.b);
        }
    }

    public b(Uri uri) {
        this.f2808a = uri;
    }

    private void a(h hVar) {
        cn.mucang.android.core.webview.j.a aVar = new cn.mucang.android.core.webview.j.a();
        aVar.f2786e = c(this.f2808a.toString());
        Activity activityI = MucangConfig.i();
        if (n0.e(aVar.f2786e) || activityI == null) {
            return;
        }
        String strA = hVar.a();
        c.p(strA);
        aVar.f2784a = "提示";
        String strB = cn.mucang.android.core.webview.h.b(this.f2808a);
        if (n0.g(strB)) {
            aVar.b = "openres";
            aVar.f2785d = strB;
        } else {
            aVar.b = "45cd9c4c-c62d-400a-a12b-364a0f25f59d";
            aVar.f2785d = strA;
        }
        PhoneCallRequest phoneCallRequest = new PhoneCallRequest(aVar.f2786e, aVar.b, aVar.f2785d, "提示");
        if (!cn.mucang.android.core.webview.h.g(this.f2808a)) {
            phoneCallRequest.setNeedConfirm(false);
            cn.mucang.android.core.callphone.a.h().d(phoneCallRequest);
            return;
        }
        phoneCallRequest.setNeedConfirm(true);
        cn.mucang.android.core.callphone.a.h().d(phoneCallRequest);
        String str = "拨打电话：" + aVar.f2786e;
        AlertDialog.Builder builder = new AlertDialog.Builder(activityI);
        builder.setMessage(str);
        builder.setPositiveButton("确定", new a(this, aVar, strA));
        builder.setNegativeButton("取消", new DialogInterfaceOnClickListenerC0089b(this, aVar, strA));
        builder.setCancelable(false);
        builder.create().show();
    }

    private String c(String str) {
        t.a("TelProtocol", "tel-protocol : " + str);
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length == 2) {
            return strArrSplit[1].replace("-", "");
        }
        return null;
    }

    public String b(h hVar) {
        a(hVar);
        return null;
    }
}
