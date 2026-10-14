package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SettingGearLearnActivityBinding implements a {
    public final TextView actionTv;
    public final ImageView backIv;
    public final View divider;
    public final SettingGearLearnItemBinding gearLayout1;
    public final SettingGearLearnItemBinding gearLayout2;
    public final SettingGearLearnItemBinding gearLayout3;
    public final SettingGearLearnItemBinding gearLayout4;
    public final SettingGearLearnItemBinding gearLayout5;
    public final TextView gearTv;
    private final LinearLayout rootView;
    public final TextView rotateTv;
    public final TextView speedTv;
    public final RelativeLayout titleLayout;
    public final TextView titleTv;
    public final TextView tvEnable;
    public final TextView tvGpsEnable;

    private SettingGearLearnActivityBinding(LinearLayout linearLayout, TextView textView, ImageView imageView, View view, SettingGearLearnItemBinding settingGearLearnItemBinding, SettingGearLearnItemBinding settingGearLearnItemBinding2, SettingGearLearnItemBinding settingGearLearnItemBinding3, SettingGearLearnItemBinding settingGearLearnItemBinding4, SettingGearLearnItemBinding settingGearLearnItemBinding5, TextView textView2, TextView textView3, TextView textView4, RelativeLayout relativeLayout, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = linearLayout;
        this.actionTv = textView;
        this.backIv = imageView;
        this.divider = view;
        this.gearLayout1 = settingGearLearnItemBinding;
        this.gearLayout2 = settingGearLearnItemBinding2;
        this.gearLayout3 = settingGearLearnItemBinding3;
        this.gearLayout4 = settingGearLearnItemBinding4;
        this.gearLayout5 = settingGearLearnItemBinding5;
        this.gearTv = textView2;
        this.rotateTv = textView3;
        this.speedTv = textView4;
        this.titleLayout = relativeLayout;
        this.titleTv = textView5;
        this.tvEnable = textView6;
        this.tvGpsEnable = textView7;
    }

    public static SettingGearLearnActivityBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.actionTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.backIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null && (viewFindViewById2 = view.findViewById((i = R.id.gearLayout1))) != null) {
                SettingGearLearnItemBinding settingGearLearnItemBindingBind = SettingGearLearnItemBinding.bind(viewFindViewById2);
                i = R.id.gearLayout2;
                View viewFindViewById3 = view.findViewById(i);
                if (viewFindViewById3 != null) {
                    SettingGearLearnItemBinding settingGearLearnItemBindingBind2 = SettingGearLearnItemBinding.bind(viewFindViewById3);
                    i = R.id.gearLayout3;
                    View viewFindViewById4 = view.findViewById(i);
                    if (viewFindViewById4 != null) {
                        SettingGearLearnItemBinding settingGearLearnItemBindingBind3 = SettingGearLearnItemBinding.bind(viewFindViewById4);
                        i = R.id.gearLayout4;
                        View viewFindViewById5 = view.findViewById(i);
                        if (viewFindViewById5 != null) {
                            SettingGearLearnItemBinding settingGearLearnItemBindingBind4 = SettingGearLearnItemBinding.bind(viewFindViewById5);
                            i = R.id.gearLayout5;
                            View viewFindViewById6 = view.findViewById(i);
                            if (viewFindViewById6 != null) {
                                SettingGearLearnItemBinding settingGearLearnItemBindingBind5 = SettingGearLearnItemBinding.bind(viewFindViewById6);
                                i = R.id.gearTv;
                                TextView textView2 = (TextView) view.findViewById(i);
                                if (textView2 != null) {
                                    i = R.id.rotateTv;
                                    TextView textView3 = (TextView) view.findViewById(i);
                                    if (textView3 != null) {
                                        i = R.id.speedTv;
                                        TextView textView4 = (TextView) view.findViewById(i);
                                        if (textView4 != null) {
                                            i = R.id.titleLayout;
                                            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
                                            if (relativeLayout != null) {
                                                i = R.id.titleTv;
                                                TextView textView5 = (TextView) view.findViewById(i);
                                                if (textView5 != null) {
                                                    i = R.id.tv_enable;
                                                    TextView textView6 = (TextView) view.findViewById(i);
                                                    if (textView6 != null) {
                                                        i = R.id.tv_gps_enable;
                                                        TextView textView7 = (TextView) view.findViewById(i);
                                                        if (textView7 != null) {
                                                            return new SettingGearLearnActivityBinding((LinearLayout) view, textView, imageView, viewFindViewById, settingGearLearnItemBindingBind, settingGearLearnItemBindingBind2, settingGearLearnItemBindingBind3, settingGearLearnItemBindingBind4, settingGearLearnItemBindingBind5, textView2, textView3, textView4, relativeLayout, textView5, textView6, textView7);
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

    public static SettingGearLearnActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingGearLearnActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_gear_learn_activity, viewGroup, false);
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
