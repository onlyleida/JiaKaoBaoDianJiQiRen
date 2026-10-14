package cn.mucang.sundial.library.activity;

import android.view.View;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.library.util.ToastUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroid/view/View;", "kotlin.jvm.PlatformType", "it", "Lkotlin/v;", "onClick", "(Landroid/view/View;)V", "cn/mucang/sundial/library/activity/SettingActivity$onCreateView$1$2", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class SettingActivity$onCreateView$$inlined$apply$lambda$2 implements View.OnClickListener {
    final /* synthetic */ SettingActivity this$0;

    SettingActivity$onCreateView$$inlined$apply$lambda$2(SettingActivity settingActivity) {
        this.this$0 = settingActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        if (sundialManager.isRegister()) {
            ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.activity.SettingActivity$onCreateView$$inlined$apply$lambda$2.1
                @Override // java.lang.Runnable
                public final void run() {
                    SettingActivity$onCreateView$$inlined$apply$lambda$2.this.this$0.showLoadingDialog("");
                    TimeoutManager.getInstance().registerTimeoutCallback(3, false, new TimeoutManager.ITimeout() { // from class: cn.mucang.sundial.library.activity.SettingActivity$onCreateView$.inlined.apply.lambda.2.1.1
                        @Override // cn.mucang.sundial.android.tcp.TimeoutManager.ITimeout
                        public final void onTimeout() {
                            SettingActivity$onCreateView$$inlined$apply$lambda$2.this.this$0.hideLoadingDialog();
                            SundialLog.normal("终端注销失败");
                            ToastUtil.INSTANCE.showToastOnce("终端注销失败");
                        }
                    });
                    if (SundialManager.getInstance().unregister()) {
                        return;
                    }
                    SettingActivity$onCreateView$$inlined$apply$lambda$2.this.this$0.hideLoadingDialog();
                    SundialLog.normal("终端注销失败");
                    ToastUtil.INSTANCE.showToastOnce("终端注销失败");
                }
            });
        } else {
            SundialLog.normal("当前已是注销状态");
            ToastUtil.INSTANCE.showToastOnce("当前已是注销状态");
        }
    }
}
