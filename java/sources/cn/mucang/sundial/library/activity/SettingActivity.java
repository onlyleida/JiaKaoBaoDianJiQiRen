package cn.mucang.sundial.library.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.lifecycle.a0;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.RegisterResponseEvent;
import cn.mucang.sundial.android.eventbus.event.UnRegisterResponseEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtActivitySettingBinding;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.ToastUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\u0004R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcn/mucang/sundial/library/activity/SettingActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Lkotlin/v;", "updateView", "()V", "initData", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "finish", "Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;", "binding", "Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class SettingActivity extends BaseActivity {
    private TtActivitySettingBinding binding;

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateView() {
        TtActivitySettingBinding ttActivitySettingBinding = this.binding;
        if (ttActivitySettingBinding == null) {
            r.u("binding");
            throw null;
        }
        TextView terminalRegisterStatus = ttActivitySettingBinding.terminalRegisterStatus;
        r.d(terminalRegisterStatus, "terminalRegisterStatus");
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        terminalRegisterStatus.setText(sundialManager.isRegister() ? "已注册" : "未注册");
        TextView terminalRegisterStatus2 = ttActivitySettingBinding.terminalRegisterStatus;
        r.d(terminalRegisterStatus2, "terminalRegisterStatus");
        SundialLog.normal(terminalRegisterStatus2.getText());
    }

    @Override // android.app.Activity
    public void finish() {
        TimeoutManager.getInstance().unregisterTimeoutCallback(3, false);
        super.finish();
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public void initData() {
        super.initData();
        LiveBus.Companion companion = LiveBus.INSTANCE;
        companion.with(RegisterResponseEvent.class).q(this, new a0<RegisterResponseEvent>() { // from class: cn.mucang.sundial.library.activity.SettingActivity.initData.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(RegisterResponseEvent registerResponseEvent) {
                SettingActivity.this.updateView();
            }
        });
        companion.with(UnRegisterResponseEvent.class).q(this, new a0<UnRegisterResponseEvent>() { // from class: cn.mucang.sundial.library.activity.SettingActivity.initData.2
            @Override // androidx.lifecycle.a0
            public final void onChanged(UnRegisterResponseEvent unRegisterResponseEvent) {
                String string = SettingActivity.this.getString(R.string.tt_voice_client_logout);
                r.d(string, "getString(R.string.tt_voice_client_logout)");
                Tts.speak$default(string, null, 2, null);
                SettingActivity.this.updateView();
                SettingActivity.this.hideLoadingDialog();
            }
        });
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        TtActivitySettingBinding ttActivitySettingBindingInflate = TtActivitySettingBinding.inflate(LayoutInflater.from(this));
        r.d(ttActivitySettingBindingInflate, "TtActivitySettingBinding…ayoutInflater.from(this))");
        ttActivitySettingBindingInflate.terminalRegister.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.SettingActivity$onCreateView$$inlined$apply$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                if (!sundialManager.isRegister()) {
                    this.this$0.startActivity(new Intent(this.this$0, (Class<?>) RegisterActivity.class));
                } else {
                    SundialLog.normal("请先注销终端");
                    ToastUtil.INSTANCE.showToastOnce("请先注销终端");
                }
            }
        });
        ttActivitySettingBindingInflate.terminalUnregister.setOnClickListener(new SettingActivity$onCreateView$$inlined$apply$lambda$2(this));
        ttActivitySettingBindingInflate.back.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.SettingActivity$onCreateView$$inlined$apply$lambda$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.finish();
            }
        });
        v vVar = v.f15822a;
        this.binding = ttActivitySettingBindingInflate;
        updateView();
        TtActivitySettingBinding ttActivitySettingBinding = this.binding;
        if (ttActivitySettingBinding == null) {
            r.u("binding");
            throw null;
        }
        FrameLayout root = ttActivitySettingBinding.getRoot();
        r.d(root, "binding.root");
        return root;
    }
}
