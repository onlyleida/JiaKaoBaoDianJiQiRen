package cn.mucang.android.jiakaoyi.speech.engine.asr;

import cn.mucang.android.jiakaoyi.speech.callback.IAsrCallback;
import cn.mucang.android.jiakaoyi.speech.engine.IEngine;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.engine.l.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0004H&J\u0018\u0010\t\u001a\u00020\u00042\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH&¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/engine/asr/IAsrEngine;", "Lcn/mucang/android/jiakaoyi/speech/engine/IEngine;", "Lcn/mucang/android/jiakaoyi/speech/callback/IAsrCallback;", "cancel", "", "startAsrMode", "force", "", "stopAsrMode", "uploadHotWords", "words", "", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface IAsrEngine extends IEngine<IAsrCallback> {
    void cancel();

    void d(boolean z);

    void f();
}
