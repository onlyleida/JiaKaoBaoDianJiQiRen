package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogRadarDistanceBinding implements a {
    public final ImageView closeTv;
    public final RecyclerView dataRv;
    public final View divider;
    private final LinearLayout rootView;
    public final TextView titleTv;

    private DialogRadarDistanceBinding(LinearLayout linearLayout, ImageView imageView, RecyclerView recyclerView, View view, TextView textView) {
        this.rootView = linearLayout;
        this.closeTv = imageView;
        this.dataRv = recyclerView;
        this.divider = view;
        this.titleTv = textView;
    }

    public static DialogRadarDistanceBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.closeTv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.dataRv;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
                i = R.id.titleTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    return new DialogRadarDistanceBinding((LinearLayout) view, imageView, recyclerView, viewFindViewById, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogRadarDistanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogRadarDistanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_radar_distance, viewGroup, false);
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
