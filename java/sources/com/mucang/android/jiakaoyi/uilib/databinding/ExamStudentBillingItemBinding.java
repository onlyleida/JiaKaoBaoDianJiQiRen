package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangCircleImageView;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ExamStudentBillingItemBinding implements a {
    public final MucangCircleImageView avatar;
    public final TextView charge;
    public final TextView needPay;
    public final TextView nickname;
    public final TextView receive;
    public final TextView remainCoin;
    private final FrameLayout rootView;
    public final TextView scanToPay;
    public final TextView unbind;

    private ExamStudentBillingItemBinding(FrameLayout frameLayout, MucangCircleImageView mucangCircleImageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = frameLayout;
        this.avatar = mucangCircleImageView;
        this.charge = textView;
        this.needPay = textView2;
        this.nickname = textView3;
        this.receive = textView4;
        this.remainCoin = textView5;
        this.scanToPay = textView6;
        this.unbind = textView7;
    }

    public static ExamStudentBillingItemBinding bind(View view) {
        int i = R.id.avatar;
        MucangCircleImageView mucangCircleImageView = (MucangCircleImageView) view.findViewById(i);
        if (mucangCircleImageView != null) {
            i = R.id.charge;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.needPay;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.nickname;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.receive;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.remainCoin;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.scanToPay;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    i = R.id.unbind;
                                    TextView textView7 = (TextView) view.findViewById(i);
                                    if (textView7 != null) {
                                        return new ExamStudentBillingItemBinding((FrameLayout) view, mucangCircleImageView, textView, textView2, textView3, textView4, textView5, textView6, textView7);
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

    public static ExamStudentBillingItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamStudentBillingItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_student_billing_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
