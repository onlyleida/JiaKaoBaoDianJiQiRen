package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class CarSelectListItemBinding implements a {
    public final ConstraintLayout clSpeedSetting;
    public final View divider;
    public final EditText etRpm;
    public final EditText etSpeed;
    public final TextView nameTv;
    private final LinearLayout rootView;
    public final TextView rpm;
    public final ImageView selectedIv;
    public final TextView speed;
    public final TextView tvDelayEnable;
    public final TextView tvDesc;

    private CarSelectListItemBinding(LinearLayout linearLayout, ConstraintLayout constraintLayout, View view, EditText editText, EditText editText2, TextView textView, TextView textView2, ImageView imageView, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.clSpeedSetting = constraintLayout;
        this.divider = view;
        this.etRpm = editText;
        this.etSpeed = editText2;
        this.nameTv = textView;
        this.rpm = textView2;
        this.selectedIv = imageView;
        this.speed = textView3;
        this.tvDelayEnable = textView4;
        this.tvDesc = textView5;
    }

    public static CarSelectListItemBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.cl_speed_setting;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
        if (constraintLayout != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
            i = R.id.et_rpm;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.et_speed;
                EditText editText2 = (EditText) view.findViewById(i);
                if (editText2 != null) {
                    i = R.id.nameTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.rpm;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.selectedIv;
                            ImageView imageView = (ImageView) view.findViewById(i);
                            if (imageView != null) {
                                i = R.id.speed;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.tv_delay_enable;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.tv_desc;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            return new CarSelectListItemBinding((LinearLayout) view, constraintLayout, viewFindViewById, editText, editText2, textView, textView2, imageView, textView3, textView4, textView5);
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

    public static CarSelectListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CarSelectListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.car_select_list_item, viewGroup, false);
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
