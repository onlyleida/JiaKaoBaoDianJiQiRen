package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogSelectErrorBinding implements a {
    public final CheckBox brakeCb;
    public final ImageView closeIv;
    public final TextView confirmTv;
    public final CheckBox customCb;
    public final CheckBox leftCb;
    public final CheckBox leftHeadCb;
    public final CheckBox lightCloseCb;
    public final CheckBox lightErrorCb;
    public final CheckBox moreLeftCb;
    public final CheckBox moreRightCb;
    public final CheckBox noHeadCb;
    public final CheckBox rightCb;
    public final CheckBox rightHeadCb;
    private final ConstraintLayout rootView;
    public final Group stopGroup;
    public final TextView temp1;
    public final TextView temp2;
    public final TextView temp3;
    public final TextView temp4;
    public final TextView titleTv;

    private DialogSelectErrorBinding(ConstraintLayout constraintLayout, CheckBox checkBox, ImageView imageView, TextView textView, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, Group group, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.brakeCb = checkBox;
        this.closeIv = imageView;
        this.confirmTv = textView;
        this.customCb = checkBox2;
        this.leftCb = checkBox3;
        this.leftHeadCb = checkBox4;
        this.lightCloseCb = checkBox5;
        this.lightErrorCb = checkBox6;
        this.moreLeftCb = checkBox7;
        this.moreRightCb = checkBox8;
        this.noHeadCb = checkBox9;
        this.rightCb = checkBox10;
        this.rightHeadCb = checkBox11;
        this.stopGroup = group;
        this.temp1 = textView2;
        this.temp2 = textView3;
        this.temp3 = textView4;
        this.temp4 = textView5;
        this.titleTv = textView6;
    }

    public static DialogSelectErrorBinding bind(View view) {
        int i = R.id.brakeCb;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (checkBox != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.confirmTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.customCb;
                    CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                    if (checkBox2 != null) {
                        i = R.id.leftCb;
                        CheckBox checkBox3 = (CheckBox) view.findViewById(i);
                        if (checkBox3 != null) {
                            i = R.id.leftHeadCb;
                            CheckBox checkBox4 = (CheckBox) view.findViewById(i);
                            if (checkBox4 != null) {
                                i = R.id.lightCloseCb;
                                CheckBox checkBox5 = (CheckBox) view.findViewById(i);
                                if (checkBox5 != null) {
                                    i = R.id.lightErrorCb;
                                    CheckBox checkBox6 = (CheckBox) view.findViewById(i);
                                    if (checkBox6 != null) {
                                        i = R.id.moreLeftCb;
                                        CheckBox checkBox7 = (CheckBox) view.findViewById(i);
                                        if (checkBox7 != null) {
                                            i = R.id.moreRightCb;
                                            CheckBox checkBox8 = (CheckBox) view.findViewById(i);
                                            if (checkBox8 != null) {
                                                i = R.id.noHeadCb;
                                                CheckBox checkBox9 = (CheckBox) view.findViewById(i);
                                                if (checkBox9 != null) {
                                                    i = R.id.rightCb;
                                                    CheckBox checkBox10 = (CheckBox) view.findViewById(i);
                                                    if (checkBox10 != null) {
                                                        i = R.id.rightHeadCb;
                                                        CheckBox checkBox11 = (CheckBox) view.findViewById(i);
                                                        if (checkBox11 != null) {
                                                            i = R.id.stopGroup;
                                                            Group group = (Group) view.findViewById(i);
                                                            if (group != null) {
                                                                i = R.id.temp1;
                                                                TextView textView2 = (TextView) view.findViewById(i);
                                                                if (textView2 != null) {
                                                                    i = R.id.temp2;
                                                                    TextView textView3 = (TextView) view.findViewById(i);
                                                                    if (textView3 != null) {
                                                                        i = R.id.temp3;
                                                                        TextView textView4 = (TextView) view.findViewById(i);
                                                                        if (textView4 != null) {
                                                                            i = R.id.temp4;
                                                                            TextView textView5 = (TextView) view.findViewById(i);
                                                                            if (textView5 != null) {
                                                                                i = R.id.titleTv;
                                                                                TextView textView6 = (TextView) view.findViewById(i);
                                                                                if (textView6 != null) {
                                                                                    return new DialogSelectErrorBinding((ConstraintLayout) view, checkBox, imageView, textView, checkBox2, checkBox3, checkBox4, checkBox5, checkBox6, checkBox7, checkBox8, checkBox9, checkBox10, checkBox11, group, textView2, textView3, textView4, textView5, textView6);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogSelectErrorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogSelectErrorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_select_error, viewGroup, false);
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
