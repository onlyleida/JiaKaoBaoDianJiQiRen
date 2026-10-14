package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DebugSettingActivityBinding implements a {
    public final CheckBox blueToothCb;
    public final CheckBox cbEngineDebug;
    public final CheckBox encryptedCb;
    public final CheckBox oldPro;
    public final RelativeLayout rlBlueTooth;
    public final RelativeLayout rlDebugLog;
    public final RelativeLayout rlEncrypted;
    public final RelativeLayout rlEngineDebug;
    public final RelativeLayout rlOldPro;
    private final LinearLayout rootView;
    public final CommonTitleBinding titleLayout;

    private DebugSettingActivityBinding(LinearLayout linearLayout, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.blueToothCb = checkBox;
        this.cbEngineDebug = checkBox2;
        this.encryptedCb = checkBox3;
        this.oldPro = checkBox4;
        this.rlBlueTooth = relativeLayout;
        this.rlDebugLog = relativeLayout2;
        this.rlEncrypted = relativeLayout3;
        this.rlEngineDebug = relativeLayout4;
        this.rlOldPro = relativeLayout5;
        this.titleLayout = commonTitleBinding;
    }

    public static DebugSettingActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.blueToothCb;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (checkBox != null) {
            i = R.id.cbEngineDebug;
            CheckBox checkBox2 = (CheckBox) view.findViewById(i);
            if (checkBox2 != null) {
                i = R.id.encryptedCb;
                CheckBox checkBox3 = (CheckBox) view.findViewById(i);
                if (checkBox3 != null) {
                    i = R.id.oldPro;
                    CheckBox checkBox4 = (CheckBox) view.findViewById(i);
                    if (checkBox4 != null) {
                        i = R.id.rlBlueTooth;
                        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
                        if (relativeLayout != null) {
                            i = R.id.rlDebugLog;
                            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(i);
                            if (relativeLayout2 != null) {
                                i = R.id.rlEncrypted;
                                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(i);
                                if (relativeLayout3 != null) {
                                    i = R.id.rlEngineDebug;
                                    RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(i);
                                    if (relativeLayout4 != null) {
                                        i = R.id.rlOldPro;
                                        RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(i);
                                        if (relativeLayout5 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                            return new DebugSettingActivityBinding((LinearLayout) view, checkBox, checkBox2, checkBox3, checkBox4, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, CommonTitleBinding.bind(viewFindViewById));
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

    public static DebugSettingActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DebugSettingActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.debug_setting_activity, viewGroup, false);
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
