package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SignalCheckActivityBinding implements a {
    public final TextView allCancelTv;
    public final TextView allCheckTv;
    public final LinearLayout allLl;
    public final TextView backGearSp;
    public final LinearLayout carDescArrow;
    public final TextView carDescTv;
    public final TextView carGearTypeSp;
    public final ConstraintLayout carSelectLayout;
    public final TextView extendSettingTv;
    public final RecyclerView recyclerView1;
    public final RecyclerView recyclerView2;
    public final RecyclerView recyclerView3;
    public final TextView reverseSettingTv;
    private final LinearLayout rootView;
    public final TextView selectCarTitle;
    public final CommonTitleBinding titleLayout;
    public final TextView tvGpsSpeedEnable;

    private SignalCheckActivityBinding(LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2, TextView textView3, LinearLayout linearLayout3, TextView textView4, TextView textView5, ConstraintLayout constraintLayout, TextView textView6, RecyclerView recyclerView, RecyclerView recyclerView2, RecyclerView recyclerView3, TextView textView7, TextView textView8, CommonTitleBinding commonTitleBinding, TextView textView9) {
        this.rootView = linearLayout;
        this.allCancelTv = textView;
        this.allCheckTv = textView2;
        this.allLl = linearLayout2;
        this.backGearSp = textView3;
        this.carDescArrow = linearLayout3;
        this.carDescTv = textView4;
        this.carGearTypeSp = textView5;
        this.carSelectLayout = constraintLayout;
        this.extendSettingTv = textView6;
        this.recyclerView1 = recyclerView;
        this.recyclerView2 = recyclerView2;
        this.recyclerView3 = recyclerView3;
        this.reverseSettingTv = textView7;
        this.selectCarTitle = textView8;
        this.titleLayout = commonTitleBinding;
        this.tvGpsSpeedEnable = textView9;
    }

    public static SignalCheckActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.allCancelTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.allCheckTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.allLl;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.backGearSp;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.carDescArrow;
                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                        if (linearLayout2 != null) {
                            i = R.id.carDescTv;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                i = R.id.carGearTypeSp;
                                TextView textView5 = (TextView) view.findViewById(i);
                                if (textView5 != null) {
                                    i = R.id.carSelectLayout;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                                    if (constraintLayout != null) {
                                        i = R.id.extendSettingTv;
                                        TextView textView6 = (TextView) view.findViewById(i);
                                        if (textView6 != null) {
                                            i = R.id.recyclerView1;
                                            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                            if (recyclerView != null) {
                                                i = R.id.recyclerView2;
                                                RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                                                if (recyclerView2 != null) {
                                                    i = R.id.recyclerView3;
                                                    RecyclerView recyclerView3 = (RecyclerView) view.findViewById(i);
                                                    if (recyclerView3 != null) {
                                                        i = R.id.reverseSettingTv;
                                                        TextView textView7 = (TextView) view.findViewById(i);
                                                        if (textView7 != null) {
                                                            i = R.id.select_car_title;
                                                            TextView textView8 = (TextView) view.findViewById(i);
                                                            if (textView8 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                                                CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                                                                i = R.id.tv_gps_speed_enable;
                                                                TextView textView9 = (TextView) view.findViewById(i);
                                                                if (textView9 != null) {
                                                                    return new SignalCheckActivityBinding((LinearLayout) view, textView, textView2, linearLayout, textView3, linearLayout2, textView4, textView5, constraintLayout, textView6, recyclerView, recyclerView2, recyclerView3, textView7, textView8, commonTitleBindingBind, textView9);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SignalCheckActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SignalCheckActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.signal_check_activity, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
