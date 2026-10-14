package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.entity.ExtraKey;
import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityCoachInfoBinding implements a {
    public final ImageView avatar;
    public final TextView coachNo;
    public final TextView idCardNum;
    public final LinearLayout lightingVoice;
    public final TextView name;
    private final RelativeLayout rootView;
    public final LinearLayout signOut;
    public final LinearLayout studentSignIn;
    public final TextView teachType;

    private TtActivityCoachInfoBinding(RelativeLayout relativeLayout, ImageView imageView, TextView textView, TextView textView2, LinearLayout linearLayout, TextView textView3, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView4) {
        this.rootView = relativeLayout;
        this.avatar = imageView;
        this.coachNo = textView;
        this.idCardNum = textView2;
        this.lightingVoice = linearLayout;
        this.name = textView3;
        this.signOut = linearLayout2;
        this.studentSignIn = linearLayout3;
        this.teachType = textView4;
    }

    public static TtActivityCoachInfoBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.avatar);
        if (imageView != null) {
            TextView textView = (TextView) view.findViewById(R.id.coach_no);
            if (textView != null) {
                TextView textView2 = (TextView) view.findViewById(R.id.id_card_num);
                if (textView2 != null) {
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.lighting_voice);
                    if (linearLayout != null) {
                        TextView textView3 = (TextView) view.findViewById(R.id.name);
                        if (textView3 != null) {
                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.sign_out);
                            if (linearLayout2 != null) {
                                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.student_sign_in);
                                if (linearLayout3 != null) {
                                    TextView textView4 = (TextView) view.findViewById(R.id.teach_type);
                                    if (textView4 != null) {
                                        return new TtActivityCoachInfoBinding((RelativeLayout) view, imageView, textView, textView2, linearLayout, textView3, linearLayout2, linearLayout3, textView4);
                                    }
                                    str = "teachType";
                                } else {
                                    str = "studentSignIn";
                                }
                            } else {
                                str = "signOut";
                            }
                        } else {
                            str = Constant.PROTOCOL_WEBVIEW_NAME;
                        }
                    } else {
                        str = "lightingVoice";
                    }
                } else {
                    str = "idCardNum";
                }
            } else {
                str = "coachNo";
            }
        } else {
            str = ExtraKey.avatar;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityCoachInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityCoachInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_coach_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
