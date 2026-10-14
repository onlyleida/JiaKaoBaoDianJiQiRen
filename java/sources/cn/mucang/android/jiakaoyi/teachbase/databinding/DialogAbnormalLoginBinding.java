package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogAbnormalLoginBinding implements a {
    public final LayoutAbnormalCardBinding cardLayout;
    public final ImageView ivClose;
    private final RelativeLayout rootView;
    public final LayoutAbnormalScanBinding scanLayout;
    public final TextView textView4;
    public final TextView textview2;

    private DialogAbnormalLoginBinding(RelativeLayout relativeLayout, LayoutAbnormalCardBinding layoutAbnormalCardBinding, ImageView imageView, LayoutAbnormalScanBinding layoutAbnormalScanBinding, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.cardLayout = layoutAbnormalCardBinding;
        this.ivClose = imageView;
        this.scanLayout = layoutAbnormalScanBinding;
        this.textView4 = textView;
        this.textview2 = textView2;
    }

    public static DialogAbnormalLoginBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.cardLayout;
        View viewFindViewById2 = view.findViewById(i);
        if (viewFindViewById2 != null) {
            LayoutAbnormalCardBinding layoutAbnormalCardBindingBind = LayoutAbnormalCardBinding.bind(viewFindViewById2);
            i = R.id.ivClose;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.scanLayout))) != null) {
                LayoutAbnormalScanBinding layoutAbnormalScanBindingBind = LayoutAbnormalScanBinding.bind(viewFindViewById);
                i = R.id.textView4;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.textview2;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        return new DialogAbnormalLoginBinding((RelativeLayout) view, layoutAbnormalCardBindingBind, imageView, layoutAbnormalScanBindingBind, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogAbnormalLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogAbnormalLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_abnormal_login, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
