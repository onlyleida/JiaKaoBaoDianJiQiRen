package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.GearItemHandleView;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class GearsGearSchetchItemBinding implements a {
    public final ConstraintLayout activityMain;
    public final GearItemHandleView bottomInnerBtn;
    public final GearItemHandleView bottomOuterBtn;
    public final TextView itemContent;
    public final TextView itemContentDefault;
    public final GearItemHandleView leftInnerBtn;
    public final GearItemHandleView leftOuterBtn;
    public final GearItemHandleView rightInnerBtn;
    public final GearItemHandleView rightOuterBtn;
    private final ConstraintLayout rootView;
    public final GearItemHandleView topInnerBtn;
    public final GearItemHandleView topOuterBtn;

    private GearsGearSchetchItemBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, GearItemHandleView gearItemHandleView, GearItemHandleView gearItemHandleView2, TextView textView, TextView textView2, GearItemHandleView gearItemHandleView3, GearItemHandleView gearItemHandleView4, GearItemHandleView gearItemHandleView5, GearItemHandleView gearItemHandleView6, GearItemHandleView gearItemHandleView7, GearItemHandleView gearItemHandleView8) {
        this.rootView = constraintLayout;
        this.activityMain = constraintLayout2;
        this.bottomInnerBtn = gearItemHandleView;
        this.bottomOuterBtn = gearItemHandleView2;
        this.itemContent = textView;
        this.itemContentDefault = textView2;
        this.leftInnerBtn = gearItemHandleView3;
        this.leftOuterBtn = gearItemHandleView4;
        this.rightInnerBtn = gearItemHandleView5;
        this.rightOuterBtn = gearItemHandleView6;
        this.topInnerBtn = gearItemHandleView7;
        this.topOuterBtn = gearItemHandleView8;
    }

    public static GearsGearSchetchItemBinding bind(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = R.id.bottom_inner_btn;
        GearItemHandleView gearItemHandleView = (GearItemHandleView) view.findViewById(i);
        if (gearItemHandleView != null) {
            i = R.id.bottom_outer_btn;
            GearItemHandleView gearItemHandleView2 = (GearItemHandleView) view.findViewById(i);
            if (gearItemHandleView2 != null) {
                i = R.id.item_content;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.item_content_default;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.left_inner_btn;
                        GearItemHandleView gearItemHandleView3 = (GearItemHandleView) view.findViewById(i);
                        if (gearItemHandleView3 != null) {
                            i = R.id.left_outer_btn;
                            GearItemHandleView gearItemHandleView4 = (GearItemHandleView) view.findViewById(i);
                            if (gearItemHandleView4 != null) {
                                i = R.id.right_inner_btn;
                                GearItemHandleView gearItemHandleView5 = (GearItemHandleView) view.findViewById(i);
                                if (gearItemHandleView5 != null) {
                                    i = R.id.right_outer_btn;
                                    GearItemHandleView gearItemHandleView6 = (GearItemHandleView) view.findViewById(i);
                                    if (gearItemHandleView6 != null) {
                                        i = R.id.top_inner_btn;
                                        GearItemHandleView gearItemHandleView7 = (GearItemHandleView) view.findViewById(i);
                                        if (gearItemHandleView7 != null) {
                                            i = R.id.top_outer_btn;
                                            GearItemHandleView gearItemHandleView8 = (GearItemHandleView) view.findViewById(i);
                                            if (gearItemHandleView8 != null) {
                                                return new GearsGearSchetchItemBinding(constraintLayout, constraintLayout, gearItemHandleView, gearItemHandleView2, textView, textView2, gearItemHandleView3, gearItemHandleView4, gearItemHandleView5, gearItemHandleView6, gearItemHandleView7, gearItemHandleView8);
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

    public static GearsGearSchetchItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GearsGearSchetchItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gears__gear_schetch_item, viewGroup, false);
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
