package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class K3SiteMapEditDialogBinding implements a {
    public final TextView cityName;
    public final LinearLayout cityNameLayout;
    public final ImageView closeIv;
    public final TextView gpsBase;
    public final LinearLayout gpsBaseLayout;
    public final ImageView isPublicIv;
    public final ImageView line1;
    public final TextView nameSite;
    public final TextView okTv;
    public final FrameLayout publicSiteLayout;
    private final FrameLayout rootView;
    public final LinearLayout siteNameLayout;
    public final TextView titleTv;
    public final TextView tvTips;

    private K3SiteMapEditDialogBinding(FrameLayout frameLayout, TextView textView, LinearLayout linearLayout, ImageView imageView, TextView textView2, LinearLayout linearLayout2, ImageView imageView2, ImageView imageView3, TextView textView3, TextView textView4, FrameLayout frameLayout2, LinearLayout linearLayout3, TextView textView5, TextView textView6) {
        this.rootView = frameLayout;
        this.cityName = textView;
        this.cityNameLayout = linearLayout;
        this.closeIv = imageView;
        this.gpsBase = textView2;
        this.gpsBaseLayout = linearLayout2;
        this.isPublicIv = imageView2;
        this.line1 = imageView3;
        this.nameSite = textView3;
        this.okTv = textView4;
        this.publicSiteLayout = frameLayout2;
        this.siteNameLayout = linearLayout3;
        this.titleTv = textView5;
        this.tvTips = textView6;
    }

    public static K3SiteMapEditDialogBinding bind(View view) {
        int i = R.id.cityName;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.cityNameLayout;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
            if (linearLayout != null) {
                i = R.id.closeIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.gpsBase;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.gpsBaseLayout;
                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                        if (linearLayout2 != null) {
                            i = R.id.isPublicIv;
                            ImageView imageView2 = (ImageView) view.findViewById(i);
                            if (imageView2 != null) {
                                i = R.id.line1;
                                ImageView imageView3 = (ImageView) view.findViewById(i);
                                if (imageView3 != null) {
                                    i = R.id.nameSite;
                                    TextView textView3 = (TextView) view.findViewById(i);
                                    if (textView3 != null) {
                                        i = R.id.okTv;
                                        TextView textView4 = (TextView) view.findViewById(i);
                                        if (textView4 != null) {
                                            i = R.id.publicSiteLayout;
                                            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                                            if (frameLayout != null) {
                                                i = R.id.siteNameLayout;
                                                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                                                if (linearLayout3 != null) {
                                                    i = R.id.titleTv;
                                                    TextView textView5 = (TextView) view.findViewById(i);
                                                    if (textView5 != null) {
                                                        i = R.id.tvTips;
                                                        TextView textView6 = (TextView) view.findViewById(i);
                                                        if (textView6 != null) {
                                                            return new K3SiteMapEditDialogBinding((FrameLayout) view, textView, linearLayout, imageView, textView2, linearLayout2, imageView2, imageView3, textView3, textView4, frameLayout, linearLayout3, textView5, textView6);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static K3SiteMapEditDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static K3SiteMapEditDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.k3_site_map_edit_dialog, viewGroup, false);
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
