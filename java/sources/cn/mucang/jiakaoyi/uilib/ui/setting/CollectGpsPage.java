package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.os.Bundle;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import com.mucang.android.jiakaoyi.uilib.databinding.SettingCollectGpsActivityBinding;

/* JADX INFO: loaded from: classes5.dex */
public class CollectGpsPage extends BaseViewBindingActivity<SettingCollectGpsActivityBinding> {
    private final cn.mucang.android.jiakaoyi.signal.c.f.a b = new a();
    private final b1 c = new b1();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9883d;

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            if (eVar.d().h() && eVar.getCurrentPosition().c() && CollectGpsPage.this.f9883d) {
                cn.mucang.android.jiakaoyi.signal.center.model.b currentPosition = eVar.getCurrentPosition();
                CollectGpsPage.this.c.f(currentPosition.f5281g.getLatitude(), currentPosition.f5281g.getLongitude(), currentPosition.f5281g.getAltitude());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(View view) {
        boolean z = !this.f9883d;
        this.f9883d = z;
        if (z) {
            ((SettingCollectGpsActivityBinding) this.f3424a).action.setText("结束采集");
        } else {
            ((SettingCollectGpsActivityBinding) this.f3424a).action.setText("开始采集");
            this.c.g();
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "Gps采集";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity, cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((SettingCollectGpsActivityBinding) this.f3424a).back.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10173a.m(view);
            }
        });
        ((SettingCollectGpsActivityBinding) this.f3424a).action.setText("开始采集");
        this.f9883d = false;
        ((SettingCollectGpsActivityBinding) this.f3424a).action.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10193a.o(view);
            }
        });
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.b);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.c.g();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.b);
    }
}
