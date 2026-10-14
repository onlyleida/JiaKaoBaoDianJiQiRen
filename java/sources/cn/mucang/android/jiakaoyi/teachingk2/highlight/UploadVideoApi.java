package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.api.upload.UploadResult;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.R;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B+\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0003H\u0014J\b\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0014J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0007\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi;", "Lcn/mucang/android/core/api/upload/FileUploadApi;", "bucket", "", "contentType", "signKey", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "version1", "version2", "getApiHost", "getSignKey", "path", "uploadVideo", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;", "entity", "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;", "UploadVideoResult", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UploadVideoApi extends FileUploadApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7143a;
    private final String b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/UploadVideoApi$UploadVideoResult;", "Lcn/mucang/android/core/api/upload/UploadResult;", "()V", "shareUrl", "", "getShareUrl", "()Ljava/lang/String;", "setShareUrl", "(Ljava/lang/String;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class UploadVideoResult extends UploadResult {
        private String shareUrl;

        public final String getShareUrl() {
            return this.shareUrl;
        }

        public final void setShareUrl(String str) {
            this.shareUrl = str;
        }
    }

    public UploadVideoApi(String str, String str2, String str3) {
        super(str, str2, str3);
        this.f7143a = "1";
        this.b = "2";
        Map<String, String> extraParams = super.getExtraParams();
        Map<String, String> mapB = cn.mucang.android.jiakaoyi.framework.p002e.g.b();
        kotlin.jvm.internal.r.d(mapB, "getExtraParams()");
        extraParams.putAll(mapB);
    }

    public final UploadVideoResult b(HighlightVideoEntity entity) throws ApiException, IOException, InternalException, HttpException {
        File file;
        kotlin.jvm.internal.r.e(entity, "entity");
        Map<String, String> params = getExtraParams();
        String string = MucangConfig.getContext().getResources().getString(R.string.product);
        kotlin.jvm.internal.r.d(string, "getContext().resources.getString(R.string.product)");
        kotlin.jvm.internal.r.d(params, "params");
        params.put("product", string);
        params.put("xyToken", entity.getXyToken());
        params.put("trackId", entity.getTrackId());
        params.put("videoTime", String.valueOf(entity.getCompressDuration()));
        if (n0.g(entity.getZipPath())) {
            params.put("version", this.b);
            file = new File(entity.getZipPath());
        } else {
            params.put("version", this.f7143a);
            file = new File(entity.getCompressPath());
        }
        UploadResult uploadResultUpload = upload(file, FileUploadApi.FileType.File, (Class<UploadResult>) UploadVideoResult.class);
        kotlin.jvm.internal.r.d(uploadResultUpload, "upload(file, FileType.Fi…dVideoResult::class.java)");
        return (UploadVideoResult) uploadResultUpload;
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://user-data-collection.ttt.mucang.cn" : "https://udc.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi, cn.mucang.android.core.api.a
    public String getSignKey() {
        return "*#06#iXNqfHM9eJlxcJh9j316gqic";
    }

    @Override // cn.mucang.android.core.api.upload.FileUploadApi
    protected String path() {
        return "/api/open/track/upload-highlights.htm";
    }

    public /* synthetic */ UploadVideoApi(String str, String str2, String str3, int i, kotlin.jvm.internal.o oVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3);
    }
}
