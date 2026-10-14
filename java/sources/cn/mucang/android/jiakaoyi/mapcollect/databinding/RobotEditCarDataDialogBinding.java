package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RobotEditCarDataDialogBinding implements a {
    public final TextView cityName;
    public final LinearLayout cityNameLayout;
    public final ImageView closeIv;
    public final ImageView line1;
    public final LinearLayout modelLayout;
    public final TextView modelNameTv;
    public final LinearLayout nameLayout;
    public final TextView nameSchoolTv;
    public final LinearLayout numberLayout;
    public final TextView numberTv;
    public final TextView okTv;
    private final FrameLayout rootView;
    public final TextView titleTv;

    private RobotEditCarDataDialogBinding(FrameLayout frameLayout, TextView textView, LinearLayout linearLayout, ImageView imageView, ImageView imageView2, LinearLayout linearLayout2, TextView textView2, LinearLayout linearLayout3, TextView textView3, LinearLayout linearLayout4, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = frameLayout;
        this.cityName = textView;
        this.cityNameLayout = linearLayout;
        this.closeIv = imageView;
        this.line1 = imageView2;
        this.modelLayout = linearLayout2;
        this.modelNameTv = textView2;
        this.nameLayout = linearLayout3;
        this.nameSchoolTv = textView3;
        this.numberLayout = linearLayout4;
        this.numberTv = textView4;
        this.okTv = textView5;
        this.titleTv = textView6;
    }

    public static RobotEditCarDataDialogBinding bind(View view) {
        int i = R.id.cityName;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.cityNameLayout;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.closeIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.line1;
                    ImageView imageView2 = (ImageView) view.findViewById(i);
                    if (imageView2 != null) {
                        i = R.id.modelLayout;
                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                        if (linearLayout2 != null) {
                            i = R.id.modelNameTv;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.nameLayout;
                                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                                if (linearLayout3 != null) {
                                    i = R.id.nameSchoolTv;
                                    TextView textView3 = (TextView) view.findViewById(i);
                                    if (textView3 != null) {
                                        i = R.id.numberLayout;
                                        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(i);
                                        if (linearLayout4 != null) {
                                            i = R.id.numberTv;
                                            TextView textView4 = (TextView) view.findViewById(i);
                                            if (textView4 != null) {
                                                i = R.id.okTv;
                                                TextView textView5 = (TextView) view.findViewById(i);
                                                if (textView5 != null) {
                                                    i = R.id.titleTv;
                                                    TextView textView6 = (TextView) view.findViewById(i);
                                                    if (textView6 != null) {
                                                        return new RobotEditCarDataDialogBinding((FrameLayout) view, textView, linearLayout, imageView, imageView2, linearLayout2, textView2, linearLayout3, textView3, linearLayout4, textView4, textView5, textView6);
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

    public static RobotEditCarDataDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RobotEditCarDataDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.robot_edit_car_data_dialog, viewGroup, false);
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
