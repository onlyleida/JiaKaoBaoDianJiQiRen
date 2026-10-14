package cn.mucang.jiakaoyi.uilib.ui.backup;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.backup.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "verifyManagerPassword", "", "password", "", "verifyPassword", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BackupApi extends n {
    public final boolean m(String password) {
        r.e(password, "password");
        return httpPost("/api/open/manager-password/check-manager-password.htm", u.p(new MucangNameValuePair("password", password))).isSuccess();
    }

    public final boolean n(String password) throws ApiException, InternalException, HttpException {
        r.e(password, "password");
        return httpPost("/api/open/user/verify-proxy-pwd.htm", u.p(new MucangNameValuePair("password", password))).isSuccess();
    }
}
