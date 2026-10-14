package f.a.a.a.t;

import cn.mucang.android.core.api.ImageUploadResult;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.e;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.core.api.b f14499a;
    private a b = a();

    public b(String str, String str2) {
        this.f14499a = new cn.mucang.android.core.api.b(str, str2);
    }

    private a a() {
        a aVar = new a();
        aVar.d(307200);
        aVar.f(1280);
        aVar.e(720);
        return aVar;
    }

    private byte[] c(String str) {
        return e.a(e.e(str, this.b.c(), this.b.b()), this.b.a());
    }

    public a b() {
        return this.b;
    }

    public void d(a aVar) {
        this.b = aVar;
    }

    public ImageUploadResult e(String str) throws ApiException, InternalException, HttpException {
        return this.f14499a.b(c(str));
    }
}
