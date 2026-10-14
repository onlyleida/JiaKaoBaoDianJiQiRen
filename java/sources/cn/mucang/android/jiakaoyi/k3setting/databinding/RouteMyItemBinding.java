package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteMyItemBinding implements a {
    public final TextView deleteTv;
    public final TextView descTv;
    public final TextView funcTv;
    public final TextView nameTv;
    public final CheckBox officialRouteTv;
    public final CheckBox openTv;
    public final TextView previewTv;
    public final CheckBox proxyRouteTv;
    private final ConstraintLayout rootView;
    public final TextView shareTv;

    private RouteMyItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, CheckBox checkBox, CheckBox checkBox2, TextView textView5, CheckBox checkBox3, TextView textView6) {
        this.rootView = constraintLayout;
        this.deleteTv = textView;
        this.descTv = textView2;
        this.funcTv = textView3;
        this.nameTv = textView4;
        this.officialRouteTv = checkBox;
        this.openTv = checkBox2;
        this.previewTv = textView5;
        this.proxyRouteTv = checkBox3;
        this.shareTv = textView6;
    }

    public static RouteMyItemBinding bind(View view) {
        int i = R.id.deleteTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.funcTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.nameTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.officialRouteTv;
                        CheckBox checkBox = (CheckBox) view.findViewById(i);
                        if (checkBox != null) {
                            i = R.id.openTv;
                            CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                            if (checkBox2 != null) {
                                i = R.id.previewTv;
                                TextView textView5 = (TextView) view.findViewById(i);
                                if (textView5 != null) {
                                    i = R.id.proxyRouteTv;
                                    CheckBox checkBox3 = (CheckBox) view.findViewById(i);
                                    if (checkBox3 != null) {
                                        i = R.id.shareTv;
                                        TextView textView6 = (TextView) view.findViewById(i);
                                        if (textView6 != null) {
                                            return new RouteMyItemBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, checkBox, checkBox2, textView5, checkBox3, textView6);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteMyItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteMyItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_my_item, viewGroup, false);
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
