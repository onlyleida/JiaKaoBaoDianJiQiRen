package cn.mucang.android.account.g.r;

/* JADX INFO: loaded from: classes.dex */
public class a implements cn.mucang.android.core.api.request.d.a {
    @Override // cn.mucang.android.core.api.request.d.a
    public void a(cn.mucang.android.core.api.request.c cVar) throws Exception {
        if (cVar.e().startsWith("/api/")) {
            return;
        }
        cVar.p("/api/open/v2" + cVar.e());
    }
}
