package cn.mucang.android.jiakaoyi.teachingk2.audio;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.audio.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "call", "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioModel;", "hangUp", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AudioApi extends n {
    public final AudioModel m() throws ApiException, InternalException, HttpException {
        return (AudioModel) httpGet("/api/open/control-center/call.htm").getData(AudioModel.class);
    }

    public final void n() throws Exception {
        httpGet("/api/open/control-center/hang-up.htm");
    }
}
