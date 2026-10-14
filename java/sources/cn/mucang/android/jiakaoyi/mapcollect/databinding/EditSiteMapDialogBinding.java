package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class EditSiteMapDialogBinding implements a {
    public final TextView cityName;
    public final LinearLayout cityNameLayout;
    public final ImageView closeIv;
    public final TextView gpsBase;
    public final LinearLayout gpsBaseLayout;
    public final ImageView isPublicIv;
    public final ImageView line1;
    public final ImageView line3;
    public final LinearLayout nameLayout;
    public final EditText nameSchool;
    public final EditText nameSite;
    public final TextView okTv;
    public final FrameLayout publicLayout;
    private final FrameLayout rootView;
    public final LinearLayout siteNameLayout;
    public final TextView titleTv;

    private EditSiteMapDialogBinding(FrameLayout frameLayout, TextView textView, LinearLayout linearLayout, ImageView imageView, TextView textView2, LinearLayout linearLayout2, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout3, EditText editText, EditText editText2, TextView textView3, FrameLayout frameLayout2, LinearLayout linearLayout4, TextView textView4) {
        this.rootView = frameLayout;
        this.cityName = textView;
        this.cityNameLayout = linearLayout;
        this.closeIv = imageView;
        this.gpsBase = textView2;
        this.gpsBaseLayout = linearLayout2;
        this.isPublicIv = imageView2;
        this.line1 = imageView3;
        this.line3 = imageView4;
        this.nameLayout = linearLayout3;
        this.nameSchool = editText;
        this.nameSite = editText2;
        this.okTv = textView3;
        this.publicLayout = frameLayout2;
        this.siteNameLayout = linearLayout4;
        this.titleTv = textView4;
    }

    public static EditSiteMapDialogBinding bind(View view) {
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
                                    i = R.id.line3;
                                    ImageView imageView4 = (ImageView) view.findViewById(i);
                                    if (imageView4 != null) {
                                        i = R.id.nameLayout;
                                        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                                        if (linearLayout3 != null) {
                                            i = R.id.nameSchool;
                                            EditText editText = (EditText) view.findViewById(i);
                                            if (editText != null) {
                                                i = R.id.nameSite;
                                                EditText editText2 = (EditText) view.findViewById(i);
                                                if (editText2 != null) {
                                                    i = R.id.okTv;
                                                    TextView textView3 = (TextView) view.findViewById(i);
                                                    if (textView3 != null) {
                                                        i = R.id.publicLayout;
                                                        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                                                        if (frameLayout != null) {
                                                            i = R.id.siteNameLayout;
                                                            LinearLayout linearLayout4 = (LinearLayout) view.findViewById(i);
                                                            if (linearLayout4 != null) {
                                                                i = R.id.titleTv;
                                                                TextView textView4 = (TextView) view.findViewById(i);
                                                                if (textView4 != null) {
                                                                    return new EditSiteMapDialogBinding((FrameLayout) view, textView, linearLayout, imageView, textView2, linearLayout2, imageView2, imageView3, imageView4, linearLayout3, editText, editText2, textView3, frameLayout, linearLayout4, textView4);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static EditSiteMapDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static EditSiteMapDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.edit_site_map_dialog, viewGroup, false);
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
