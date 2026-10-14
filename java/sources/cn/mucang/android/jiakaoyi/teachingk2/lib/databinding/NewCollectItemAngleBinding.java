package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCollectItemAngleBinding implements a {
    public final ImageView deleteIv;
    public final TextView name;
    public final EditText precisionEt;
    public final ImageView refresh;
    private final ConstraintLayout rootView;
    public final TextView title1;
    public final EditText valueEt;

    private NewCollectItemAngleBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, EditText editText, ImageView imageView2, TextView textView2, EditText editText2) {
        this.rootView = constraintLayout;
        this.deleteIv = imageView;
        this.name = textView;
        this.precisionEt = editText;
        this.refresh = imageView2;
        this.title1 = textView2;
        this.valueEt = editText2;
    }

    public static NewCollectItemAngleBinding bind(View view) {
        int i = R.id.deleteIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.name;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.precisionEt;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.refresh;
                    ImageView imageView2 = (ImageView) view.findViewById(i);
                    if (imageView2 != null) {
                        i = R.id.title1;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.valueEt;
                            EditText editText2 = (EditText) view.findViewById(i);
                            if (editText2 != null) {
                                return new NewCollectItemAngleBinding((ConstraintLayout) view, imageView, textView, editText, imageView2, textView2, editText2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemAngleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemAngleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_angle, viewGroup, false);
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
