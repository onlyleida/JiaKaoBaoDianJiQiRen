package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class K3MapListItemBinding implements a {
    public final TextView cityTv;
    public final TextView deleteTv;
    public final TextView funcTv;
    public final TextView mapEditTv;
    public final TextView migrateTv;
    public final CheckBox officialTv;
    public final CheckBox openTv;
    public final TextView previewTv;
    private final ConstraintLayout rootView;
    public final TextView tvExamSiteName;
    public final TextView tvRouteName;

    private K3MapListItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, CheckBox checkBox, CheckBox checkBox2, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.cityTv = textView;
        this.deleteTv = textView2;
        this.funcTv = textView3;
        this.mapEditTv = textView4;
        this.migrateTv = textView5;
        this.officialTv = checkBox;
        this.openTv = checkBox2;
        this.previewTv = textView6;
        this.tvExamSiteName = textView7;
        this.tvRouteName = textView8;
    }

    public static K3MapListItemBinding bind(View view) {
        int i = R.id.cityTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.deleteTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.funcTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.mapEditTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.migrateTv;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            i = R.id.officialTv;
                            CheckBox checkBox = (CheckBox) view.findViewById(i);
                            if (checkBox != null) {
                                i = R.id.openTv;
                                CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                                if (checkBox2 != null) {
                                    i = R.id.previewTv;
                                    TextView textView6 = (TextView) view.findViewById(i);
                                    if (textView6 != null) {
                                        i = R.id.tvExamSiteName;
                                        TextView textView7 = (TextView) view.findViewById(i);
                                        if (textView7 != null) {
                                            i = R.id.tvRouteName;
                                            TextView textView8 = (TextView) view.findViewById(i);
                                            if (textView8 != null) {
                                                return new K3MapListItemBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5, checkBox, checkBox2, textView6, textView7, textView8);
                                            }
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

    public static K3MapListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static K3MapListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.k3_map_list_item, viewGroup, false);
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
