package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.TeachingTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityCarInfoBinding implements a {
    public final View bgView;
    public final TextView cityName;
    public final LinearLayout cityNameLayout;
    public final LinearLayout classDeviceLl;
    public final ImageView deviceIv;
    public final LinearLayout headLayout;
    public final LinearLayout modelLayout;
    public final TextView modelNameTv;
    public final LinearLayout nameLayout;
    public final TextView nameSchoolTv;
    public final LinearLayout numberLayout;
    public final TextView numberTv;
    public final TextView okTv;
    public final LinearLayout realCarLayout;
    public final TextView realCarTv;
    private final ConstraintLayout rootView;
    public final TeachingTitleBinding title;
    public final TextView typeTv;

    private ActivityCarInfoBinding(ConstraintLayout constraintLayout, View view, TextView textView, LinearLayout linearLayout, LinearLayout linearLayout2, ImageView imageView, LinearLayout linearLayout3, LinearLayout linearLayout4, TextView textView2, LinearLayout linearLayout5, TextView textView3, LinearLayout linearLayout6, TextView textView4, TextView textView5, LinearLayout linearLayout7, TextView textView6, TeachingTitleBinding teachingTitleBinding, TextView textView7) {
        this.rootView = constraintLayout;
        this.bgView = view;
        this.cityName = textView;
        this.cityNameLayout = linearLayout;
        this.classDeviceLl = linearLayout2;
        this.deviceIv = imageView;
        this.headLayout = linearLayout3;
        this.modelLayout = linearLayout4;
        this.modelNameTv = textView2;
        this.nameLayout = linearLayout5;
        this.nameSchoolTv = textView3;
        this.numberLayout = linearLayout6;
        this.numberTv = textView4;
        this.okTv = textView5;
        this.realCarLayout = linearLayout7;
        this.realCarTv = textView6;
        this.title = teachingTitleBinding;
        this.typeTv = textView7;
    }

    public static ActivityCarInfoBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.bgView;
        View viewFindViewById2 = view.findViewById(i);
        if (viewFindViewById2 != null) {
            i = R.id.cityName;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.cityNameLayout;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.classDeviceLl;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                    if (linearLayout2 != null) {
                        i = R.id.deviceIv;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            i = R.id.headLayout;
                            LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                            if (linearLayout3 != null) {
                                i = R.id.modelLayout;
                                LinearLayout linearLayout4 = (LinearLayout) view.findViewById(i);
                                if (linearLayout4 != null) {
                                    i = R.id.modelNameTv;
                                    TextView textView2 = (TextView) view.findViewById(i);
                                    if (textView2 != null) {
                                        i = R.id.nameLayout;
                                        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(i);
                                        if (linearLayout5 != null) {
                                            i = R.id.nameSchoolTv;
                                            TextView textView3 = (TextView) view.findViewById(i);
                                            if (textView3 != null) {
                                                i = R.id.numberLayout;
                                                LinearLayout linearLayout6 = (LinearLayout) view.findViewById(i);
                                                if (linearLayout6 != null) {
                                                    i = R.id.numberTv;
                                                    TextView textView4 = (TextView) view.findViewById(i);
                                                    if (textView4 != null) {
                                                        i = R.id.okTv;
                                                        TextView textView5 = (TextView) view.findViewById(i);
                                                        if (textView5 != null) {
                                                            i = R.id.realCarLayout;
                                                            LinearLayout linearLayout7 = (LinearLayout) view.findViewById(i);
                                                            if (linearLayout7 != null) {
                                                                i = R.id.realCarTv;
                                                                TextView textView6 = (TextView) view.findViewById(i);
                                                                if (textView6 != null && (viewFindViewById = view.findViewById((i = R.id.title))) != null) {
                                                                    TeachingTitleBinding teachingTitleBindingBind = TeachingTitleBinding.bind(viewFindViewById);
                                                                    i = R.id.typeTv;
                                                                    TextView textView7 = (TextView) view.findViewById(i);
                                                                    if (textView7 != null) {
                                                                        return new ActivityCarInfoBinding((ConstraintLayout) view, viewFindViewById2, textView, linearLayout, linearLayout2, imageView, linearLayout3, linearLayout4, textView2, linearLayout5, textView3, linearLayout6, textView4, textView5, linearLayout7, textView6, teachingTitleBindingBind, textView7);
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

    public static ActivityCarInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCarInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_car_info, viewGroup, false);
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
