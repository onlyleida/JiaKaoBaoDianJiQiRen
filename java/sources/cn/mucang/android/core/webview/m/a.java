package cn.mucang.android.core.webview.m;

import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.webkit.URLUtil;
import android.widget.TextView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.model.TitleBarModel;
import cn.mucang.android.core.webview.view.TitleBarView;
import cn.mucang.android.framework.webview.R;
import com.nirvana.tools.crash.CustomLogInfoBuilder;

/* JADX INFO: loaded from: classes.dex */
public class a extends cn.mucang.android.ui.framework.mvp.a<TitleBarView, TitleBarModel> implements View.OnClickListener {
    private c b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2803d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AlphaAnimation f2804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f2805f;

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.m.a$a, reason: collision with other inner class name */
    class C0088a implements TextView.OnEditorActionListener {
        C0088a() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            String string = ((TitleBarView) ((cn.mucang.android.ui.framework.mvp.a) a.this).f8977a).getUrlContentEditText().getText().toString();
            if (n0.e(string)) {
                return true;
            }
            if (!a.this.s(i, keyEvent)) {
                return false;
            }
            if (!string.startsWith("file:///") && !URLUtil.isNetworkUrl(string)) {
                string = "http://" + string;
            }
            if (a.this.f2805f != null) {
                a.this.f2805f.a(string);
            }
            a.this.r();
            a.this.q();
            return false;
        }
    }

    public interface b {
        void a(String str);
    }

    public interface c {
        void a();

        void b();

        void c();
    }

    public a(TitleBarView titleBarView) {
        super(titleBarView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        try {
            ((InputMethodManager) ((TitleBarView) this.f8977a).getContext().getSystemService("input_method")).hideSoftInputFromWindow(((TitleBarView) this.f8977a).getWindowToken(), 2);
        } catch (Exception e2) {
            t.a(CustomLogInfoBuilder.LOG_TYPE, e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        ((TitleBarView) this.f8977a).getUrlEditorView().setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s(int i, KeyEvent keyEvent) {
        return i == 2 || (keyEvent != null && 66 == keyEvent.getKeyCode() && keyEvent.getAction() == 0);
    }

    private void w() {
        ((TitleBarView) this.f8977a).getUrlEditorView().setVisibility(0);
        ((TitleBarView) this.f8977a).getUrlContentEditText().setSelection(((TitleBarView) this.f8977a).getUrlContentEditText().length());
    }

    @Override // cn.mucang.android.ui.framework.mvp.a
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public void a(TitleBarModel titleBarModel) {
        this.f2804e = (AlphaAnimation) AnimationUtils.loadAnimation(((TitleBarView) this.f8977a).getContext(), R.anim.core__webview_progress_dismiss);
        ((TitleBarView) this.f8977a).getBtnBrowserOption().setOnClickListener(this);
        ((TitleBarView) this.f8977a).getBtnBrowserBack().setOnClickListener(this);
        ((TitleBarView) this.f8977a).getBtnBrowserClose().setOnClickListener(this);
        ((TitleBarView) this.f8977a).getDelContent().setOnClickListener(this);
        ((TitleBarView) this.f8977a).getBtnCancel().setOnClickListener(this);
        if (titleBarModel == null) {
            return;
        }
        this.c = titleBarModel.isShowProgressBar();
        if (titleBarModel.getTitle() != null) {
            ((TitleBarView) this.f8977a).getTitleTextView().setText(titleBarModel.getTitle());
        }
        if (!titleBarModel.isHideRightButton()) {
            ((TitleBarView) this.f8977a).getBtnBrowserOption().setVisibility(0);
        }
        if (!titleBarModel.isShowBackButton()) {
            ((TitleBarView) this.f8977a).getBtnBrowserBack().setVisibility(4);
        }
        boolean zIsUrlEditable = titleBarModel.isUrlEditable();
        this.f2803d = zIsUrlEditable;
        if (zIsUrlEditable) {
            ((TitleBarView) this.f8977a).getUrlContentEditText().setText(titleBarModel.getUrl());
            ((TitleBarView) this.f8977a).getTitleTextView().setOnClickListener(this);
            ((TitleBarView) this.f8977a).getUrlContentEditText().setOnEditorActionListener(new C0088a());
        }
    }

    public void n() {
        ((TitleBarView) this.f8977a).getBtnBrowserClose().setVisibility(4);
    }

    public void o(boolean z) {
        if (z) {
            ((TitleBarView) this.f8977a).getBtnBrowserOption().setVisibility(0);
        } else {
            ((TitleBarView) this.f8977a).getBtnBrowserOption().setVisibility(4);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == ((TitleBarView) this.f8977a).getDelContent()) {
            ((TitleBarView) this.f8977a).getUrlContentEditText().setText("");
            return;
        }
        if (view == ((TitleBarView) this.f8977a).getTitleTextView()) {
            w();
            return;
        }
        if (view == ((TitleBarView) this.f8977a).getBtnCancel()) {
            r();
            return;
        }
        if (this.b != null) {
            if (view == ((TitleBarView) this.f8977a).getBtnBrowserBack()) {
                this.b.a();
            } else if (view == ((TitleBarView) this.f8977a).getBtnBrowserClose()) {
                this.b.b();
            } else if (view == ((TitleBarView) this.f8977a).getBtnBrowserOption()) {
                this.b.c();
            }
        }
    }

    public void p(boolean z) {
        if (z) {
            ((TitleBarView) this.f8977a).setVisibility(0);
        } else {
            ((TitleBarView) this.f8977a).setVisibility(8);
        }
    }

    public void t(b bVar) {
        this.f2805f = bVar;
    }

    public void u(c cVar) {
        this.b = cVar;
    }

    public void v() {
        ((TitleBarView) this.f8977a).getBtnBrowserClose().setVisibility(0);
    }

    public void x(int i) {
        if (this.c) {
            if (i == 100) {
                ((TitleBarView) this.f8977a).getProgressBar().setAnimation(this.f2804e);
                ((TitleBarView) this.f8977a).getProgressBar().setVisibility(4);
            } else {
                ((TitleBarView) this.f8977a).getProgressBar().setVisibility(0);
            }
            ((TitleBarView) this.f8977a).getProgressBar().setProgress(i);
        }
    }

    public void y(CharSequence charSequence) {
        ((TitleBarView) this.f8977a).getTitleTextView().setText(charSequence);
    }

    public void z(String str) {
        if (this.f2803d) {
            y(str);
            ((TitleBarView) this.f8977a).getUrlContentEditText().setText(str);
        }
    }
}
