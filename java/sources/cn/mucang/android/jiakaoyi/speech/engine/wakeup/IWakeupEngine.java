package cn.mucang.android.jiakaoyi.speech.engine.wakeup;

import cn.mucang.android.jiakaoyi.speech.callback.IWakeupCallback;
import cn.mucang.android.jiakaoyi.speech.engine.IEngine;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.engine.m.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\u0004H&¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/engine/wakeup/IWakeupEngine;", "Lcn/mucang/android/jiakaoyi/speech/engine/IEngine;", "Lcn/mucang/android/jiakaoyi/speech/callback/IWakeupCallback;", "startWakeupMode", "", "force", "", "stopWakeupMode", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface IWakeupEngine extends IEngine<IWakeupCallback> {
    void a(boolean z);

    void b();
}
