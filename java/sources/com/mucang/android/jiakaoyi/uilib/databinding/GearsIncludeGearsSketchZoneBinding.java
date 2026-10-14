package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.view.GearSketchViewGroup;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class GearsIncludeGearsSketchZoneBinding implements a {
    public final TextView gearsItemTip;
    public final GearSketchViewGroup gearsSketch;
    private final ConstraintLayout rootView;
    public final TextView switchGearsCategory;

    private GearsIncludeGearsSketchZoneBinding(ConstraintLayout constraintLayout, TextView textView, GearSketchViewGroup gearSketchViewGroup, TextView textView2) {
        this.rootView = constraintLayout;
        this.gearsItemTip = textView;
        this.gearsSketch = gearSketchViewGroup;
        this.switchGearsCategory = textView2;
    }

    public static GearsIncludeGearsSketchZoneBinding bind(View view) {
        int i = R.id.gears_item_tip;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.gears_sketch;
            GearSketchViewGroup gearSketchViewGroup = (GearSketchViewGroup) view.findViewById(i);
            if (gearSketchViewGroup != null) {
                i = R.id.switch_gears_category;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new GearsIncludeGearsSketchZoneBinding((ConstraintLayout) view, textView, gearSketchViewGroup, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static GearsIncludeGearsSketchZoneBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GearsIncludeGearsSketchZoneBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gears__include__gears_sketch_zone, viewGroup, false);
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
