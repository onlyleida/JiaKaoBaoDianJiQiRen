package cn.mucang.android.jiakaoyi.framework.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.R;

/* JADX INFO: loaded from: classes2.dex */
public final class CommonDialogListItemBinding implements a {
    public final View divider;
    public final TextView nameTv;
    private final LinearLayout rootView;
    public final ImageView selectedIv;

    private CommonDialogListItemBinding(LinearLayout linearLayout, View view, TextView textView, ImageView imageView) {
        this.rootView = linearLayout;
        this.divider = view;
        this.nameTv = textView;
        this.selectedIv = imageView;
    }

    public static CommonDialogListItemBinding bind(View view) {
        int i = R.id.divider;
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            i = R.id.nameTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.selectedIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    return new CommonDialogListItemBinding((LinearLayout) view, viewFindViewById, textView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CommonDialogListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CommonDialogListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.common_dialog_list_item, viewGroup, false);
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
