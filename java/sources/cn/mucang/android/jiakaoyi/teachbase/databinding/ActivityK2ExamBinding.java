package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangImageView;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityK2ExamBinding implements a {
    public final MucangImageView avatarIv;
    public final TextView carModelTv;
    public final TextView collect;
    public final TextView deductDetailTv;
    public final FrameLayout deductFl;
    public final RecyclerView deductList;
    public final TextView examTimeTv;
    public final K2ExamHeaderBinding header;
    public final TextView infoTv;
    public final ImageView leftLightIv;
    public final TextView lightTimeTv;
    public final MapView map;
    public final FrameLayout mapFl;
    public final TextView nameTv;
    public final ImageView rightLightIv;
    private final ConstraintLayout rootView;
    public final TextView scoreTv;
    public final TextView settingTv;
    public final LinearLayout siteLl;
    public final TextView siteTv;
    public final TextView startExamTv;

    private ActivityK2ExamBinding(ConstraintLayout constraintLayout, MucangImageView mucangImageView, TextView textView, TextView textView2, TextView textView3, FrameLayout frameLayout, RecyclerView recyclerView, TextView textView4, K2ExamHeaderBinding k2ExamHeaderBinding, TextView textView5, ImageView imageView, TextView textView6, MapView mapView, FrameLayout frameLayout2, TextView textView7, ImageView imageView2, TextView textView8, TextView textView9, LinearLayout linearLayout, TextView textView10, TextView textView11) {
        this.rootView = constraintLayout;
        this.avatarIv = mucangImageView;
        this.carModelTv = textView;
        this.collect = textView2;
        this.deductDetailTv = textView3;
        this.deductFl = frameLayout;
        this.deductList = recyclerView;
        this.examTimeTv = textView4;
        this.header = k2ExamHeaderBinding;
        this.infoTv = textView5;
        this.leftLightIv = imageView;
        this.lightTimeTv = textView6;
        this.map = mapView;
        this.mapFl = frameLayout2;
        this.nameTv = textView7;
        this.rightLightIv = imageView2;
        this.scoreTv = textView8;
        this.settingTv = textView9;
        this.siteLl = linearLayout;
        this.siteTv = textView10;
        this.startExamTv = textView11;
    }

    public static ActivityK2ExamBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.avatarIv;
        MucangImageView mucangImageView = (MucangImageView) view.findViewById(i);
        if (mucangImageView != null) {
            i = R.id.carModelTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.collect;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.deductDetailTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.deductFl;
                        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                        if (frameLayout != null) {
                            i = R.id.deductList;
                            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                            if (recyclerView != null) {
                                i = R.id.examTimeTv;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null && (viewFindViewById = view.findViewById((i = R.id.header))) != null) {
                                    K2ExamHeaderBinding k2ExamHeaderBindingBind = K2ExamHeaderBinding.bind(viewFindViewById);
                                    i = R.id.infoTv;
                                    TextView textView5 = (TextView) view.findViewById(i);
                                    if (textView5 != null) {
                                        i = R.id.leftLightIv;
                                        ImageView imageView = (ImageView) view.findViewById(i);
                                        if (imageView != null) {
                                            i = R.id.lightTimeTv;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                i = R.id.map;
                                                MapView mapView = (MapView) view.findViewById(i);
                                                if (mapView != null) {
                                                    i = R.id.mapFl;
                                                    FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                                                    if (frameLayout2 != null) {
                                                        i = R.id.nameTv;
                                                        TextView textView7 = (TextView) view.findViewById(i);
                                                        if (textView7 != null) {
                                                            i = R.id.rightLightIv;
                                                            ImageView imageView2 = (ImageView) view.findViewById(i);
                                                            if (imageView2 != null) {
                                                                i = R.id.scoreTv;
                                                                TextView textView8 = (TextView) view.findViewById(i);
                                                                if (textView8 != null) {
                                                                    i = R.id.settingTv;
                                                                    TextView textView9 = (TextView) view.findViewById(i);
                                                                    if (textView9 != null) {
                                                                        i = R.id.siteLl;
                                                                        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                                                        if (linearLayout != null) {
                                                                            i = R.id.siteTv;
                                                                            TextView textView10 = (TextView) view.findViewById(i);
                                                                            if (textView10 != null) {
                                                                                i = R.id.startExamTv;
                                                                                TextView textView11 = (TextView) view.findViewById(i);
                                                                                if (textView11 != null) {
                                                                                    return new ActivityK2ExamBinding((ConstraintLayout) view, mucangImageView, textView, textView2, textView3, frameLayout, recyclerView, textView4, k2ExamHeaderBindingBind, textView5, imageView, textView6, mapView, frameLayout2, textView7, imageView2, textView8, textView9, linearLayout, textView10, textView11);
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

    public static ActivityK2ExamBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityK2ExamBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_k2_exam, viewGroup, false);
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
