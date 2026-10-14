package cn.mucang.android.account.h;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;
import cn.mucang.android.account.g.l;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.k;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.framework.account.R;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import f.a.a.a.p009n.dialog.SafeDialogFragment;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class d extends SafeDialogFragment implements TextWatcher, View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f2171a;
    private ImageView b;
    private ProgressBar c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f2172d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private EditText f2173e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f2174f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected PopupCaptchaResponse f2175g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected cn.mucang.android.account.ui.a f2176h;
    private b i;

    class a implements RequestListener {
        a() {
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            d.this.f2172d.setVisibility(0);
            d.this.c.setVisibility(8);
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onResourceReady(Object obj, Object obj2, Target target, DataSource dataSource, boolean z) {
            d.this.f2172d.setVisibility(8);
            d.this.c.setVisibility(8);
            return false;
        }
    }

    public interface b {
        void a(PopupCaptchaResponse popupCaptchaResponse, String str);
    }

    private static class c extends cn.mucang.android.core.api.c.d<Activity, String> {
        private l b;
        private PopupCaptchaResponse c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2178d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        d f2179e;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ApiException f2180a;

            a(ApiException apiException) {
                this.f2180a = apiException;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.f2179e.u(this.f2180a.getMessage());
            }
        }

        public c(d dVar, Activity activity, PopupCaptchaResponse popupCaptchaResponse, String str) {
            super(activity);
            this.b = new l();
            this.c = popupCaptchaResponse;
            this.f2178d = str;
            this.f2179e = dVar;
        }

        @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void a() {
            super.a();
            this.f2179e.w().b("正在验证...");
        }

        @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            this.f2179e.t();
            if (exc instanceof ApiException) {
                ApiException apiException = (ApiException) exc;
                if (apiException.getErrorCode() == 20011) {
                    u.c(new a(apiException));
                }
            }
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void b(String str) {
            this.f2179e.t();
            this.f2179e.dismiss();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public String request() throws Exception {
            return this.b.f(this.c, this.f2178d);
        }
    }

    public static d A(FragmentManager fragmentManager, PopupCaptchaResponse popupCaptchaResponse) {
        if (popupCaptchaResponse == null) {
            u.h("非法的验证码弹框请求");
            return null;
        }
        d dVar = new d();
        Bundle bundle = new Bundle();
        bundle.putSerializable("captcha_response", popupCaptchaResponse);
        dVar.setArguments(bundle);
        dVar.show(fragmentManager, (String) null);
        return dVar;
    }

    private void v() {
        String string = this.f2173e.getText().toString();
        if (n0.e(string)) {
            u.h("请输入验证码");
            return;
        }
        b bVar = this.i;
        if (bVar != null) {
            bVar.a(this.f2175g, string);
        } else {
            cn.mucang.android.core.api.c.b.b(x(string));
        }
    }

    private void y(Dialog dialog) {
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 1;
        attributes.width = o0.q(window.getWindowManager()) - s0.a(60.0f);
        window.setAttributes(attributes);
        window.getDecorView().setBackgroundColor(0);
        window.getDecorView().setPadding(0, 0, 0, 0);
    }

    private void z(View view) {
        this.f2171a = (TextView) view.findViewById(R.id.title);
        this.b = (ImageView) view.findViewById(R.id.captcha_view);
        this.c = (ProgressBar) view.findViewById(R.id.progress_view);
        this.f2172d = (TextView) view.findViewById(R.id.error_view);
        this.f2173e = (EditText) view.findViewById(R.id.captcha_input);
        this.f2174f = view.findViewById(R.id.captcha_clear);
        view.findViewById(R.id.btn_cancel).setOnClickListener(this);
        view.findViewById(R.id.btn_ok).setOnClickListener(this);
        view.findViewById(R.id.captcha_refresh).setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.f2174f.setOnClickListener(this);
        this.f2173e.addTextChangedListener(this);
        PopupCaptchaResponse popupCaptchaResponse = this.f2175g;
        if (popupCaptchaResponse == null) {
            dismiss();
            return;
        }
        if (n0.g(popupCaptchaResponse.getTitle())) {
            this.f2171a.setText(this.f2175g.getTitle());
        }
        u(null);
    }

    public d B(b bVar) {
        this.i = bVar;
        return this;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (n0.e(this.f2173e.getText().toString())) {
            this.f2174f.setVisibility(4);
        } else {
            this.f2174f.setVisibility(0);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btn_cancel) {
            dismiss();
            return;
        }
        if (id == R.id.btn_ok) {
            v();
            return;
        }
        if (id == R.id.captcha_refresh || id == R.id.captcha_view) {
            u(null);
        } else if (id == R.id.captcha_clear) {
            this.f2173e.setText("");
        }
    }

    @Override // androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f2175g = (PopupCaptchaResponse) arguments.getSerializable("captcha_response");
        }
        Dialog dialog = new Dialog(getContext(), R.style.Account__Dialog);
        View viewInflate = View.inflate(getContext(), R.layout.account__dialog_captcha, null);
        dialog.setContentView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        z(viewInflate);
        y(dialog);
        return dialog;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        k.b(this.f2176h);
        this.f2176h = null;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // f.a.a.a.p009n.dialog.SafeDialogFragment, androidx.fragment.app.c
    public void show(FragmentManager fragmentManager, String str) {
        try {
            super.show(fragmentManager, str);
        } catch (IllegalStateException unused) {
            Log.i("CaptchaDialog", "project in background");
        }
    }

    public void t() {
        if (this.f2176h == null) {
            return;
        }
        w().dismiss();
    }

    public void u(String str) {
        String str2;
        if (n0.g(str)) {
            this.f2171a.setText(str);
        }
        this.b.setImageResource(R.drawable.account__gray_bg);
        this.c.setVisibility(0);
        this.f2172d.setVisibility(8);
        String captchaUrl = this.f2175g.getCaptchaUrl();
        int iIndexOf = captchaUrl.indexOf("?");
        if (iIndexOf == -1) {
            str2 = captchaUrl + "?_s=" + UUID.randomUUID().toString().replace("-", "");
        } else if (iIndexOf == captchaUrl.length() - 1) {
            str2 = captchaUrl + "_s=" + UUID.randomUUID().toString().replace("-", "");
        } else {
            str2 = captchaUrl + "&_s=" + UUID.randomUUID().toString().replace("-", "");
        }
        f.a.a.b.a.a.j(this.b, str2, 0, new a());
        this.f2173e.setText("");
    }

    public cn.mucang.android.account.ui.a w() {
        if (this.f2176h == null) {
            this.f2176h = new cn.mucang.android.account.ui.a(MucangConfig.i());
        }
        return this.f2176h;
    }

    protected cn.mucang.android.core.api.c.a x(String str) {
        return new c(this, getActivity(), this.f2175g, str);
    }
}
