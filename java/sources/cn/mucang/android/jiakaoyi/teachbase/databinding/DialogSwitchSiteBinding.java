package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogSwitchSiteBinding implements a {
    public final TextView descTv;
    private final ConstraintLayout rootView;
    public final TextView secondTv;
    public final TextView switchTv;
    public final TextView titleTv;
    public final TextView warningTv;

    private DialogSwitchSiteBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.descTv = textView;
        this.secondTv = textView2;
        this.switchTv = textView3;
        this.titleTv = textView4;
        this.warningTv = textView5;
    }

    public static DialogSwitchSiteBinding bind(View view) {
        int i = R.id.descTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.secondTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.switchTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.titleTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.warningTv;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            return new DialogSwitchSiteBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogSwitchSiteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogSwitchSiteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_switch_site, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
