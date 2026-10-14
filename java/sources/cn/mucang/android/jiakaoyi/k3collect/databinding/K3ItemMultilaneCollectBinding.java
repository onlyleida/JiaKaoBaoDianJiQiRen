package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class K3ItemMultilaneCollectBinding implements a {
    public final EditText etLineWidth;
    public final Group groupCollect1;
    public final Group groupCollect2;
    private final ConstraintLayout rootView;
    public final Spinner spLineType;
    public final TextView tvCollectStart;
    public final TextView tvCollectStart1;
    public final TextView tvDelete;
    public final TextView tvLineWidth;
    public final TextView tvShape;
    public final TextView tvValue1;
    public final TextView tvValue2;

    private K3ItemMultilaneCollectBinding(ConstraintLayout constraintLayout, EditText editText, Group group, Group group2, Spinner spinner, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = constraintLayout;
        this.etLineWidth = editText;
        this.groupCollect1 = group;
        this.groupCollect2 = group2;
        this.spLineType = spinner;
        this.tvCollectStart = textView;
        this.tvCollectStart1 = textView2;
        this.tvDelete = textView3;
        this.tvLineWidth = textView4;
        this.tvShape = textView5;
        this.tvValue1 = textView6;
        this.tvValue2 = textView7;
    }

    public static K3ItemMultilaneCollectBinding bind(View view) {
        int i = R.id.etLineWidth;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.groupCollect1;
            Group group = (Group) view.findViewById(i);
            if (group != null) {
                i = R.id.groupCollect2;
                Group group2 = (Group) view.findViewById(i);
                if (group2 != null) {
                    i = R.id.sp_line_type;
                    Spinner spinner = (Spinner) view.findViewById(i);
                    if (spinner != null) {
                        i = R.id.tv_collect_start;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.tv_collect_start1;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.tv_delete;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.tvLineWidth;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.tvShape;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.tv_value_1;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                i = R.id.tv_value_2;
                                                TextView textView7 = (TextView) view.findViewById(i);
                                                if (textView7 != null) {
                                                    return new K3ItemMultilaneCollectBinding((ConstraintLayout) view, editText, group, group2, spinner, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static K3ItemMultilaneCollectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static K3ItemMultilaneCollectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.k3_item_multilane_collect, viewGroup, false);
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
