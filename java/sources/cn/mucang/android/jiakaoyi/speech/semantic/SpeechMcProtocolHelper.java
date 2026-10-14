package cn.mucang.android.jiakaoyi.speech.semantic;

import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.text.TextUtils;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import com.iflytek.cloud.SpeechConstant;
import f.a.a.a.activity.h;
import java.net.URI;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.semantic.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004J\b\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004J\"\u0010\u000f\u001a\u00020\r2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\"\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/semantic/SpeechMcProtocolHelper;", "", "()V", "URL_ADJUST_VOLUME", "", "URL_CLOSE_PANEL", "bizProtocols", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "executeOK", "", "url", "init", "", "isBizInvokeProtocol", "setBizInvokeProtocols", "urlSet", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpeechMcProtocolHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpeechMcProtocolHelper f5901a = new SpeechMcProtocolHelper();
    private static HashSet<String> b;

    private SpeechMcProtocolHelper() {
    }

    public static final void b() {
        h.g("http://voice.nav.mucang.cn/adjustVolume", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.speech.semantic.c
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return SpeechMcProtocolHelper.c(context, str);
            }
        });
        h.g("http://voice.nav.mucang.cn/closePanel", new f.a.a.a.activity.c() { // from class: cn.mucang.android.jiakaoyi.speech.semantic.b
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return SpeechMcProtocolHelper.d(context, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(Context context, String str) {
        Uri uri = Uri.parse(str);
        String queryParameter = uri.getQueryParameter(SpeechConstant.ISV_CMD);
        String queryParameter2 = uri.getQueryParameter("data");
        int i = queryParameter2 == null ? 0 : Integer.parseInt(queryParameter2);
        Object systemService = context.getSystemService("audio");
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        if (audioManager != null) {
            int i2 = i >= 0 ? i : 0;
            if (i2 > 100) {
                i2 = 100;
            }
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            int streamVolume = audioManager.getStreamVolume(3);
            int iA = kotlin.y.c.a((((double) streamMaxVolume) / 100.0d) * ((double) i2));
            if (r.a(queryParameter, "1")) {
                iA += streamVolume;
            } else if (r.a(queryParameter, "2")) {
                iA = streamVolume - iA;
            }
            audioManager.setStreamVolume(3, iA, 1);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(Context context, String str) {
        SpeechManager.f5839a.t();
        return true;
    }

    public final boolean a(String str) {
        if (n0.e(str)) {
            return false;
        }
        URI uriCreate = URI.create(str);
        StringBuilder sb = new StringBuilder();
        sb.append(uriCreate.getScheme());
        sb.append("://");
        sb.append((Object) uriCreate.getHost());
        sb.append((Object) uriCreate.getPath());
        return h.c(sb.toString()) && h.e(str);
    }

    public final boolean e(String str) {
        if (!TextUtils.isEmpty(str)) {
            HashSet<String> hashSet = b;
            if (!(hashSet == null || hashSet.isEmpty())) {
                HashSet<String> hashSet2 = b;
                r.c(hashSet2);
                for (String str2 : hashSet2) {
                    r.c(str);
                    if (StringsKt__StringsKt.G(str, str2, false, 2, null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void h(HashSet<String> hashSet) {
        b = hashSet;
    }
}
