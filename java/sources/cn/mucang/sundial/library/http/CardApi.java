package cn.mucang.sundial.library.http;

import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.RegisterInfo;
import cn.mucang.sundial.library.entity.ServerCardInfo;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcn/mucang/sundial/library/http/CardApi;", "Lcn/mucang/sundial/library/http/SundialApi;", "", "identificationCode", "Lcn/mucang/sundial/library/entity/ServerCardInfo;", "realityCard", "(Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerCardInfo;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CardApi extends SundialApi {
    public static /* synthetic */ ServerCardInfo realityCard$default(CardApi cardApi, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return cardApi.realityCard(str);
    }

    public final ServerCardInfo realityCard(String identificationCode) {
        r.e(identificationCode, "identificationCode");
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        RegisterInfo registerInfo = sundialManager.getRegisterInfo();
        if (registerInfo == null) {
            return null;
        }
        String deviceCode = registerInfo.getDeviceCode();
        if (deviceCode == null || deviceCode.length() == 0) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String deviceCode2 = registerInfo.getDeviceCode();
        r.d(deviceCode2, "registerInfo.deviceCode");
        linkedHashMap.put("deviceGlobalCode", deviceCode2);
        linkedHashMap.put("identificationCode", identificationCode);
        return (ServerCardInfo) httpGetData("/api/open/query/reality-card.htm", ServerCardInfo.class, linkedHashMap);
    }
}
