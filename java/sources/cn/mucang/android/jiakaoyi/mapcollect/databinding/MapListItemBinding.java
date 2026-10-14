package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class MapListItemBinding implements a {
    public final TextView copyTv;
    public final TextView deleteTv;
    public final TextView funcTv;
    public final TextView mapEditTv;
    public final TextView migrate;
    public final CheckBox openTv;
    public final TextView previewTv;
    private final ConstraintLayout rootView;
    public final TextView schoolTv;
    public final TextView siteTv;

    private MapListItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, CheckBox checkBox, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.copyTv = textView;
        this.deleteTv = textView2;
        this.funcTv = textView3;
        this.mapEditTv = textView4;
        this.migrate = textView5;
        this.openTv = checkBox;
        this.previewTv = textView6;
        this.schoolTv = textView7;
        this.siteTv = textView8;
    }

    public static MapListItemBinding bind(View view) {
        int i = R.id.copyTv;
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
                        i = R.id.migrate;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            i = R.id.openTv;
                            CheckBox checkBox = (CheckBox) view.findViewById(i);
                            if (checkBox != null) {
                                i = R.id.previewTv;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    i = R.id.schoolTv;
                                    TextView textView7 = (TextView) view.findViewById(i);
                                    if (textView7 != null) {
                                        i = R.id.siteTv;
                                        TextView textView8 = (TextView) view.findViewById(i);
                                        if (textView8 != null) {
                                            return new MapListItemBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5, checkBox, textView6, textView7, textView8);
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

    public static MapListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MapListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.map_list_item, viewGroup, false);
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
