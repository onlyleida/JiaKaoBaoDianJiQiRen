package cn.mucang.android.jiakaoyi.speech.semantic;

import android.text.TextUtils;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class e extends FileUploadApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f5900a;

    public e() {
        this("", "", "");
        this.f5900a = cn.mucang.android.jiakaoyi.framework.p002e.g.b();
    }

    public SemanticResult b(String str, String str2, String str3) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("sessionId", str));
        arrayList.add(new MucangNameValuePair("text", str2));
        if (!TextUtils.isEmpty(str3)) {
            this.f5900a.put("kemu", str3);
        }
        return (SemanticResult) httpPost("/api/open/voice/handle.htm", arrayList).getData(SemanticResult.class);
    }

    public List<String> c() throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/voice/response-lib.htm").getJsonObject().getJSONArray("data").toJavaList(String.class);
    }

    public void d(long j, String str, long j2, boolean z) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("recordId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("replyMsg", str));
        arrayList.add(new MucangNameValuePair("commandId", String.valueOf(j2)));
        arrayList.add(new MucangNameValuePair("executeFlag", String.valueOf(z)));
        httpPost("/api/open/voice/callback.htm", arrayList);
    }

    public boolean e() throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/voice-wake-times/update-times.htm").isSuccess();
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://robot-teach.ttt.mucang.cn" : "https://robot-teach.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        Map<String, String> extraParams = super.getExtraParams();
        extraParams.putAll(this.f5900a);
        return extraParams;
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    public String getSignKey() {
        return "*#06#dTyRPIVxdomWQmp6eHmTg6iC";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi
    protected String path() {
        return "/api/open/voice/upload.htm";
    }

    public e(String str, String str2, String str3) {
        super(str, str2, str3);
    }
}
