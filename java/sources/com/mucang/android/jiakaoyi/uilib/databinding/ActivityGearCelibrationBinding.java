package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityGearCelibrationBinding implements a {
    public final ConstraintLayout activityMain;
    public final TextView deviceInfo;
    public final View deviceInfoCoverBg;
    public final LinearLayout deviceInfoZone;
    public final GearsIncludeGearsDataZoneBinding gearsDataZone;
    public final GearsIncludeGearsGuideZoneBinding gearsGuideZone;
    public final GearsIncludeGearsSketchZoneBinding gearsSketchZone;
    private final ConstraintLayout rootView;
    public final CommonTitleBinding title;

    private ActivityGearCelibrationBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, TextView textView, View view, LinearLayout linearLayout, GearsIncludeGearsDataZoneBinding gearsIncludeGearsDataZoneBinding, GearsIncludeGearsGuideZoneBinding gearsIncludeGearsGuideZoneBinding, GearsIncludeGearsSketchZoneBinding gearsIncludeGearsSketchZoneBinding, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.activityMain = constraintLayout2;
        this.deviceInfo = textView;
        this.deviceInfoCoverBg = view;
        this.deviceInfoZone = linearLayout;
        this.gearsDataZone = gearsIncludeGearsDataZoneBinding;
        this.gearsGuideZone = gearsIncludeGearsGuideZoneBinding;
        this.gearsSketchZone = gearsIncludeGearsSketchZoneBinding;
        this.title = commonTitleBinding;
    }

    public static ActivityGearCelibrationBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = R.id.device_info;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null && (viewFindViewById = view.findViewById((i = R.id.device_info_cover_bg))) != null) {
            i = R.id.device_info_zone;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null && (viewFindViewById2 = view.findViewById((i = R.id.gears_data_zone))) != null) {
                GearsIncludeGearsDataZoneBinding gearsIncludeGearsDataZoneBindingBind = GearsIncludeGearsDataZoneBinding.bind(viewFindViewById2);
                i = R.id.gears_guide_zone;
                View viewFindViewById3 = view.findViewById(i);
                if (viewFindViewById3 != null) {
                    GearsIncludeGearsGuideZoneBinding gearsIncludeGearsGuideZoneBindingBind = GearsIncludeGearsGuideZoneBinding.bind(viewFindViewById3);
                    i = R.id.gears_sketch_zone;
                    View viewFindViewById4 = view.findViewById(i);
                    if (viewFindViewById4 != null) {
                        GearsIncludeGearsSketchZoneBinding gearsIncludeGearsSketchZoneBindingBind = GearsIncludeGearsSketchZoneBinding.bind(viewFindViewById4);
                        i = R.id.title;
                        View viewFindViewById5 = view.findViewById(i);
                        if (viewFindViewById5 != null) {
                            return new ActivityGearCelibrationBinding(constraintLayout, constraintLayout, textView, viewFindViewById, linearLayout, gearsIncludeGearsDataZoneBindingBind, gearsIncludeGearsGuideZoneBindingBind, gearsIncludeGearsSketchZoneBindingBind, CommonTitleBinding.bind(viewFindViewById5));
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityGearCelibrationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityGearCelibrationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_gear_celibration, viewGroup, false);
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
