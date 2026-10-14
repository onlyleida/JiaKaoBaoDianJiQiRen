package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ExamHpPreviewFragmentBinding implements a {
    public final Button btnMove;
    public final Button btnPreviewAll;
    public final Button btnZoom;
    public final ImageView closeIv;
    public final ConstraintLayout llExamInfo;
    public final MapView mapView;
    public final ProgressBar progress;
    private final ConstraintLayout rootView;
    public final TextView tvDebugInfo;
    public final TextView tvLeftSideDis;
    public final TextView tvMile;
    public final TextView tvNormalScale;
    public final TextView tvPressStatus;
    public final TextView tvRightSideDis;
    public final TextView tvRoadStatus;
    public final TextView tvScalePlus;
    public final TextView tvScaleSubtract;
    public final TextView tvStep;

    private ExamHpPreviewFragmentBinding(ConstraintLayout constraintLayout, Button button, Button button2, Button button3, ImageView imageView, ConstraintLayout constraintLayout2, MapView mapView, ProgressBar progressBar, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10) {
        this.rootView = constraintLayout;
        this.btnMove = button;
        this.btnPreviewAll = button2;
        this.btnZoom = button3;
        this.closeIv = imageView;
        this.llExamInfo = constraintLayout2;
        this.mapView = mapView;
        this.progress = progressBar;
        this.tvDebugInfo = textView;
        this.tvLeftSideDis = textView2;
        this.tvMile = textView3;
        this.tvNormalScale = textView4;
        this.tvPressStatus = textView5;
        this.tvRightSideDis = textView6;
        this.tvRoadStatus = textView7;
        this.tvScalePlus = textView8;
        this.tvScaleSubtract = textView9;
        this.tvStep = textView10;
    }

    public static ExamHpPreviewFragmentBinding bind(View view) {
        int i = R.id.btnMove;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.btn_preview_all;
            Button button2 = (Button) view.findViewById(i);
            if (button2 != null) {
                i = R.id.btnZoom;
                Button button3 = (Button) view.findViewById(i);
                if (button3 != null) {
                    i = R.id.closeIv;
                    ImageView imageView = (ImageView) view.findViewById(i);
                    if (imageView != null) {
                        i = R.id.ll_exam_info;
                        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                        if (constraintLayout != null) {
                            i = R.id.mapView;
                            MapView mapView = (MapView) view.findViewById(i);
                            if (mapView != null) {
                                i = R.id.progress;
                                ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                                if (progressBar != null) {
                                    i = R.id.tv_debug_info;
                                    TextView textView = (TextView) view.findViewById(i);
                                    if (textView != null) {
                                        i = R.id.tv_left_side_dis;
                                        TextView textView2 = (TextView) view.findViewById(i);
                                        if (textView2 != null) {
                                            i = R.id.tv_mile;
                                            TextView textView3 = (TextView) view.findViewById(i);
                                            if (textView3 != null) {
                                                i = R.id.tv_normal_scale;
                                                TextView textView4 = (TextView) view.findViewById(i);
                                                if (textView4 != null) {
                                                    i = R.id.tv_press_status;
                                                    TextView textView5 = (TextView) view.findViewById(i);
                                                    if (textView5 != null) {
                                                        i = R.id.tv_right_side_dis;
                                                        TextView textView6 = (TextView) view.findViewById(i);
                                                        if (textView6 != null) {
                                                            i = R.id.tv_road_status;
                                                            TextView textView7 = (TextView) view.findViewById(i);
                                                            if (textView7 != null) {
                                                                i = R.id.tv_scale_plus;
                                                                TextView textView8 = (TextView) view.findViewById(i);
                                                                if (textView8 != null) {
                                                                    i = R.id.tv_scale_subtract;
                                                                    TextView textView9 = (TextView) view.findViewById(i);
                                                                    if (textView9 != null) {
                                                                        i = R.id.tv_step;
                                                                        TextView textView10 = (TextView) view.findViewById(i);
                                                                        if (textView10 != null) {
                                                                            return new ExamHpPreviewFragmentBinding((ConstraintLayout) view, button, button2, button3, imageView, constraintLayout, mapView, progressBar, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10);
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

    public static ExamHpPreviewFragmentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamHpPreviewFragmentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_hp_preview_fragment, viewGroup, false);
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
