package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogCollectNewCarModelBinding implements a {
    public final LinearLayout backLayout;
    public final TextView brand;
    public final LinearLayout brandLayout;
    public final ImageView closeIv;
    public final EditText etBack;
    public final EditText etFront;
    public final EditText etYear;
    public final LinearLayout frontLayout;
    public final ImageView line1;
    public final TextView okTv;
    private final FrameLayout rootView;
    public final TextView series;
    public final LinearLayout seriesLayout;
    public final TextView titleTv;
    public final LinearLayout yearLayout;

    private DialogCollectNewCarModelBinding(FrameLayout frameLayout, LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2, ImageView imageView, EditText editText, EditText editText2, EditText editText3, LinearLayout linearLayout3, ImageView imageView2, TextView textView2, TextView textView3, LinearLayout linearLayout4, TextView textView4, LinearLayout linearLayout5) {
        this.rootView = frameLayout;
        this.backLayout = linearLayout;
        this.brand = textView;
        this.brandLayout = linearLayout2;
        this.closeIv = imageView;
        this.etBack = editText;
        this.etFront = editText2;
        this.etYear = editText3;
        this.frontLayout = linearLayout3;
        this.line1 = imageView2;
        this.okTv = textView2;
        this.series = textView3;
        this.seriesLayout = linearLayout4;
        this.titleTv = textView4;
        this.yearLayout = linearLayout5;
    }

    public static DialogCollectNewCarModelBinding bind(View view) {
        int i = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.brand;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.brandLayout;
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                if (linearLayout2 != null) {
                    i = R.id.closeIv;
                    ImageView imageView = (ImageView) view.findViewById(i);
                    if (imageView != null) {
                        i = R.id.etBack;
                        EditText editText = (EditText) view.findViewById(i);
                        if (editText != null) {
                            i = R.id.etFront;
                            EditText editText2 = (EditText) view.findViewById(i);
                            if (editText2 != null) {
                                i = R.id.etYear;
                                EditText editText3 = (EditText) view.findViewById(i);
                                if (editText3 != null) {
                                    i = R.id.frontLayout;
                                    LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                                    if (linearLayout3 != null) {
                                        i = R.id.line1;
                                        ImageView imageView2 = (ImageView) view.findViewById(i);
                                        if (imageView2 != null) {
                                            i = R.id.okTv;
                                            TextView textView2 = (TextView) view.findViewById(i);
                                            if (textView2 != null) {
                                                i = R.id.series;
                                                TextView textView3 = (TextView) view.findViewById(i);
                                                if (textView3 != null) {
                                                    i = R.id.seriesLayout;
                                                    LinearLayout linearLayout4 = (LinearLayout) view.findViewById(i);
                                                    if (linearLayout4 != null) {
                                                        i = R.id.titleTv;
                                                        TextView textView4 = (TextView) view.findViewById(i);
                                                        if (textView4 != null) {
                                                            i = R.id.yearLayout;
                                                            LinearLayout linearLayout5 = (LinearLayout) view.findViewById(i);
                                                            if (linearLayout5 != null) {
                                                                return new DialogCollectNewCarModelBinding((FrameLayout) view, linearLayout, textView, linearLayout2, imageView, editText, editText2, editText3, linearLayout3, imageView2, textView2, textView3, linearLayout4, textView4, linearLayout5);
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

    public static DialogCollectNewCarModelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCollectNewCarModelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_collect_new_car_model, viewGroup, false);
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
