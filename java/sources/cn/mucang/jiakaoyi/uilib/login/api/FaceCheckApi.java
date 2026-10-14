package cn.mucang.jiakaoyi.uilib.login.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.jiakaoyi.uilib.login.model.MatchResultModel;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.r;
import kotlin.k;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.o.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J \u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004J\u001e\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u0013\u001a\u00020\u0004H\u0014J\b\u0010\u0014\u001a\u00020\u0004H\u0014J.\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0017"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/api/FaceCheckApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "check", "", "sessionId", "data", "", "checkWithVector", "Lcn/mucang/jiakaoyi/uilib/login/model/MatchResultModel;", "faceAngle", "", "faceFeature", "", "scene", "clearNonStandardFace", "", "xyToken", "compareCurrent", "getApiHost", "getSignKey", "registerFace", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceCheckApi extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://face-recognition.ttt.mucang.cn" : "https://face-recognition.kakamobi.cn";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#cniHjm98i0Zwoo49RpY8dnh1";
    }

    public final String m(String sessionId, byte[] data) throws ApiException, InternalException, HttpException {
        r.e(sessionId, "sessionId");
        r.e(data, "data");
        return httpPost(r.m("/api/open/face/create-token.htm?sessionId=", sessionId), data).getData().getString("token");
    }

    public final MatchResultModel n(float f2, float[] faceFeature, String scene) {
        Object objM139constructorimpl;
        r.e(faceFeature, "faceFeature");
        r.e(scene, "scene");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("faceVersion", "1"));
        arrayList.add(new MucangNameValuePair("scene", scene));
        arrayList.add(new MucangNameValuePair("faceAngle", String.valueOf(f2)));
        arrayList.add(new MucangNameValuePair("faceFeature", '[' + ArraysKt___ArraysKt.L(faceFeature, ",", null, null, 0, null, null, 62, null) + ']'));
        try {
            Result.Companion companion = Result.INSTANCE;
            MatchResultModel matchResultModel = (MatchResultModel) httpPost("/api/open/face/match-by-features.htm", arrayList).getData(MatchResultModel.class);
            String maxScore = matchResultModel.getMaxScore();
            if (!(maxScore == null || maxScore.length() == 0)) {
                f.g(r.m("人脸匹配分数：", matchResultModel.getMaxScore()));
            }
            objM139constructorimpl = Result.m139constructorimpl(matchResultModel);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            thM142exceptionOrNullimpl.printStackTrace();
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        return (MatchResultModel) objM139constructorimpl;
    }

    public final boolean o(String xyToken) {
        Object objM139constructorimpl;
        r.e(xyToken, "xyToken");
        if (xyToken.length() == 0) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("faceVersion", "1"));
        arrayList.add(new MucangNameValuePair("xyToken", xyToken));
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(Boolean.valueOf(httpPost("/api/open/face/clear-nonstandard-face.htm", arrayList).isSuccess()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        Boolean bool = (Boolean) objM139constructorimpl;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean p(String xyToken, float f2, float[] faceFeature) {
        r.e(xyToken, "xyToken");
        r.e(faceFeature, "faceFeature");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("faceVersion", "1"));
        arrayList.add(new MucangNameValuePair("xyToken", xyToken));
        arrayList.add(new MucangNameValuePair("faceAngle", String.valueOf(f2)));
        arrayList.add(new MucangNameValuePair("faceFeature", '[' + ArraysKt___ArraysKt.L(faceFeature, ",", null, null, 0, null, null, 62, null) + ']'));
        return httpPost("/api/open/face/compare-current.htm", arrayList).isSuccess();
    }

    public final boolean q(String xyToken, float f2, float[] faceFeature, String scene, String sessionId) {
        r.e(xyToken, "xyToken");
        r.e(faceFeature, "faceFeature");
        r.e(scene, "scene");
        r.e(sessionId, "sessionId");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("faceVersion", "1"));
        arrayList.add(new MucangNameValuePair("sessionId", sessionId));
        arrayList.add(new MucangNameValuePair("scene", scene));
        arrayList.add(new MucangNameValuePair("xyToken", xyToken));
        arrayList.add(new MucangNameValuePair("faceAngle", String.valueOf(f2)));
        arrayList.add(new MucangNameValuePair("faceFeature", '[' + ArraysKt___ArraysKt.L(faceFeature, ",", null, null, 0, null, null, 62, null) + ']'));
        return httpPost("/api/open/face/add-face-features.htm", arrayList).isSuccess();
    }
}
