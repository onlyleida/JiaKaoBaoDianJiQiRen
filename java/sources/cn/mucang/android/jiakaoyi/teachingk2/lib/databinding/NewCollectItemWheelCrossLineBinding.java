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
public final class NewCollectItemWheelCrossLineBinding implements a {
    public final ImageView deleteIv;
    public final TextView name;
    private final ConstraintLayout rootView;
    public final TextView title1;
    public final TextView title2;
    public final EditText wheelEt;

    private NewCollectItemWheelCrossLineBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3, EditText editText) {
        this.rootView = constraintLayout;
        this.deleteIv = imageView;
        this.name = textView;
        this.title1 = textView2;
        this.title2 = textView3;
        this.wheelEt = editText;
    }

    public static NewCollectItemWheelCrossLineBinding bind(View view) {
        int i = R.id.deleteIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.name;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.title1;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.title2;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.wheelEt;
                        EditText editText = (EditText) view.findViewById(i);
                        if (editText != null) {
                            return new NewCollectItemWheelCrossLineBinding((ConstraintLayout) view, imageView, textView, textView2, textView3, editText);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static NewCollectItemWheelCrossLineBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemWheelCrossLineBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_wheel_cross_line, viewGroup, false);
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
