package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtPhotoRecordItemBinding implements a {
    public final TextView date;
    public final ImageView icon;
    public final LinearLayout llLayout;
    private final LinearLayout rootView;
    public final TextView time;

    private TtPhotoRecordItemBinding(LinearLayout linearLayout, TextView textView, ImageView imageView, LinearLayout linearLayout2, TextView textView2) {
        this.rootView = linearLayout;
        this.date = textView;
        this.icon = imageView;
        this.llLayout = linearLayout2;
        this.time = textView2;
    }

    public static TtPhotoRecordItemBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.date);
        if (textView != null) {
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.llLayout);
                if (linearLayout != null) {
                    TextView textView2 = (TextView) view.findViewById(R.id.time);
                    if (textView2 != null) {
                        return new TtPhotoRecordItemBinding((LinearLayout) view, textView, imageView, linearLayout, textView2);
                    }
                    str = "time";
                } else {
                    str = "llLayout";
                }
            } else {
                str = "icon";
            }
        } else {
            str = "date";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtPhotoRecordItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtPhotoRecordItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__photo_record_item, viewGroup, false);
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
