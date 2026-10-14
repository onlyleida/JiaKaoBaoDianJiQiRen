package cn.mucang.jiakaoyi.uilib.record;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.record.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/record/UploadRecordApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "upload", "", "model", "Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UploadRecordApi extends n {
    public final boolean m(UploadRecordModel model) throws ApiException, InternalException, HttpException {
        r.e(model, "model");
        String jSONString = JSON.toJSONString(model);
        r.d(jSONString, "toJSONString(model)");
        byte[] bytes = jSONString.getBytes(Charsets.f15811a);
        r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        return httpPost("/api/open/exam-record/save-exam-result.htm", bytes).isSuccess();
    }
}
