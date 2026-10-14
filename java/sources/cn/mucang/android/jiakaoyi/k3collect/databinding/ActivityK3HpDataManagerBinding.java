package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityK3HpDataManagerBinding implements a {
    public final ConstraintLayout carDataManager;
    public final TextView gpsTv;
    public final ImageView ivCarData;
    public final ImageView ivMapData;
    public final ConstraintLayout mapDataManager;
    private final ConstraintLayout rootView;
    public final CommonTitleBinding titleLayout;
    public final TextView tvCarTitle;
    public final TextView tvGpsSetup;
    public final TextView tvMapData;

    private ActivityK3HpDataManagerBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, TextView textView, ImageView imageView, ImageView imageView2, ConstraintLayout constraintLayout3, CommonTitleBinding commonTitleBinding, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.carDataManager = constraintLayout2;
        this.gpsTv = textView;
        this.ivCarData = imageView;
        this.ivMapData = imageView2;
        this.mapDataManager = constraintLayout3;
        this.titleLayout = commonTitleBinding;
        this.tvCarTitle = textView2;
        this.tvGpsSetup = textView3;
        this.tvMapData = textView4;
    }

    public static ActivityK3HpDataManagerBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.carDataManager;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
        if (constraintLayout != null) {
            i = R.id.gpsTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.ivCarData;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.ivMapData;
                    ImageView imageView2 = (ImageView) view.findViewById(i);
                    if (imageView2 != null) {
                        i = R.id.mapDataManager;
                        ConstraintLayout constraintLayout2 = (ConstraintLayout) view.findViewById(i);
                        if (constraintLayout2 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                            CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                            i = R.id.tvCarTitle;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.tv_gps_setup;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.tvMapData;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        return new ActivityK3HpDataManagerBinding((ConstraintLayout) view, constraintLayout, textView, imageView, imageView2, constraintLayout2, commonTitleBindingBind, textView2, textView3, textView4);
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

    public static ActivityK3HpDataManagerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityK3HpDataManagerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_k3_hp_data_manager, viewGroup, false);
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
