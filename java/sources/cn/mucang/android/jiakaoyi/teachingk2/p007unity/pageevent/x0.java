package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.ai.PartIdentityModule;
import cn.mucang.android.jiakaoyi.signal.ai.f;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.c.f.a;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.PartIdentityModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
public class x0 implements a0.a, a {
    private CommonAlertDialog c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PartIdentityModel f8671a = new PartIdentityModel();
    private PartIdentityModule b = PartIdentityModule.Other;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f8672d = 0;

    static /* synthetic */ v a() {
        m.h().Q(Cmd.AiSetMode, new byte[]{0});
        return null;
    }

    static /* synthetic */ v b() {
        u.h(k0.a(R.string.teachbase_start_recognition_mode_timeout));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ v d(f fVar) {
        if (!fVar.f5428a) {
            u.h(k0.a(R.string.teachbase_start_recognition_mode_fail));
            return null;
        }
        u.h(k0.a(R.string.teachbase_start_recognition_mode_success));
        d.m.b(this);
        return null;
    }

    static /* synthetic */ v e() {
        m.h().Q(Cmd.AiSetMode, new byte[]{2});
        return null;
    }

    static /* synthetic */ v f() {
        u.h(k0.a(R.string.teachbase_close_recognition_mode_timeout));
        return null;
    }

    static /* synthetic */ v h(f fVar) {
        if (fVar.f5428a) {
            u.h(k0.a(R.string.teachbase_close_recognition_mode_success));
            return null;
        }
        u.h(k0.a(R.string.teachbase_close_recognition_mode_fail));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k(DialogInterface dialogInterface) {
        this.c = null;
    }

    private void l(ComState comState) {
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isFinishing() || activityI.isDestroyed() || this.c != null) {
            return;
        }
        CommonAlertDialog.a aVar = new CommonAlertDialog.a(activityI);
        aVar.e(k0.a(R.string.teachbase_ai_channel_unavailable));
        aVar.d(String.format(k0.a(R.string.teachbase_ai_state), comState.desc));
        aVar.c(k0.a(R.string.teachbase_quit));
        aVar.b(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                cn.mucang.android.jiakaoyi.unity.c.d.b(70003);
            }
        });
        CommonAlertDialog commonAlertDialogA = aVar.a();
        this.c = commonAlertDialogA;
        commonAlertDialogA.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.p0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f8648a.k(dialogInterface);
            }
        });
        this.c.show();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        ComState comStateJ = m.h().j(ComName.AiNet);
        if (comStateJ != ComState.Valid) {
            l(comStateJ);
        } else {
            new MessageSender(f.class, 0, 1000L, new Function0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.l0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return x0.a();
                }
            }, new Function0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.q0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return x0.b();
                }
            }, new Function1() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.o0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f8646a.d((f) obj);
                }
            }).i();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public /* synthetic */ void n() {
        z.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        this.b = PartIdentityModule.Other;
        d.m.n(this);
        new MessageSender(f.class, 0, 1000L, new Function0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return x0.e();
            }
        }, new Function0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.m0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return x0.f();
            }
        }, new Function1() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return x0.h((f) obj);
            }
        }).i();
        CommonAlertDialog commonAlertDialog = this.c;
        if (commonAlertDialog != null) {
            commonAlertDialog.dismiss();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e eVar) {
        if (eVar.d().k()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f8672d > 10000) {
                this.f8672d = jCurrentTimeMillis;
                ComState comStateJ = m.h().j(ComName.AiNet);
                if (comStateJ != ComState.Valid) {
                    l(comStateJ);
                    return;
                }
            }
            PartIdentityModule partIdentityModuleE = eVar.a().e();
            if (partIdentityModuleE == PartIdentityModule.Other) {
                if (eVar.d().i > 5) {
                    partIdentityModuleE = PartIdentityModule.Throttle;
                }
                if (eVar.d().f5269g) {
                    partIdentityModuleE = PartIdentityModule.Brake;
                }
                if (eVar.d().f5267e) {
                    partIdentityModuleE = PartIdentityModule.Clutch;
                }
            }
            if (this.b != partIdentityModuleE) {
                this.f8671a.type = partIdentityModuleE.getType();
                this.f8671a.module = partIdentityModuleE.getModule();
                this.f8671a.voice = partIdentityModuleE.getVoice();
                cn.mucang.android.jiakaoyi.unity.c.d.e(this.f8671a);
            }
            this.b = partIdentityModuleE;
        }
    }
}
