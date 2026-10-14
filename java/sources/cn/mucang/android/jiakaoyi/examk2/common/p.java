package cn.mucang.android.jiakaoyi.examk2.common;

import android.media.MediaPlayer;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.examk2.R;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MediaPlayer f3337a;
    private final K2GlobalConfig b;
    private File c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f3338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3339e;

    class a extends SimpleTtsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ K2ExamLogic f3340a;

        a(K2ExamLogic k2ExamLogic) {
            this.f3340a = k2ExamLogic;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            if (this.f3340a.E) {
                p.this.c();
                p.this.f3337a.start();
            }
        }
    }

    class b extends SimpleTtsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ K2ExamLogic f3341a;
        final /* synthetic */ String[] b;

        b(K2ExamLogic k2ExamLogic, String[] strArr) {
            this.f3341a = k2ExamLogic;
            this.b = strArr;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            if (this.f3341a.E) {
                p.this.c();
                MediaPlayer mediaPlayer = p.this.f3337a;
                final String[] strArr = this.b;
                mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: cn.mucang.android.jiakaoyi.examk2.common.i
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public final void onCompletion(MediaPlayer mediaPlayer2) {
                        TtsManager.r(strArr[1], TtsGrade.ExamDeduct);
                    }
                });
                p.this.f3337a.start();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(K2GlobalConfig k2GlobalConfig) {
        this.b = k2GlobalConfig;
        if (k2GlobalConfig == null || !((Boolean) k2GlobalConfig.p401145.value).booleanValue()) {
            return;
        }
        this.f3339e = true;
        this.c = cn.mucang.android.jiakaoyi.framework.tts.i.b.h(cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(k2GlobalConfig.p401146.ruleId));
        this.f3338d = (String) k2GlobalConfig.p401146.value;
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        MediaPlayer mediaPlayer = this.f3337a;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        this.f3337a = MediaPlayer.create(MucangConfig.getContext(), R.raw.start_yx);
    }

    public void e(K2ExamLogic k2ExamLogic) {
        if (this.f3339e) {
            if (this.c != null) {
                String str = this.f3338d;
                TtsGrade ttsGrade = TtsGrade.ExamDeduct;
                int i = this.b.p401146.ruleId;
                TtsManager.t(str, ttsGrade, i, cn.mucang.android.jiakaoyi.framework.tts.voice.l.d(i));
                return;
            }
            String str2 = this.f3338d;
            if (str2 == null || !str2.contains("&")) {
                String str3 = this.f3338d;
                if (str3 == null) {
                    str3 = "";
                }
                TtsManager.r(str3, TtsGrade.ExamDeduct);
                return;
            }
            final String[] strArrSplit = this.f3338d.split("&");
            if (this.f3338d.indexOf("&") == 0 && strArrSplit.length >= 2) {
                this.f3337a.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: cn.mucang.android.jiakaoyi.examk2.common.h
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public final void onCompletion(MediaPlayer mediaPlayer) {
                        TtsManager.r(strArrSplit[1], TtsGrade.ExamDeduct);
                    }
                });
                this.f3337a.start();
            } else if (this.f3338d.indexOf("&") == this.f3338d.length() - 1) {
                TtsManager.u(strArrSplit[0], TtsGrade.SpecialVoice, new a(k2ExamLogic));
            } else {
                TtsManager.u(strArrSplit[0], TtsGrade.SpecialVoice, new b(k2ExamLogic, strArrSplit));
            }
        }
    }

    public void f() {
        MediaPlayer mediaPlayer = this.f3337a;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f3337a.release();
            this.f3337a = null;
        }
    }
}
