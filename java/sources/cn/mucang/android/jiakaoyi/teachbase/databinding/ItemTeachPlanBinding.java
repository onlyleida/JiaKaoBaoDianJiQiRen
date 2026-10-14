package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemTeachPlanBinding implements a {
    public final TextView carName;
    public final TextView copyPlan;
    public final TextView delPlan;
    public final TextView editBaseInfo;
    public final TextView editPlan;
    public final TextView enablePlan;
    public final TextView gearName;
    public final TextView name;
    private final ConstraintLayout rootView;
    public final TextView stepPlan;
    public final TextView versionName;

    private ItemTeachPlanBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10) {
        this.rootView = constraintLayout;
        this.carName = textView;
        this.copyPlan = textView2;
        this.delPlan = textView3;
        this.editBaseInfo = textView4;
        this.editPlan = textView5;
        this.enablePlan = textView6;
        this.gearName = textView7;
        this.name = textView8;
        this.stepPlan = textView9;
        this.versionName = textView10;
    }

    public static ItemTeachPlanBinding bind(View view) {
        int i = R.id.carName;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.copyPlan;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.delPlan;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.editBaseInfo;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.editPlan;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            i = R.id.enablePlan;
                            TextView textView6 = (TextView) view.findViewById(i);
                            if (textView6 != null) {
                                i = R.id.gearName;
                                TextView textView7 = (TextView) view.findViewById(i);
                                if (textView7 != null) {
                                    i = R.id.name;
                                    TextView textView8 = (TextView) view.findViewById(i);
                                    if (textView8 != null) {
                                        i = R.id.stepPlan;
                                        TextView textView9 = (TextView) view.findViewById(i);
                                        if (textView9 != null) {
                                            i = R.id.versionName;
                                            TextView textView10 = (TextView) view.findViewById(i);
                                            if (textView10 != null) {
                                                return new ItemTeachPlanBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10);
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

    public static ItemTeachPlanBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemTeachPlanBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_teach_plan, viewGroup, false);
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
