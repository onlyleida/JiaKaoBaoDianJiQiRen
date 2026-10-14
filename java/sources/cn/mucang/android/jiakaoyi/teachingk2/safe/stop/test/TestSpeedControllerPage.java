package cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityTestSpeedControlBinding;

/* JADX INFO: loaded from: classes4.dex */
public class TestSpeedControllerPage extends BaseViewBindingActivity<ActivityTestSpeedControlBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    private final cn.mucang.android.jiakaoyi.teachingk2.safe.d0.e b = new cn.mucang.android.jiakaoyi.teachingk2.safe.d0.e(1.5d);
    private boolean c = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k(View view) {
        boolean z = !this.c;
        this.c = z;
        ((ActivityTestSpeedControlBinding) this.f3424a).action.setText(z ? "结束" : "开始");
        if (this.c) {
            this.b.a((byte) 80);
        } else {
            this.b.a((byte) 0);
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "速度控制页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        ((ActivityTestSpeedControlBinding) this.f3424a).action.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.stop.test.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7820a.k(view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.b.a((byte) 0);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        ((ActivityTestSpeedControlBinding) this.f3424a).info.setText("速度:" + eVar.d().b + ",gps速度:" + eVar.d().c + "\n转速:" + eVar.d().f5265a);
        this.b.d(eVar);
    }
}
