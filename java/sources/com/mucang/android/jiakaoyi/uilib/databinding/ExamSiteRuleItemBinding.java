package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ExamSiteRuleItemBinding implements a {
    public final TextView deductSettingTv;
    public final TextView instructChangeTv;
    public final TextView orderTv;
    private final LinearLayout rootView;
    public final TextView ruleBackupTv;
    public final TextView ruleSettingTv;
    public final AppCompatCheckBox selectCb;
    public final TextView shareTv;
    public final TextView siteNameTv;
    public final TextView teachTv;

    private ExamSiteRuleItemBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, AppCompatCheckBox appCompatCheckBox, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = linearLayout;
        this.deductSettingTv = textView;
        this.instructChangeTv = textView2;
        this.orderTv = textView3;
        this.ruleBackupTv = textView4;
        this.ruleSettingTv = textView5;
        this.selectCb = appCompatCheckBox;
        this.shareTv = textView6;
        this.siteNameTv = textView7;
        this.teachTv = textView8;
    }

    public static ExamSiteRuleItemBinding bind(View view) {
        int i = R.id.deductSettingTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.instructChangeTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.orderTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.ruleBackupTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.ruleSettingTv;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            i = R.id.selectCb;
                            AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) view.findViewById(i);
                            if (appCompatCheckBox != null) {
                                i = R.id.shareTv;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    i = R.id.siteNameTv;
                                    TextView textView7 = (TextView) view.findViewById(i);
                                    if (textView7 != null) {
                                        i = R.id.teachTv;
                                        TextView textView8 = (TextView) view.findViewById(i);
                                        if (textView8 != null) {
                                            return new ExamSiteRuleItemBinding((LinearLayout) view, textView, textView2, textView3, textView4, textView5, appCompatCheckBox, textView6, textView7, textView8);
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

    public static ExamSiteRuleItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamSiteRuleItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_site_rule_item, viewGroup, false);
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
