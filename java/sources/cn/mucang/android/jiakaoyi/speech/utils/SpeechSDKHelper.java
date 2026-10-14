package cn.mucang.android.jiakaoyi.speech.utils;

import android.content.Context;
import com.iflytek.cloud.SpeechUtility;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.utils.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\t\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/utils/SpeechSDKHelper;", "", "()V", "IFLYTEK_APPID", "", "initBaiduSDK", "", "context", "Landroid/content/Context;", "initIflytekSDK", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpeechSDKHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpeechSDKHelper f5931a = new SpeechSDKHelper();

    private SpeechSDKHelper() {
    }

    public final void a(Context context) {
        SpeechUtility.createUtility(context, "appid=5f0ea3a7,engine_mode=msc");
    }
}
