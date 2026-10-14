package cn.mucang.android.jiakaoyi.speech.semantic;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.api.upload.UploadResult;
import cn.mucang.android.core.config.MucangConfig;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class g extends FileUploadApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f5902a;

    public g() {
        this("", "", "");
        this.f5902a = cn.mucang.android.jiakaoyi.framework.p002e.g.b();
    }

    public UploadResult b(File file, String str, String str2) throws ApiException, IOException, InternalException, HttpException {
        Map<String, String> extraParams = getExtraParams();
        extraParams.put("sessionId", str);
        extraParams.put("text", str2);
        return uploadFile(file);
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://device-monitor.ttt.mucang.cn" : "https://device-monitor.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        Map<String, String> extraParams = super.getExtraParams();
        extraParams.putAll(this.f5902a);
        return extraParams;
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    public String getSignKey() {
        return "*#06#anmdQ6ZEc6ZrhHWORUmMfHx5";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi
    protected String path() {
        return "/api/open/voice-file-record/upload-file-record.htm?deviceType=2";
    }

    public g(String str, String str2, String str3) {
        super(str, str2, str3);
    }
}
