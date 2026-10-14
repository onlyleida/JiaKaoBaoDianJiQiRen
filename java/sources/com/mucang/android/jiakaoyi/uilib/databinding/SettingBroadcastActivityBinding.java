package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.viewbinding.a;
import cn.mucang.jiakaoyi.uilib.ui.widget.JSeekBar;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SettingBroadcastActivityBinding implements a {
    public final JSeekBar angelSeekBar;
    public final JSeekBar distanceSeekBar;
    public final EditText leftLightTime;
    public final TextView leftLightTip;
    public final LinearLayout llLight;
    public final AppCompatCheckBox needOrder;
    public final AppCompatCheckBox onlyUseDistance;
    private final LinearLayout rootView;
    public final TextView saveLightTime;
    public final JSeekBar teachAngelSeekBar;
    public final JSeekBar teachDistanceSeekBar;
    public final CommonTitleBinding titleLayout;
    public final EditText warningLightTime;
    public final TextView warningLightTip;

    private SettingBroadcastActivityBinding(LinearLayout linearLayout, JSeekBar jSeekBar, JSeekBar jSeekBar2, EditText editText, TextView textView, LinearLayout linearLayout2, AppCompatCheckBox appCompatCheckBox, AppCompatCheckBox appCompatCheckBox2, TextView textView2, JSeekBar jSeekBar3, JSeekBar jSeekBar4, CommonTitleBinding commonTitleBinding, EditText editText2, TextView textView3) {
        this.rootView = linearLayout;
        this.angelSeekBar = jSeekBar;
        this.distanceSeekBar = jSeekBar2;
        this.leftLightTime = editText;
        this.leftLightTip = textView;
        this.llLight = linearLayout2;
        this.needOrder = appCompatCheckBox;
        this.onlyUseDistance = appCompatCheckBox2;
        this.saveLightTime = textView2;
        this.teachAngelSeekBar = jSeekBar3;
        this.teachDistanceSeekBar = jSeekBar4;
        this.titleLayout = commonTitleBinding;
        this.warningLightTime = editText2;
        this.warningLightTip = textView3;
    }

    public static SettingBroadcastActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.angelSeekBar;
        JSeekBar jSeekBar = (JSeekBar) view.findViewById(i);
        if (jSeekBar != null) {
            i = R.id.distanceSeekBar;
            JSeekBar jSeekBar2 = (JSeekBar) view.findViewById(i);
            if (jSeekBar2 != null) {
                i = R.id.left_light_time;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.left_light_tip;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.ll_light;
                        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                        if (linearLayout != null) {
                            i = R.id.needOrder;
                            AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) view.findViewById(i);
                            if (appCompatCheckBox != null) {
                                i = R.id.onlyUseDistance;
                                AppCompatCheckBox appCompatCheckBox2 = (AppCompatCheckBox) view.findViewById(i);
                                if (appCompatCheckBox2 != null) {
                                    i = R.id.save_light_time;
                                    TextView textView2 = (TextView) view.findViewById(i);
                                    if (textView2 != null) {
                                        i = R.id.teachAngelSeekBar;
                                        JSeekBar jSeekBar3 = (JSeekBar) view.findViewById(i);
                                        if (jSeekBar3 != null) {
                                            i = R.id.teachDistanceSeekBar;
                                            JSeekBar jSeekBar4 = (JSeekBar) view.findViewById(i);
                                            if (jSeekBar4 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                                CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                                                i = R.id.warning_light_time;
                                                EditText editText2 = (EditText) view.findViewById(i);
                                                if (editText2 != null) {
                                                    i = R.id.warning_light_tip;
                                                    TextView textView3 = (TextView) view.findViewById(i);
                                                    if (textView3 != null) {
                                                        return new SettingBroadcastActivityBinding((LinearLayout) view, jSeekBar, jSeekBar2, editText, textView, linearLayout, appCompatCheckBox, appCompatCheckBox2, textView2, jSeekBar3, jSeekBar4, commonTitleBindingBind, editText2, textView3);
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

    public static SettingBroadcastActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingBroadcastActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_broadcast_activity, viewGroup, false);
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
