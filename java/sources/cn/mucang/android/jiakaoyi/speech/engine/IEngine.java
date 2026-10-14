package cn.mucang.android.jiakaoyi.speech.engine;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.engine.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J!\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00018\u0000H&¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH&J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\b\u0010\u0010\u001a\u00020\u0004H&¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/engine/IEngine;", ExifInterface.GPS_DIRECTION_TRUE, "", "init", "", "context", "Landroid/content/Context;", "callback", "(Landroid/content/Context;Ljava/lang/Object;)V", "isWorking", "", "onAudioWrite", "data", "", "length", "", "release", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface IEngine<T> {
    boolean c();

    void e(byte[] bArr, int i);

    void g(Context context, T t);
}
