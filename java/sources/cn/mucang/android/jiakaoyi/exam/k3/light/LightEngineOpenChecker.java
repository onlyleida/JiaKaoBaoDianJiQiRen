package cn.mucang.android.jiakaoyi.exam.k3.light;

import android.os.SystemClock;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.exam.R;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LightEngineOpenChecker {
    private final K3DengGuangStepConfig config;
    private final Map<Integer, Deduct> deducts;
    private final LightExam.LightExamCallback examCallback;
    private long engineDialogStartTime = 0;
    private JCommonDialog engineHintDialog = null;
    private boolean canPlayOpenEngineVoice = true;
    private long playOpenEngineVoiceEndTime = 0;
    private boolean needCheckOpenEngine = true;
    private boolean isDeduct102152 = false;
    private boolean isDeduct102153 = false;
    private boolean isShowEngineHintDialog = false;

    public LightEngineOpenChecker(K3DengGuangStepConfig k3DengGuangStepConfig, Map<Integer, Deduct> map, LightExam.LightExamCallback lightExamCallback) {
        this.config = k3DengGuangStepConfig;
        this.deducts = map;
        this.examCallback = lightExamCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(final cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        JCommonDialog jCommonDialog = new JCommonDialog(MucangConfig.i(), new JCommonDialog.DialogParams(k0.a(R.string.exam_open_engine), "", null, null, k0.a(R.string.exam_continue_exam), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.light.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f3229a.d(eVar, view);
            }
        }, false));
        this.engineHintDialog = jCommonDialog;
        jCommonDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(cn.mucang.android.jiakaoyi.signal.c.e eVar, View view) {
        this.needCheckOpenEngine = false;
        check102152Deduct(eVar);
    }

    private void check102152Deduct(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (this.isDeduct102152 || eVar.d().f()) {
            return;
        }
        this.isDeduct102152 = true;
        Deduct deduct = this.deducts.get(102152);
        if (deduct == null || !deduct.needAutoCheck()) {
            return;
        }
        this.examCallback.onFailure(null, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void check102153Deduct(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (this.isDeduct102153 || !((Boolean) this.config.p202132.value).booleanValue() || eVar.d().f()) {
            return;
        }
        this.isDeduct102153 = true;
        Deduct deduct = this.deducts.get(102153);
        if (deduct == null || !deduct.needAutoCheck()) {
            return;
        }
        this.examCallback.onFailure(null, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkOpenEngine(final cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (((Boolean) this.config.p202128.value).booleanValue()) {
            if (!eVar.d().f() && this.needCheckOpenEngine) {
                if (!this.isShowEngineHintDialog) {
                    this.isShowEngineHintDialog = true;
                    this.engineDialogStartTime = SystemClock.elapsedRealtime();
                    u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.light.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f3228a.b(eVar);
                        }
                    });
                }
                playOpenEngineVoice();
            }
            if (eVar.d().f() || (this.engineDialogStartTime > 0 && SystemClock.elapsedRealtime() - this.engineDialogStartTime > ((Integer) this.config.p202131.value).intValue() * 1000)) {
                this.needCheckOpenEngine = false;
                JCommonDialog jCommonDialog = this.engineHintDialog;
                if (jCommonDialog == null || !jCommonDialog.isShowing()) {
                    return;
                }
                TtsManager.H();
                check102152Deduct(eVar);
                this.engineHintDialog.dismiss();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void playOpenEngineVoice() {
        if (!this.canPlayOpenEngineVoice || SystemClock.elapsedRealtime() - this.playOpenEngineVoiceEndTime <= ((Integer) this.config.p202130.value).intValue() * 1000) {
            return;
        }
        this.canPlayOpenEngineVoice = false;
        String str = (String) this.config.p202133.value;
        TtsGrade ttsGrade = TtsGrade.ExamTip;
        SimpleTtsListener simpleTtsListener = new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.light.LightEngineOpenChecker.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakEnd() {
                super.onSpeakEnd();
                LightEngineOpenChecker lightEngineOpenChecker = LightEngineOpenChecker.this;
                lightEngineOpenChecker.canPlayOpenEngineVoice = ((Boolean) lightEngineOpenChecker.config.p202129.value).booleanValue();
                LightEngineOpenChecker.this.playOpenEngineVoiceEndTime = SystemClock.elapsedRealtime();
            }
        };
        int i = this.config.p202133.ruleId;
        TtsManager.w(str, ttsGrade, simpleTtsListener, i, l.d(i));
    }

    public boolean check(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        checkOpenEngine(eVar);
        if (SystemClock.elapsedRealtime() - this.engineDialogStartTime < 500) {
            return false;
        }
        JCommonDialog jCommonDialog = this.engineHintDialog;
        if (jCommonDialog != null && jCommonDialog.isShowing()) {
            return false;
        }
        check102153Deduct(eVar);
        return true;
    }
}
