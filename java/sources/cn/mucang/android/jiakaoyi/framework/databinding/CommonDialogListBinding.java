package cn.mucang.android.jiakaoyi.framework.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.R;

/* JADX INFO: loaded from: classes2.dex */
public final class CommonDialogListBinding implements a {
    public final ImageView closeIv;
    public final ListView dialogBtnBox;
    public final View dialogTitleDivider;
    public final TextView dialogTitleTv;
    private final RelativeLayout rootView;

    private CommonDialogListBinding(RelativeLayout relativeLayout, ImageView imageView, ListView listView, View view, TextView textView) {
        this.rootView = relativeLayout;
        this.closeIv = imageView;
        this.dialogBtnBox = listView;
        this.dialogTitleDivider = view;
        this.dialogTitleTv = textView;
    }

    public static CommonDialogListBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.dialog_btn_box;
            ListView listView = (ListView) view.findViewById(i);
            if (listView != null && (viewFindViewById = view.findViewById((i = R.id.dialog_title_divider))) != null) {
                i = R.id.dialog_title_tv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    return new CommonDialogListBinding((RelativeLayout) view, imageView, listView, viewFindViewById, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CommonDialogListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CommonDialogListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.common_dialog_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
