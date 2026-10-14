package cn.mucang.android.jiakaoyi.speech.utils;

import android.os.Handler;
import android.os.HandlerThread;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "Landroid/os/Handler;"}, k = 3, mv = {1, 5, 1}, xi = 48)
final class PcmSaver$mPcmSaveHandler$2 extends Lambda implements Function0<Handler> {
    public static final PcmSaver$mPcmSaveHandler$2 INSTANCE = new PcmSaver$mPcmSaveHandler$2();

    PcmSaver$mPcmSaveHandler$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Handler invoke() {
        HandlerThread handlerThread = new HandlerThread("audio_save");
        handlerThread.start();
        return new Handler(handlerThread.getLooper());
    }
}
