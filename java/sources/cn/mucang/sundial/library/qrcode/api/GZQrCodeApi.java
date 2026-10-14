package cn.mucang.sundial.library.qrcode.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.RegisterInfo;
import cn.mucang.sundial.library.http.SundialApi;
import cn.mucang.sundial.library.qrcode.model.GZQrAuthUser;
import cn.mucang.sundial.library.qrcode.model.GZQrCodeModel;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcn/mucang/sundial/library/qrcode/api/GZQrCodeApi;", "Lcn/mucang/sundial/library/http/SundialApi;", "", "isSignIn", "Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;", "getQrCode", "(Z)Lcn/mucang/sundial/library/qrcode/model/GZQrCodeModel;", "", "token", "Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;", "getLoginStatusResult", "(Ljava/lang/String;)Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class GZQrCodeApi extends SundialApi {
    public final GZQrAuthUser getLoginStatusResult(String token) throws ApiException, InternalException, HttpException {
        r.e(token, "token");
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        RegisterInfo registerInfo = sundialManager.getRegisterInfo();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        r.d(registerInfo, "registerInfo");
        String deviceCode = registerInfo.getDeviceCode();
        r.d(deviceCode, "registerInfo.deviceCode");
        linkedHashMap.put("deviceGlobalCode", deviceCode);
        linkedHashMap.put("qrToken", token);
        return (GZQrAuthUser) httpGetData("/api/open/query/get-check-result.htm", GZQrAuthUser.class, linkedHashMap);
    }

    public final GZQrCodeModel getQrCode(boolean isSignIn) throws ApiException, InternalException, HttpException {
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        RegisterInfo registerInfo = sundialManager.getRegisterInfo();
        String str = isSignIn ? "CheckIn" : "CheckOut";
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        r.d(registerInfo, "registerInfo");
        String deviceCode = registerInfo.getDeviceCode();
        r.d(deviceCode, "registerInfo.deviceCode");
        linkedHashMap.put("deviceGlobalCode", deviceCode);
        linkedHashMap.put("checkStatus", str);
        return (GZQrCodeModel) httpGetData("/api/open/query/get-qr-url.htm", GZQrCodeModel.class, linkedHashMap);
    }
}
