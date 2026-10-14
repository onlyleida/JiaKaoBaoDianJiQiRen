package cn.mucang.android.account.qrcode.api;

import cn.mucang.android.account.g.a;
import cn.mucang.android.account.p001qrcode.model.QrAppModel;
import cn.mucang.android.account.p001qrcode.model.QrAuthUser;
import cn.mucang.android.account.p001qrcode.model.QrCodeModel;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.account.m.c.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/account/qrcode/api/QrCodeApi;", "Lcn/mucang/android/account/api/AccountBaseApi;", "()V", "cancelLogin", "", "token", "", "confirmLogin", "authToken", "getLoginStatusResult", "Lcn/mucang/android/account/qrcode/model/QrAuthUser;", "getQrAppInfo", "Lcn/mucang/android/account/qrcode/model/QrAppModel;", "getQrCode", "Lcn/mucang/android/account/qrcode/model/QrCodeModel;", "setScanSuccess", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class QrCodeApi extends a {
    public final boolean f(String token) throws ApiException, InternalException, HttpException {
        r.e(token, "token");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("token", token));
        return httpPost("/api/open/v3/scan-login/cancel.htm", arrayList).isSuccess();
    }

    public final boolean g(String token, String authToken) throws ApiException, InternalException, HttpException {
        r.e(token, "token");
        r.e(authToken, "authToken");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("token", token));
        arrayList.add(new MucangNameValuePair("authToken", authToken));
        return httpPost("/api/open/v3/scan-login/submit.htm", arrayList).isSuccess();
    }

    public final QrAuthUser h(String token) throws ApiException, InternalException, HttpException {
        r.e(token, "token");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("token", token));
        return (QrAuthUser) httpPost("/api/open/v3/scan-login/get-result.htm", arrayList).getData(QrAuthUser.class);
    }

    public final QrAppModel i(String token) throws ApiException, InternalException, HttpException {
        r.e(token, "token");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("token", token));
        return (QrAppModel) httpPost("/api/open/v3/scan-login/get-app-info.htm", arrayList).getData(QrAppModel.class);
    }

    public final QrCodeModel j() throws ApiException, InternalException, HttpException {
        return (QrCodeModel) httpGet("/api/open/v3/scan-login/qrcode.htm").getData(QrCodeModel.class);
    }

    public final boolean k(String token) throws ApiException, InternalException, HttpException {
        r.e(token, "token");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("token", token));
        return httpPost("/api/open/v3/scan-login/set-scan-success.htm", arrayList).isSuccess();
    }
}
