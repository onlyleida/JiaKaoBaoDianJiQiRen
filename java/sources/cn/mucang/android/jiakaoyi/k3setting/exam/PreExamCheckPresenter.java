package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3setting.R;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class PreExamCheckPresenter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f4226a;
    private final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private State f4227d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Dialog f4230g;
    private final List<DialogState> i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Object, Boolean> f4228e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f4229f = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private DialogState f4231h = null;
    private final Runnable k = new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.s0
        @Override // java.lang.Runnable
        public final void run() {
            this.f4323a.r();
        }
    };
    private final Handler j = new Handler();

    public enum DialogState {
        Motor,
        FingerPrint,
        CloseLight
    }

    public enum State {
        Pause,
        ExamIng,
        Stop,
        None
    }

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = Boolean.FALSE;
            if (PreExamCheckPresenter.this.f4227d != State.ExamIng) {
                PreExamCheckPresenter.this.b.callback(bool2);
                return;
            }
            List list = PreExamCheckPresenter.this.i;
            DialogState dialogState = DialogState.Motor;
            if (list.contains(dialogState) && eVar.d().f()) {
                PreExamCheckPresenter.this.f4228e.put(dialogState, bool);
                if (PreExamCheckPresenter.this.f4231h == dialogState) {
                    PreExamCheckPresenter.this.f4231h = null;
                    PreExamCheckPresenter.this.r();
                }
            }
            List list2 = PreExamCheckPresenter.this.i;
            DialogState dialogState2 = DialogState.FingerPrint;
            if (list2.contains(dialogState2) && eVar.d().s) {
                PreExamCheckPresenter.this.f4228e.put(dialogState2, bool);
                if (PreExamCheckPresenter.this.f4231h == dialogState2) {
                    PreExamCheckPresenter.this.f4231h = null;
                    PreExamCheckPresenter.this.r();
                }
            }
            List list3 = PreExamCheckPresenter.this.i;
            DialogState dialogState3 = DialogState.CloseLight;
            if (list3.contains(dialogState3) && cn.mucang.android.jiakaoyi.signal.utils.h.a(eVar.d().x)) {
                PreExamCheckPresenter.this.f4228e.put(dialogState3, bool);
                if (PreExamCheckPresenter.this.f4231h == dialogState3) {
                    PreExamCheckPresenter.this.f4231h = null;
                    PreExamCheckPresenter.this.r();
                }
            }
            if (PreExamCheckPresenter.this.f4231h != null) {
                PreExamCheckPresenter.this.b.callback(bool2);
                return;
            }
            if (PreExamCheckPresenter.this.i.contains(dialogState) && !PreExamCheckPresenter.this.s(dialogState) && !eVar.d().f()) {
                PreExamCheckPresenter.this.q();
                PreExamCheckPresenter.this.b.callback(bool2);
                return;
            }
            if (PreExamCheckPresenter.this.i.contains(dialogState2) && !PreExamCheckPresenter.this.s(dialogState2) && !eVar.d().s) {
                PreExamCheckPresenter.this.o();
                PreExamCheckPresenter.this.b.callback(bool2);
            } else if (PreExamCheckPresenter.this.i.contains(dialogState3) && !PreExamCheckPresenter.this.s(dialogState3) && !cn.mucang.android.jiakaoyi.signal.utils.h.a(eVar.d().x)) {
                PreExamCheckPresenter.this.p();
                PreExamCheckPresenter.this.b.callback(bool2);
            } else {
                PreExamCheckPresenter.this.H();
                PreExamCheckPresenter.this.r();
                PreExamCheckPresenter.this.b.callback(bool);
            }
        }
    }

    class b extends SimpleTtsListener {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            PreExamCheckPresenter.this.j.postDelayed(PreExamCheckPresenter.this.k, 6000L);
        }
    }

    public PreExamCheckPresenter(Activity activity, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar, List<DialogState> list, String str) {
        this.f4226a = activity;
        this.b = bVar;
        this.i = list;
        this.c = str;
        G();
        this.f4227d = State.ExamIng;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void B(DialogInterface dialogInterface) {
        Map<Object, Boolean> map = this.f4228e;
        DialogState dialogState = DialogState.CloseLight;
        Boolean bool = map.get(dialogState);
        if (this.f4227d == State.ExamIng && bool == null) {
            this.b.callback(bool);
            this.f4228e.put(dialogState, Boolean.TRUE);
            H();
        }
        this.f4231h = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void D(View view) {
        this.f4228e.put(DialogState.Motor, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void F(DialogInterface dialogInterface) {
        this.f4231h = null;
        TtsManager.H();
        this.f4228e.put(DialogState.Motor, Boolean.TRUE);
    }

    private void G() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f4229f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f4229f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        Activity activity = this.f4226a;
        if (activity == null || activity.isDestroyed()) {
            return;
        }
        r();
        this.f4231h = DialogState.FingerPrint;
        int i = R.string.k3setting_fingerprint_start_exam;
        TtsManager.r(cn.mucang.android.jiakaoyi.framework.utils.k0.a(i), TtsGrade.ExamTip);
        Dialog dialogA = JCommonDialog.a(this.f4226a, cn.mucang.android.jiakaoyi.framework.utils.k0.a(i), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_btn_confirm), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4319a.v(view);
            }
        });
        this.f4230g = dialogA;
        dialogA.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.r0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f4321a.x(dialogInterface);
            }
        });
        this.f4230g.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        Activity activity = this.f4226a;
        if (activity == null || activity.isDestroyed()) {
            return;
        }
        r();
        this.f4231h = DialogState.CloseLight;
        int i = R.string.k3setting_exam_before_close_lights;
        TtsManager.u(cn.mucang.android.jiakaoyi.framework.utils.k0.a(i), TtsGrade.SpecialVoice, new b());
        Dialog dialogA = JCommonDialog.a(this.f4226a, cn.mucang.android.jiakaoyi.framework.utils.k0.a(i), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_continue_exam), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4329a.z(view);
            }
        });
        this.f4230g = dialogA;
        dialogA.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.w0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f4331a.B(dialogInterface);
            }
        });
        this.f4230g.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        Activity activity = this.f4226a;
        if (activity == null || activity.isDestroyed()) {
            return;
        }
        r();
        this.f4231h = DialogState.Motor;
        Dialog dialogA = JCommonDialog.a(this.f4226a, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_open_engine), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_continue_exam), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4327a.D(view);
            }
        });
        this.f4230g = dialogA;
        dialogA.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.t0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f4325a.F(dialogInterface);
            }
        });
        this.f4230g.show();
        TtsManager.r(this.c, TtsGrade.ExamTip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        Dialog dialog = this.f4230g;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.f4230g.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s(Object obj) {
        Boolean bool = this.f4228e.get(obj);
        return bool != null && bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(View view) {
        this.f4228e.put(DialogState.FingerPrint, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x(DialogInterface dialogInterface) {
        this.f4231h = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(View view) {
        this.f4228e.put(DialogState.CloseLight, Boolean.TRUE);
    }
}
