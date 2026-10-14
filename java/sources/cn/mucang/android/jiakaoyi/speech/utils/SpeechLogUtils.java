package cn.mucang.android.jiakaoyi.speech.utils;

import android.text.TextUtils;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.utils.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010\r\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010\u000e\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010\u000f\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/utils/SpeechLogUtils;", "", "()V", "moduleName", "", "getModuleName", "()Ljava/lang/String;", "setModuleName", "(Ljava/lang/String;)V", "d", "", "tag", SocialConstants.PARAM_SEND_MSG, "e", "i", "w", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpeechLogUtils {
    public static final void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("语音助手 D/" + ((Object) str) + ": " + ((Object) str2));
    }

    public static final void b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("语音助手 E/" + ((Object) str) + ": " + ((Object) str2));
    }

    public static final void c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("语音助手 I/" + ((Object) str) + ": " + ((Object) str2));
    }

    public static final void d(String tag, String msg) {
        if (TextUtils.isEmpty(tag) || TextUtils.isEmpty(msg)) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("语音助手 W/" + ((Object) tag) + ": " + ((Object) msg));
    }
}
