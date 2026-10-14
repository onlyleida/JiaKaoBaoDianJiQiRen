package cn.mucang.sundial.library.http;

import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.RegisterInfo;
import cn.mucang.sundial.library.entity.ServerCoachInfo;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ#\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcn/mucang/sundial/library/http/CoachApi;", "Lcn/mucang/sundial/library/http/SundialApi;", "", "idCard", "authToken", "Lcn/mucang/sundial/library/entity/ServerCoachInfo;", "getCoachInfo", "(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerCoachInfo;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CoachApi extends SundialApi {
    public static /* synthetic */ ServerCoachInfo getCoachInfo$default(CoachApi coachApi, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        if ((i & 2) != 0) {
            str2 = "";
        }
        return coachApi.getCoachInfo(str, str2);
    }

    public final ServerCoachInfo getCoachInfo(String idCard, String authToken) {
        r.e(idCard, "idCard");
        r.e(authToken, "authToken");
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        RegisterInfo registerInfo = sundialManager.getRegisterInfo();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        r.d(registerInfo, "registerInfo");
        String deviceCode = registerInfo.getDeviceCode();
        r.d(deviceCode, "registerInfo.deviceCode");
        linkedHashMap.put("deviceGlobalCode", deviceCode);
        linkedHashMap.put("idCard", idCard);
        linkedHashMap.put("authToken", authToken);
        return (ServerCoachInfo) httpGetData("/api/open/query/coach.htm", ServerCoachInfo.class, linkedHashMap);
    }
}
