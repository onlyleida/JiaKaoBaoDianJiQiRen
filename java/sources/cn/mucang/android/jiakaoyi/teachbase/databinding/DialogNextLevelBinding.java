package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogNextLevelBinding implements a {
    public final TextView btnTv;
    public final ImageView closeIv;
    public final TextView descTv;
    public final TextView guideTv;
    public final TextView recommendTv;
    public final RecyclerView recyclerView;
    public final ImageView robotIv;
    private final ConstraintLayout rootView;
    public final TextView title1;
    public final TextView title2;
    public final TextView title3;
    public final TextView titleTv;

    private DialogNextLevelBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3, TextView textView4, RecyclerView recyclerView, ImageView imageView2, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.btnTv = textView;
        this.closeIv = imageView;
        this.descTv = textView2;
        this.guideTv = textView3;
        this.recommendTv = textView4;
        this.recyclerView = recyclerView;
        this.robotIv = imageView2;
        this.title1 = textView5;
        this.title2 = textView6;
        this.title3 = textView7;
        this.titleTv = textView8;
    }

    public static DialogNextLevelBinding bind(View view) {
        int i = R.id.btnTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.descTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.guideTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.recommendTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.recyclerView;
                            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                            if (recyclerView != null) {
                                i = R.id.robotIv;
                                ImageView imageView2 = (ImageView) view.findViewById(i);
                                if (imageView2 != null) {
                                    i = R.id.title1;
                                    TextView textView5 = (TextView) view.findViewById(i);
                                    if (textView5 != null) {
                                        i = R.id.title2;
                                        TextView textView6 = (TextView) view.findViewById(i);
                                        if (textView6 != null) {
                                            i = R.id.title3;
                                            TextView textView7 = (TextView) view.findViewById(i);
                                            if (textView7 != null) {
                                                i = R.id.titleTv;
                                                TextView textView8 = (TextView) view.findViewById(i);
                                                if (textView8 != null) {
                                                    return new DialogNextLevelBinding((ConstraintLayout) view, textView, imageView, textView2, textView3, textView4, recyclerView, imageView2, textView5, textView6, textView7, textView8);
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

    public static DialogNextLevelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogNextLevelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_next_level, viewGroup, false);
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
