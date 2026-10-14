package cn.mucang.android.core.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.request.e.c;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2320a;
    private Map<String, String> b;

    public b(String str, String str2) {
        this.f2320a = str2;
        HashMap map = new HashMap();
        this.b = map;
        map.put("bucket", str);
    }

    public ImageUploadResult b(byte[] bArr) throws ApiException, InternalException, HttpException {
        return (ImageUploadResult) httpPost("/api/open/upload.htm", bArr).getData(ImageUploadResult.class);
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return "https://upload-image.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        return this.b;
    }

    @Override // cn.mucang.android.core.api.a
    protected c getRequestConfig() {
        return new c(10000L, 10000L, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return this.f2320a;
    }
}
