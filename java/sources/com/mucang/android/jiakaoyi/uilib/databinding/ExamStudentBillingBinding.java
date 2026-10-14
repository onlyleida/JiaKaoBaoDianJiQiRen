package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ExamStudentBillingBinding implements a {
    public final TextView billingTips;
    public final ImageView closeDialog;
    public final TextView protocolTv;
    public final TextView refreshList;
    public final TextView remain;
    private final FrameLayout rootView;
    public final StateLayout stateLayout;
    public final Button studentLogin;
    public final RecyclerView students;
    public final TextView tvDialogTitle;
    public final TextView tvTitle1;

    private ExamStudentBillingBinding(FrameLayout frameLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3, TextView textView4, StateLayout stateLayout, Button button, RecyclerView recyclerView, TextView textView5, TextView textView6) {
        this.rootView = frameLayout;
        this.billingTips = textView;
        this.closeDialog = imageView;
        this.protocolTv = textView2;
        this.refreshList = textView3;
        this.remain = textView4;
        this.stateLayout = stateLayout;
        this.studentLogin = button;
        this.students = recyclerView;
        this.tvDialogTitle = textView5;
        this.tvTitle1 = textView6;
    }

    public static ExamStudentBillingBinding bind(View view) {
        int i = R.id.billingTips;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.close_dialog;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.protocol_tv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.refreshList;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.remain;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.stateLayout;
                            StateLayout stateLayout = (StateLayout) view.findViewById(i);
                            if (stateLayout != null) {
                                i = R.id.studentLogin;
                                Button button = (Button) view.findViewById(i);
                                if (button != null) {
                                    i = R.id.students;
                                    RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                    if (recyclerView != null) {
                                        i = R.id.tv_dialog_title;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.tv_title1;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                return new ExamStudentBillingBinding((FrameLayout) view, textView, imageView, textView2, textView3, textView4, stateLayout, button, recyclerView, textView5, textView6);
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

    public static ExamStudentBillingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamStudentBillingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_student_billing, viewGroup, false);
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
