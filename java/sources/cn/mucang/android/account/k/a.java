package cn.mucang.android.account.k;

import android.view.View;
import cn.mucang.android.account.api.data.CaptchaResponse;
import cn.mucang.android.account.data.CaptchaModel;
import cn.mucang.android.account.ui.CaptchaView;

/* JADX INFO: loaded from: classes.dex */
public class a extends cn.mucang.android.ui.framework.mvp.a<CaptchaView, CaptchaModel> {
    private CaptchaModel b;
    private String c;

    /* JADX INFO: renamed from: cn.mucang.android.account.k.a$a, reason: collision with other inner class name */
    class ViewOnClickListenerC0058a implements View.OnClickListener {
        ViewOnClickListenerC0058a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.u();
        }
    }

    private class b implements cn.mucang.android.core.api.c.a<CaptchaResponse> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f2221a;

        public b(String str) {
            this.f2221a = str;
        }

        @Override // cn.mucang.android.core.api.c.a
        public void a() {
            ((CaptchaView) ((cn.mucang.android.ui.framework.mvp.a) a.this).f8977a).getProgress().setVisibility(0);
            ((CaptchaView) ((cn.mucang.android.ui.framework.mvp.a) a.this).f8977a).getError().setVisibility(4);
            ((CaptchaView) ((cn.mucang.android.ui.framework.mvp.a) a.this).f8977a).getCaptcha().setVisibility(4);
            ((CaptchaView) ((cn.mucang.android.ui.framework.mvp.a) a.this).f8977a).getRefresh().setEnabled(false);
        }

        @Override // cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            ((CaptchaView) ((cn.mucang.android.ui.framework.mvp.a) a.this).f8977a).getError().setVisibility(0);
        }

        @Override // cn.mucang.android.core.api.c.a
        public void d() {
            ((CaptchaView) ((cn.mucang.android.ui.framework.mvp.a) a.this).f8977a).getProgress().setVisibility(4);
            ((CaptchaView) ((cn.mucang.android.ui.framework.mvp.a) a.this).f8977a).getRefresh().setEnabled(true);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(CaptchaResponse captchaResponse) {
            ((CaptchaView) ((cn.mucang.android.ui.framework.mvp.a) a.this).f8977a).getCaptcha().setVisibility(0);
            a.this.c = captchaResponse.getCaptchaId();
            f.a.a.b.a.a.i(((CaptchaView) ((cn.mucang.android.ui.framework.mvp.a) a.this).f8977a).getCaptcha(), captchaResponse.getCaptchaUrl(), 0);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public CaptchaResponse request() throws Exception {
            return (CaptchaResponse) new cn.mucang.android.account.g.a().b(this.f2221a).getData(CaptchaResponse.class);
        }
    }

    public a(CaptchaView captchaView) {
        super(captchaView);
    }

    @Override // cn.mucang.android.ui.framework.mvp.a
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void a(CaptchaModel captchaModel) {
        if (captchaModel == null) {
            return;
        }
        this.b = captchaModel;
        u();
        ((CaptchaView) this.f8977a).getRefresh().setOnClickListener(new ViewOnClickListenerC0058a());
    }

    public String s() {
        return ((CaptchaView) this.f8977a).getCode().getText().toString();
    }

    public String t() {
        return this.c;
    }

    public void u() {
        cn.mucang.android.core.api.c.b.b(new b(this.b.requestUrl));
    }
}
