package cn.mucang.android.jiakaoyi.signal.k.callback;

import android.app.Activity;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes3.dex */
public class f implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ComStateListener f5791a = new a();
    private final Runnable b = new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.k.g0.c
        @Override // java.lang.Runnable
        public final void run() {
            this.f5790a.j();
        }
    };
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SingleFirmwareUpgradeCallback f5792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private UpgradeInfoModel f5793e;

    class a implements ComStateListener {
        a() {
        }

        static /* synthetic */ void b(Activity activity, View view) {
            activity.finish();
            System.exit(0);
        }

        @Override // cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener
        public void a(ComStateListener.State state, Throwable th) {
            if (state == ComStateListener.State.Valid) {
                cn.mucang.android.jiakaoyi.framework.log.f.f("重连成功,升级完成");
                m.h().N(f.this.f5791a);
                u.e(f.this.b);
                f.this.c = 0;
                if (f.this.f5792d != null) {
                    f.this.f5792d.d(f.this.f5793e, 1);
                    return;
                }
                return;
            }
            f.f(f.this);
            cn.mucang.android.jiakaoyi.framework.log.f.f("重连失败, 次数：" + f.this.c);
            if (f.this.c >= 10) {
                f.this.c = 0;
                m.h().N(f.this.f5791a);
                u.e(f.this.b);
                final Activity activityI = MucangConfig.i();
                new CommonAlertDialog(activityI, new CommonAlertDialog.DialogParams("主控升级后通信模块初始化失败", "请检查主控固件或者线路连接", "退出", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.signal.k.g0.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        f.a.b(activityI, view);
                    }
                }, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.signal.k.g0.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        activityI.finish();
                    }
                })).show();
            }
        }
    }

    static /* synthetic */ int f(f fVar) {
        int i = fVar.c;
        fVar.c = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        cn.mucang.android.jiakaoyi.framework.log.f.f("等待2秒后尝试重连");
        m.h().T(false);
        u.d(this.b, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.k.callback.e
    public void a(UpgradeInfoModel upgradeInfoModel, SingleFirmwareUpgradeCallback singleFirmwareUpgradeCallback) {
        this.f5792d = singleFirmwareUpgradeCallback;
        this.f5793e = upgradeInfoModel;
        if (upgradeInfoModel.isMainObd()) {
            m.h().M(ComName.MasterNet);
            m.h().a(this.f5791a);
            cn.mucang.android.jiakaoyi.framework.log.f.f("主控升级完成");
            u.d(this.b, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
    }
}
