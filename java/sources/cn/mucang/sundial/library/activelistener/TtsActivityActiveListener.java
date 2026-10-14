package cn.mucang.sundial.library.activelistener;

import android.app.Activity;
import androidx.lifecycle.a0;
import androidx.lifecycle.i0;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.TtsEvent;
import cn.mucang.sundial.library.tts.Tts;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR \u0010\r\u001a\f0\fR\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;", "Lcn/mucang/sundial/library/activelistener/ActivityActiveListener;", "Landroid/app/Activity;", "activity", "Lkotlin/v;", "onFirstActivityCreated", "(Landroid/app/Activity;)V", "onAllActivityDestroyed", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/android/eventbus/event/TtsEvent;", "liveData", "Landroidx/lifecycle/i0;", "Landroidx/lifecycle/i0$b;", "observer", "Landroidx/lifecycle/i0$b;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TtsActivityActiveListener implements ActivityActiveListener {
    private final i0<TtsEvent> liveData;
    private final i0<TtsEvent>.b observer;

    public TtsActivityActiveListener() {
        i0<TtsEvent> i0VarWith = LiveBus.INSTANCE.with(TtsEvent.class);
        this.liveData = i0VarWith;
        this.observer = new i0.b(i0VarWith, new a0<TtsEvent>() { // from class: cn.mucang.sundial.library.activelistener.TtsActivityActiveListener$observer$1
            @Override // androidx.lifecycle.a0
            public final void onChanged(TtsEvent ttsEvent) {
                String str = ttsEvent.message;
                if (str == null || str.length() == 0) {
                    return;
                }
                String str2 = ttsEvent.message;
                r.d(str2, "it.message");
                Tts.speak$default(str2, null, 2, null);
            }
        });
    }

    @Override // cn.mucang.sundial.library.activelistener.ActivityActiveListener
    public void onActivityResumed(Activity activity) {
        r.e(activity, "activity");
        ActivityActiveListener.DefaultImpls.onActivityResumed(this, activity);
    }

    @Override // cn.mucang.sundial.library.activelistener.ActivityActiveListener
    public void onAllActivityDestroyed(Activity activity) {
        r.e(activity, "activity");
        this.liveData.m(this.observer);
        Tts.destroy();
    }

    @Override // cn.mucang.sundial.library.activelistener.ActivityActiveListener
    public void onFirstActivityCreated(Activity activity) {
        r.e(activity, "activity");
        new Thread(new Runnable() { // from class: cn.mucang.sundial.library.activelistener.TtsActivityActiveListener.onFirstActivityCreated.1
            @Override // java.lang.Runnable
            public final void run() {
                Tts.init();
            }
        }).start();
        this.liveData.p(this.observer);
    }
}
