package cn.mucang.android.core.webview;

import android.net.Uri;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2783a;

    public f(String str) {
        this.f2783a = str;
    }

    public HtmlExtra.b a() {
        if (n0.e(this.f2783a)) {
            return new HtmlExtra.b();
        }
        HtmlExtra.b bVar = new HtmlExtra.b();
        bVar.J(this.f2783a);
        try {
            Uri uri = Uri.parse(this.f2783a);
            boolean z = true;
            boolean booleanQueryParameter = uri.getBooleanQueryParameter("mc_show_title_bar", true);
            bVar.L(booleanQueryParameter);
            if (uri.getBooleanQueryParameter("mc_hide_option_button", false)) {
                z = false;
            }
            bVar.K(z);
            if (!booleanQueryParameter) {
                bVar.D(false);
            }
            bVar.H(uri.getBooleanQueryParameter("mc_native_request_location", false));
        } catch (Exception e2) {
            t.c("e", e2);
        }
        return bVar;
    }
}
