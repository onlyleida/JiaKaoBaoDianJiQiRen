package cn.mucang.jiakaoyi.uilib.message;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.message.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\b\u0010\t\u001a\u00020\u0006H\u0014J\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bJ\b\u0010\r\u001a\u00020\u0006H\u0014¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/message/DialogMessageApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "confirm", "", "messageId", "", "button", "Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;", "getApiHost", "getMessageList", "", "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;", "getSignKey", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DialogMessageApi extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://xy-message.ttt.mucang.cn" : "https://xy-message.kakamobi.cn";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#fZNClo1ua5CHl4SVnaaokaOm";
    }

    public final boolean m(String messageId, ButtonConfig buttonConfig) throws ApiException, InternalException, HttpException {
        r.e(messageId, "messageId");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("messageIds", messageId));
        if (buttonConfig != null) {
            arrayList.add(new MucangNameValuePair("button", JSON.toJSONString(buttonConfig)));
        }
        return httpPost("/api/open/message/confirm.htm", arrayList).isSuccess();
    }

    public final List<DialogMessageDetail> n() throws ApiException, InternalException, HttpException {
        return httpGetDataList("/api/open/message/list.htm", DialogMessageDetail.class);
    }
}
