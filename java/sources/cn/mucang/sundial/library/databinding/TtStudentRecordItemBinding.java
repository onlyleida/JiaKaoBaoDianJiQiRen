package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class TtStudentRecordItemBinding implements a {
    public final ImageView cancel;
    public final TextView desc;
    public final LinearLayout llLayout;
    public final TextView name;
    private final LinearLayout rootView;

    private TtStudentRecordItemBinding(LinearLayout linearLayout, ImageView imageView, TextView textView, LinearLayout linearLayout2, TextView textView2) {
        this.rootView = linearLayout;
        this.cancel = imageView;
        this.desc = textView;
        this.llLayout = linearLayout2;
        this.name = textView2;
    }

    public static TtStudentRecordItemBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.cancel);
        if (imageView != null) {
            TextView textView = (TextView) view.findViewById(R.id.desc);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.llLayout);
                if (linearLayout != null) {
                    TextView textView2 = (TextView) view.findViewById(R.id.name);
                    if (textView2 != null) {
                        return new TtStudentRecordItemBinding((LinearLayout) view, imageView, textView, linearLayout, textView2);
                    }
                    str = Constant.PROTOCOL_WEBVIEW_NAME;
                } else {
                    str = "llLayout";
                }
            } else {
                str = SocialConstants.PARAM_APP_DESC;
            }
        } else {
            str = "cancel";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtStudentRecordItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtStudentRecordItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__student_record_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
