package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.jiakaoyi.uilib.ui.widget.JSeekBar;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SettingTtsActivityBinding implements a {
    public final JSeekBar pitchSeekBar;
    private final LinearLayout rootView;
    public final RadioButton speed30;
    public final RadioButton speed40;
    public final RadioButton speed50;
    public final RadioButton speed60;
    public final RadioButton speed70;
    public final RadioGroup speedRadio;
    public final CommonTitleBinding titleLayout;
    public final TextView tryListen;
    public final TextView voiceClearTv;
    public final TextView voiceDebugTv;
    public final TextView voicePackDebugTv;

    private SettingTtsActivityBinding(LinearLayout linearLayout, JSeekBar jSeekBar, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, RadioButton radioButton4, RadioButton radioButton5, RadioGroup radioGroup, CommonTitleBinding commonTitleBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.pitchSeekBar = jSeekBar;
        this.speed30 = radioButton;
        this.speed40 = radioButton2;
        this.speed50 = radioButton3;
        this.speed60 = radioButton4;
        this.speed70 = radioButton5;
        this.speedRadio = radioGroup;
        this.titleLayout = commonTitleBinding;
        this.tryListen = textView;
        this.voiceClearTv = textView2;
        this.voiceDebugTv = textView3;
        this.voicePackDebugTv = textView4;
    }

    public static SettingTtsActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.pitchSeekBar;
        JSeekBar jSeekBar = (JSeekBar) view.findViewById(i);
        if (jSeekBar != null) {
            i = R.id.speed30;
            RadioButton radioButton = (RadioButton) view.findViewById(i);
            if (radioButton != null) {
                i = R.id.speed40;
                RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                if (radioButton2 != null) {
                    i = R.id.speed50;
                    RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                    if (radioButton3 != null) {
                        i = R.id.speed60;
                        RadioButton radioButton4 = (RadioButton) view.findViewById(i);
                        if (radioButton4 != null) {
                            i = R.id.speed70;
                            RadioButton radioButton5 = (RadioButton) view.findViewById(i);
                            if (radioButton5 != null) {
                                i = R.id.speedRadio;
                                RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                                if (radioGroup != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                    CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                                    i = R.id.tryListen;
                                    TextView textView = (TextView) view.findViewById(i);
                                    if (textView != null) {
                                        i = R.id.voiceClearTv;
                                        TextView textView2 = (TextView) view.findViewById(i);
                                        if (textView2 != null) {
                                            i = R.id.voiceDebugTv;
                                            TextView textView3 = (TextView) view.findViewById(i);
                                            if (textView3 != null) {
                                                i = R.id.voicePackDebugTv;
                                                TextView textView4 = (TextView) view.findViewById(i);
                                                if (textView4 != null) {
                                                    return new SettingTtsActivityBinding((LinearLayout) view, jSeekBar, radioButton, radioButton2, radioButton3, radioButton4, radioButton5, radioGroup, commonTitleBindingBind, textView, textView2, textView3, textView4);
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

    public static SettingTtsActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingTtsActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_tts_activity, viewGroup, false);
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
