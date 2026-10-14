package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogK3MultilaneCollectBinding implements a {
    public final ImageView back;
    public final View divider;
    public final TextView etMultilaneCount;
    public final ImageView imgAdd;
    public final RecyclerView recyclerView;
    private final FrameLayout rootView;
    public final TextView save;
    public final TextView title;
    public final TextView tvDesc;

    private DialogK3MultilaneCollectBinding(FrameLayout frameLayout, ImageView imageView, View view, TextView textView, ImageView imageView2, RecyclerView recyclerView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = frameLayout;
        this.back = imageView;
        this.divider = view;
        this.etMultilaneCount = textView;
        this.imgAdd = imageView2;
        this.recyclerView = recyclerView;
        this.save = textView2;
        this.title = textView3;
        this.tvDesc = textView4;
    }

    public static DialogK3MultilaneCollectBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.back;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
            i = R.id.et_multilane_count;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.img_add;
                ImageView imageView2 = (ImageView) view.findViewById(i);
                if (imageView2 != null) {
                    i = R.id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                    if (recyclerView != null) {
                        i = R.id.save;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.title;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.tv_desc;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null) {
                                    return new DialogK3MultilaneCollectBinding((FrameLayout) view, imageView, viewFindViewById, textView, imageView2, recyclerView, textView2, textView3, textView4);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogK3MultilaneCollectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogK3MultilaneCollectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_k3_multilane_collect, viewGroup, false);
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
