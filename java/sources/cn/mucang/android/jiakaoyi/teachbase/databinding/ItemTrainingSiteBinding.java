package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemTrainingSiteBinding implements a {
    public final TextView areaTv;
    public final TextView connectBaseTv;
    public final TextView descFence;
    public final View divider;
    public final ImageView enableTv;
    public final TextView migrateTv;
    public final TextView nameTv;
    public final LinearLayout operationLl;
    public final TextView previewTv;
    private final ConstraintLayout rootView;
    public final TextView routeTv;
    public final TextView safeTv;
    public final Spinner spFence;
    public final TextView teachPlanTv;

    private ItemTrainingSiteBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, View view, ImageView imageView, TextView textView4, TextView textView5, LinearLayout linearLayout, TextView textView6, TextView textView7, TextView textView8, Spinner spinner, TextView textView9) {
        this.rootView = constraintLayout;
        this.areaTv = textView;
        this.connectBaseTv = textView2;
        this.descFence = textView3;
        this.divider = view;
        this.enableTv = imageView;
        this.migrateTv = textView4;
        this.nameTv = textView5;
        this.operationLl = linearLayout;
        this.previewTv = textView6;
        this.routeTv = textView7;
        this.safeTv = textView8;
        this.spFence = spinner;
        this.teachPlanTv = textView9;
    }

    public static ItemTrainingSiteBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.areaTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.connectBaseTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.descFence;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
                    i = R.id.enableTv;
                    ImageView imageView = (ImageView) view.findViewById(i);
                    if (imageView != null) {
                        i = R.id.migrateTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.nameTv;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.operationLl;
                                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                if (linearLayout != null) {
                                    i = R.id.previewTv;
                                    TextView textView6 = (TextView) view.findViewById(i);
                                    if (textView6 != null) {
                                        i = R.id.routeTv;
                                        TextView textView7 = (TextView) view.findViewById(i);
                                        if (textView7 != null) {
                                            i = R.id.safeTv;
                                            TextView textView8 = (TextView) view.findViewById(i);
                                            if (textView8 != null) {
                                                i = R.id.spFence;
                                                Spinner spinner = (Spinner) view.findViewById(i);
                                                if (spinner != null) {
                                                    i = R.id.teachPlanTv;
                                                    TextView textView9 = (TextView) view.findViewById(i);
                                                    if (textView9 != null) {
                                                        return new ItemTrainingSiteBinding((ConstraintLayout) view, textView, textView2, textView3, viewFindViewById, imageView, textView4, textView5, linearLayout, textView6, textView7, textView8, spinner, textView9);
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

    public static ItemTrainingSiteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemTrainingSiteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_training_site, viewGroup, false);
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
