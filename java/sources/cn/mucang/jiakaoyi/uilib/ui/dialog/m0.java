package cn.mucang.jiakaoyi.uilib.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.view.View;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.framework.base.dialog.ExamResultVoiceDialog;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ExamResultVoiceDialog f9835a;
    public boolean b;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(cn.mucang.android.jiakaoyi.framework.tts.voice.o oVar) {
        if (oVar == null || cn.mucang.android.core.utils.n0.e(oVar.c)) {
            this.f9835a.dismiss();
        } else {
            this.f9835a.f(oVar.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void e(cn.mucang.android.jiakaoyi.framework.h.b bVar, DialogInterface dialogInterface) {
        this.b = false;
        TtsManager.H();
        TtsManager.q(null);
        if (bVar != null) {
            bVar.callback(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(final cn.mucang.android.jiakaoyi.framework.tts.voice.o oVar) {
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.q
            @Override // java.lang.Runnable
            public final void run() {
                this.f9851a.b(oVar);
            }
        });
    }

    private Dialog i(Activity activity, List<cn.mucang.android.jiakaoyi.engine.model.a> list, final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar, String str, int i, boolean z) {
        ExamResultVoiceDialog examResultVoiceDialog = new ExamResultVoiceDialog(activity, new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TtsManager.H();
            }
        }, str, i, z);
        this.f9835a = examResultVoiceDialog;
        examResultVoiceDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.o
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f9838a.e(bVar, dialogInterface);
            }
        });
        TtsManager.q(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.n
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f9836a.g((cn.mucang.android.jiakaoyi.framework.tts.voice.o) obj);
            }
        });
        Iterator<cn.mucang.android.jiakaoyi.engine.model.a> it = list.iterator();
        while (it.hasNext()) {
            Deduct deduct = it.next().f3102a;
            TtsManager.s(deduct.desc, TtsGrade.ExamDeduct, deduct.code);
        }
        this.f9835a.show();
        return this.f9835a;
    }

    public Dialog h(Activity activity, List<cn.mucang.android.jiakaoyi.engine.model.a> list, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar, int i, boolean z) {
        if (activity == null || activity.isDestroyed()) {
            return null;
        }
        String strF = TtsManager.f();
        if (TtsManager.j() || !cn.mucang.android.core.utils.n0.e(strF)) {
            return i(activity, list, bVar, strF, i, z);
        }
        return null;
    }
}
