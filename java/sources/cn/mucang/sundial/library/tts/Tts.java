package cn.mucang.sundial.library.tts;

import android.os.Bundle;
import android.text.TextUtils;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.library.util.KtxsKt;
import com.amap.api.maps.model.MyLocationStyle;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u001e\u001f B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\u000bJ#\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000e\u0010\u000bR$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006!"}, d2 = {"Lcn/mucang/sundial/library/tts/Tts;", "", "", "word", "Lcn/mucang/sundial/library/tts/SpeakListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lkotlin/v;", "speak", "(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V", "speakNow", "speakStop", "()V", "speechNext", "init", "destroy", "Lcn/mucang/sundial/library/tts/Speaker;", "speaker", "Lcn/mucang/sundial/library/tts/Speaker;", "getSpeaker$library_release", "()Lcn/mucang/sundial/library/tts/Speaker;", "setSpeaker$library_release", "(Lcn/mucang/sundial/library/tts/Speaker;)V", "", "topLevel", "Ljava/lang/Boolean;", "Ljava/util/LinkedList;", "Lcn/mucang/sundial/library/tts/Tts$SpeechItem;", "textToSpeech", "Ljava/util/LinkedList;", "<init>", "Listener", "NoopListener", "SpeechItem", "library_release"}, k = 1, mv = {1, 1, 15})
public final class Tts {
    private static Speaker speaker;
    public static final Tts INSTANCE = new Tts();
    private static final LinkedList<SpeechItem> textToSpeech = new LinkedList<>();
    private static Boolean topLevel = Boolean.FALSE;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ2\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0096\u0001¢\u0006\u0004\b\r\u0010\u000eJ2\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0096\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0006H\u0096\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0006H\u0096\u0001¢\u0006\u0004\b\u0018\u0010\u0017J(\u0010\u0019\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0006H\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcn/mucang/sundial/library/tts/Tts$Listener;", "Lcn/mucang/sundial/library/tts/SpeakListener;", "", MyLocationStyle.ERROR_CODE, "", "errorMsg", "Lkotlin/v;", "onCompleted", "(ILjava/lang/String;)V", "progress", "beginPos", "endPos", "info", "onBufferProgress", "(IIILjava/lang/String;)V", "eventType", "arg1", "arg2", "Landroid/os/Bundle;", "obj", "onEvent", "(IIILandroid/os/Bundle;)V", "onSpeakBegin", "()V", "onSpeakPaused", "onSpeakProgress", "(III)V", "onSpeakResumed", "delegate", "Lcn/mucang/sundial/library/tts/SpeakListener;", "<init>", "(Lcn/mucang/sundial/library/tts/SpeakListener;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    private static final class Listener implements SpeakListener {
        private final SpeakListener delegate;

        public Listener(SpeakListener delegate) {
            r.e(delegate, "delegate");
            this.delegate = delegate;
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onBufferProgress(int progress, int beginPos, int endPos, String info) {
            this.delegate.onBufferProgress(progress, beginPos, endPos, info);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onCompleted(int errorCode, String errorMsg) {
            Tts tts = Tts.INSTANCE;
            Tts.topLevel = Boolean.FALSE;
            this.delegate.onCompleted(errorCode, errorMsg);
            Tts.speechNext();
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onEvent(int eventType, int arg1, int arg2, Bundle obj) {
            this.delegate.onEvent(eventType, arg1, arg2, obj);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onSpeakBegin() {
            this.delegate.onSpeakBegin();
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onSpeakPaused() {
            this.delegate.onSpeakPaused();
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onSpeakProgress(int progress, int beginPos, int endPos) {
            this.delegate.onSpeakProgress(progress, beginPos, endPos);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onSpeakResumed() {
            this.delegate.onSpeakResumed();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcn/mucang/sundial/library/tts/Tts$NoopListener;", "Lcn/mucang/sundial/library/tts/SpeakListener;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    private static final class NoopListener implements SpeakListener {
        public static final NoopListener INSTANCE = new NoopListener();

        private NoopListener() {
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onBufferProgress(int i, int i2, int i3, String str) {
            SpeakListener.DefaultImpls.onBufferProgress(this, i, i2, i3, str);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onCompleted(int i, String str) {
            SpeakListener.DefaultImpls.onCompleted(this, i, str);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) {
            SpeakListener.DefaultImpls.onEvent(this, i, i2, i3, bundle);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onSpeakBegin() {
            SpeakListener.DefaultImpls.onSpeakBegin(this);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onSpeakPaused() {
            SpeakListener.DefaultImpls.onSpeakPaused(this);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onSpeakProgress(int i, int i2, int i3) {
            SpeakListener.DefaultImpls.onSpeakProgress(this, i, i2, i3);
        }

        @Override // cn.mucang.sundial.library.tts.SpeakListener
        public void onSpeakResumed() {
            SpeakListener.DefaultImpls.onSpeakResumed(this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcn/mucang/sundial/library/tts/Tts$SpeechItem;", "", "", "word", "Ljava/lang/String;", "getWord", "()Ljava/lang/String;", "Lcn/mucang/sundial/library/tts/SpeakListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/sundial/library/tts/SpeakListener;", "getListener", "()Lcn/mucang/sundial/library/tts/SpeakListener;", "<init>", "(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    private static final class SpeechItem {
        private final SpeakListener listener;
        private final String word;

        public SpeechItem(String word, SpeakListener speakListener) {
            r.e(word, "word");
            this.word = word;
            this.listener = speakListener;
        }

        public final SpeakListener getListener() {
            return this.listener;
        }

        public final String getWord() {
            return this.word;
        }
    }

    private Tts() {
    }

    public static final /* synthetic */ LinkedList access$getTextToSpeech$p(Tts tts) {
        return textToSpeech;
    }

    public static final synchronized void destroy() {
        v vVar;
        try {
            Result.Companion companion = Result.INSTANCE;
            textToSpeech.clear();
            Speaker speaker2 = speaker;
            if (speaker2 != null) {
                speaker2.destroy();
                vVar = v.f15822a;
            } else {
                vVar = null;
            }
            Result.m139constructorimpl(vVar);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }

    public static final synchronized void init() {
        Speaker speaker2 = speaker;
        if (speaker2 != null) {
            speaker2.init();
        }
    }

    public static final void speak(String str) {
        speak$default(str, null, 2, null);
    }

    public static final synchronized void speak(String word, SpeakListener listener) {
        r.e(word, "word");
        Speaker speaker2 = speaker;
        if (speaker2 != null) {
            LinkedList<SpeechItem> linkedList = textToSpeech;
            boolean zIsEmpty = linkedList.isEmpty();
            linkedList.add(new SpeechItem(word, listener));
            if (zIsEmpty && !KtxsKt.isTrue(Boolean.valueOf(speaker2.isSpeaking()))) {
                speechNext();
            }
        }
    }

    public static /* synthetic */ void speak$default(String str, SpeakListener speakListener, int i, Object obj) {
        if ((i & 2) != 0) {
            speakListener = null;
        }
        speak(str, speakListener);
    }

    public static final void speakNow(String str) {
        speakNow$default(str, null, 2, null);
    }

    public static final synchronized void speakNow(String word, SpeakListener listener) {
        r.e(word, "word");
        if (speaker != null) {
            LinkedList<SpeechItem> linkedList = textToSpeech;
            linkedList.clear();
            linkedList.add(new SpeechItem(word, listener));
            speechNext();
            topLevel = Boolean.TRUE;
        }
    }

    public static /* synthetic */ void speakNow$default(String str, SpeakListener speakListener, int i, Object obj) {
        if ((i & 2) != 0) {
            speakListener = null;
        }
        speakNow(str, speakListener);
    }

    public static final synchronized void speakStop() {
        if (KtxsKt.isTrue(topLevel)) {
            return;
        }
        if (speaker != null) {
            LinkedList<SpeechItem> linkedList = textToSpeech;
            linkedList.clear();
            linkedList.add(new SpeechItem("-", null));
            speechNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final synchronized void speechNext() {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.tts.Tts.speechNext.1
            @Override // java.lang.Runnable
            public final void run() {
                v vVar;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Tts tts = Tts.INSTANCE;
                    SpeechItem speechItem = (SpeechItem) Tts.access$getTextToSpeech$p(tts).poll();
                    if (speechItem != null) {
                        if (TextUtils.isEmpty(speechItem.getWord())) {
                            Thread.sleep(1000L);
                        }
                        Speaker speaker$library_release = tts.getSpeaker$library_release();
                        if (speaker$library_release != null) {
                            String word = speechItem.getWord();
                            SpeakListener listener = speechItem.getListener();
                            if (listener == null) {
                                listener = NoopListener.INSTANCE;
                            }
                            speaker$library_release.speak(word, new Listener(listener));
                            vVar = v.f15822a;
                        } else {
                            vVar = null;
                        }
                        Result.m139constructorimpl(vVar);
                    }
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m139constructorimpl(k.a(th));
                }
            }
        });
    }

    public final Speaker getSpeaker$library_release() {
        return speaker;
    }

    public final void setSpeaker$library_release(Speaker speaker2) {
        speaker = speaker2;
    }
}
