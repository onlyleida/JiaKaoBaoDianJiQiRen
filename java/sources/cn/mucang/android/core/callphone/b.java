package cn.mucang.android.core.callphone;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.t;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b extends cn.mucang.android.core.api.a {
    public ApiResponse b(List<PhoneCallLog> list) {
        try {
            ArrayList arrayList = new ArrayList();
            String jSONString = JSON.toJSONString(list, SerializerFeature.WriteMapNullValue);
            arrayList.add(new MucangNameValuePair("callPhoneLogs", jSONString));
            arrayList.add(new MucangNameValuePair("nowTime", "" + System.currentTimeMillis()));
            t.h("CallPhoneManager", "sent json " + jSONString);
            return httpPost("/api/open/call-phone-log/batch-create.htm", arrayList);
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return null;
        }
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return "https://call2.kakamobi.com";
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#jHp3PHl8SX1ufKiCpTySh6Sk";
    }
}
