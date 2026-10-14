package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCollectItemCarCrossLineBinding implements a {
    public final ImageView deleteIv;
    public final CheckBox lineCb;
    public final TextView name;
    private final ConstraintLayout rootView;
    public final CheckBox touchCb;

    private NewCollectItemCarCrossLineBinding(ConstraintLayout constraintLayout, ImageView imageView, CheckBox checkBox, TextView textView, CheckBox checkBox2) {
        this.rootView = constraintLayout;
        this.deleteIv = imageView;
        this.lineCb = checkBox;
        this.name = textView;
        this.touchCb = checkBox2;
    }

    public static NewCollectItemCarCrossLineBinding bind(View view) {
        int i = R.id.deleteIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.lineCb;
            CheckBox checkBox = (CheckBox) view.findViewById(i);
            if (checkBox != null) {
                i = R.id.name;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.touchCb;
                    CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                    if (checkBox2 != null) {
                        return new NewCollectItemCarCrossLineBinding((ConstraintLayout) view, imageView, checkBox, textView, checkBox2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemCarCrossLineBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemCarCrossLineBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_car_cross_line, viewGroup, false);
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
