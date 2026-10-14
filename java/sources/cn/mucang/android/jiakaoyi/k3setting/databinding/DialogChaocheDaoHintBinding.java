package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogChaocheDaoHintBinding implements a {
    public final TextView content;
    private final FrameLayout rootView;
    public final TextView title;
    public final TextView tvTime;
    public final AppCompatTextView txtBuzai;
    public final AppCompatTextView txtZai;

    private DialogChaocheDaoHintBinding(FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = frameLayout;
        this.content = textView;
        this.title = textView2;
        this.tvTime = textView3;
        this.txtBuzai = appCompatTextView;
        this.txtZai = appCompatTextView2;
    }

    public static DialogChaocheDaoHintBinding bind(View view) {
        int i = R.id.content;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.title;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.tv_time;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.txt_buzai;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(i);
                    if (appCompatTextView != null) {
                        i = R.id.txt_zai;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(i);
                        if (appCompatTextView2 != null) {
                            return new DialogChaocheDaoHintBinding((FrameLayout) view, textView, textView2, textView3, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogChaocheDaoHintBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogChaocheDaoHintBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_chaoche_dao_hint, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
