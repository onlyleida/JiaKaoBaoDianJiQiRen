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
public final class EditCarDataDialogBinding implements a {
    public final ImageView closeIv;
    public final ImageView line1;
    public final LinearLayout modelLayout;
    public final TextView modelNameTv;
    public final LinearLayout nameLayout;
    public final EditText nameSchoolTv;
    public final LinearLayout numberLayout;
    public final EditText numberTv;
    public final TextView okTv;
    private final FrameLayout rootView;
    public final TextView titleTv;

    private EditCarDataDialogBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2, EditText editText, LinearLayout linearLayout3, EditText editText2, TextView textView2, TextView textView3) {
        this.rootView = frameLayout;
        this.closeIv = imageView;
        this.line1 = imageView2;
        this.modelLayout = linearLayout;
        this.modelNameTv = textView;
        this.nameLayout = linearLayout2;
        this.nameSchoolTv = editText;
        this.numberLayout = linearLayout3;
        this.numberTv = editText2;
        this.okTv = textView2;
        this.titleTv = textView3;
    }

    public static EditCarDataDialogBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.line1;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.modelLayout;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.modelNameTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.nameLayout;
                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                        if (linearLayout2 != null) {
                            i = R.id.nameSchoolTv;
                            EditText editText = (EditText) view.findViewById(i);
                            if (editText != null) {
                                i = R.id.numberLayout;
                                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                                if (linearLayout3 != null) {
                                    i = R.id.numberTv;
                                    EditText editText2 = (EditText) view.findViewById(i);
                                    if (editText2 != null) {
                                        i = R.id.okTv;
                                        TextView textView2 = (TextView) view.findViewById(i);
                                        if (textView2 != null) {
                                            i = R.id.titleTv;
                                            TextView textView3 = (TextView) view.findViewById(i);
                                            if (textView3 != null) {
                                                return new EditCarDataDialogBinding((FrameLayout) view, imageView, imageView2, linearLayout, textView, linearLayout2, editText, linearLayout3, editText2, textView2, textView3);
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

    public static EditCarDataDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static EditCarDataDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.edit_car_data_dialog, viewGroup, false);
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
