package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class CollectErrorItemBinding implements a {
    public final ImageView closeIv;
    public final CollectErrorSelectBinding correct;
    public final TextView desc;
    public final ConstraintLayout rootRv;
    private final ConstraintLayout rootView;
    public final CollectErrorSelectBinding select;
    public final Space space;
    public final TextView title;
    public final EditText valueEt;

    private CollectErrorItemBinding(ConstraintLayout constraintLayout, ImageView imageView, CollectErrorSelectBinding collectErrorSelectBinding, TextView textView, ConstraintLayout constraintLayout2, CollectErrorSelectBinding collectErrorSelectBinding2, Space space, TextView textView2, EditText editText) {
        this.rootView = constraintLayout;
        this.closeIv = imageView;
        this.correct = collectErrorSelectBinding;
        this.desc = textView;
        this.rootRv = constraintLayout2;
        this.select = collectErrorSelectBinding2;
        this.space = space;
        this.title = textView2;
        this.valueEt = editText;
    }

    public static CollectErrorItemBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.correct))) != null) {
            CollectErrorSelectBinding collectErrorSelectBindingBind = CollectErrorSelectBinding.bind(viewFindViewById);
            i = R.id.desc;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i = R.id.select;
                View viewFindViewById2 = view.findViewById(i);
                if (viewFindViewById2 != null) {
                    CollectErrorSelectBinding collectErrorSelectBindingBind2 = CollectErrorSelectBinding.bind(viewFindViewById2);
                    i = R.id.space;
                    Space space = (Space) view.findViewById(i);
                    if (space != null) {
                        i = R.id.title;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.valueEt;
                            EditText editText = (EditText) view.findViewById(i);
                            if (editText != null) {
                                return new CollectErrorItemBinding(constraintLayout, imageView, collectErrorSelectBindingBind, textView, constraintLayout, collectErrorSelectBindingBind2, space, textView2, editText);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CollectErrorItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CollectErrorItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.collect_error_item, viewGroup, false);
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
