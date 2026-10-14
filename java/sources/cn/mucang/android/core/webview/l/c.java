package cn.mucang.android.core.webview.l;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import cn.mucang.android.framework.webview.R;
import f.a.a.a.p009n.dialog.SafeDialogFragment;

/* JADX INFO: loaded from: classes.dex */
public class c extends SafeDialogFragment implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Button f2801a;
    private FrameLayout b;
    private View c;

    private void s() {
        if (this.c == null) {
            return;
        }
        this.b.setVisibility(0);
        this.b.addView(this.c);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (getDialog() != null && getDialog().getWindow() != null) {
            getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        return layoutInflater.inflate(R.layout.core__webview_menu_bottom, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        r(view);
        u();
        s();
    }

    protected void r(View view) {
        this.b = (FrameLayout) view.findViewById(R.id.custom_container);
        this.f2801a = (Button) view.findViewById(R.id.share_cancel);
    }

    public void t(androidx.fragment.app.d dVar, View view) {
        this.c = view;
        setStyle(1, R.style.core__share_dialog);
        show(dVar.getSupportFragmentManager(), "BottomDialog");
    }

    protected void u() {
        this.f2801a.setOnClickListener(this);
        if (getView() != null) {
            getView().setOnClickListener(this);
        }
    }
}
