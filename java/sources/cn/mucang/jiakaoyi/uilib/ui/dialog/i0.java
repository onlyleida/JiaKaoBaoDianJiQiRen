package cn.mucang.jiakaoyi.uilib.ui.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.mucang.android.jiakaoyi.uilib.R;
import f.a.a.a.p009n.dialog.SafeDialogFragment;

/* JADX INFO: loaded from: classes5.dex */
public abstract class i0 extends SafeDialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected TextView f9823a;
    protected View b;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(View view) {
        dismiss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().getWindow().getAttributes().windowAnimations = R.style.FragmentDialogAnimation;
        View viewInflate = layoutInflater.inflate(R.layout.base_dialog_fragment, viewGroup, false);
        ViewGroup viewGroup2 = (ViewGroup) viewInflate.findViewById(R.id.content_root);
        this.b = viewInflate.findViewById(R.id.divider);
        layoutInflater.inflate(v(), viewGroup2);
        TextView textView = (TextView) viewInflate.findViewById(R.id.rightTopAction);
        this.f9823a = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f9807a.s(view);
            }
        });
        viewInflate.findViewById(R.id.dialog_back).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f9809a.u(view);
            }
        });
        ((TextView) viewInflate.findViewById(R.id.fragment_title)).setText(w());
        return viewInflate;
    }

    protected abstract int v();

    protected abstract String w();
}
