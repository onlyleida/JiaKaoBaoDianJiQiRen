package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SettingAboutActivityBinding implements a {
    public final TextView actionLog;
    public final FrameLayout actionLogLayout;
    public final TextView betaVersionTv;
    public final FrameLayout faceRecordFl;
    public final ImageView iconIv;
    public final TextView qrScan;
    public final ImageView recordIv;
    private final LinearLayout rootView;
    public final CommonTitleBinding titleLayout;
    public final TextView tvPolicy;
    public final TextView versionTv;

    private SettingAboutActivityBinding(LinearLayout linearLayout, TextView textView, FrameLayout frameLayout, TextView textView2, FrameLayout frameLayout2, ImageView imageView, TextView textView3, ImageView imageView2, CommonTitleBinding commonTitleBinding, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.actionLog = textView;
        this.actionLogLayout = frameLayout;
        this.betaVersionTv = textView2;
        this.faceRecordFl = frameLayout2;
        this.iconIv = imageView;
        this.qrScan = textView3;
        this.recordIv = imageView2;
        this.titleLayout = commonTitleBinding;
        this.tvPolicy = textView4;
        this.versionTv = textView5;
    }

    public static SettingAboutActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.actionLog;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.actionLogLayout;
            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
            if (frameLayout != null) {
                i = R.id.betaVersionTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.faceRecordFl;
                    FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                    if (frameLayout2 != null) {
                        i = R.id.iconIv;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            i = R.id.qrScan;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.recordIv;
                                ImageView imageView2 = (ImageView) view.findViewById(i);
                                if (imageView2 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                    CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                                    i = R.id.tvPolicy;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.versionTv;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            return new SettingAboutActivityBinding((LinearLayout) view, textView, frameLayout, textView2, frameLayout2, imageView, textView3, imageView2, commonTitleBindingBind, textView4, textView5);
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

    public static SettingAboutActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingAboutActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_about_activity, viewGroup, false);
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
