package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityStudentLoginBinding implements a {
    public final ImageView appQrCode;
    public final TextView appQrCodeTip;
    public final LinearLayout back;
    public final TextView clearRecord;
    public final TtLayoutStudentQrcodeBinding gzStudent;
    public final EditText idCardNumber;
    public final TextView inertIcCardTip;
    public final TextView invalidAppQrCode;
    public final TextView login;
    public final TtIncludeBottomMountainBinding mountain;
    public final LinearLayout qrCodeLayout;
    public final RecyclerView recyclerView;
    public final RelativeLayout rlLayout;
    private final FrameLayout rootView;
    public final TextView title;

    private TtActivityStudentLoginBinding(FrameLayout frameLayout, ImageView imageView, TextView textView, LinearLayout linearLayout, TextView textView2, TtLayoutStudentQrcodeBinding ttLayoutStudentQrcodeBinding, EditText editText, TextView textView3, TextView textView4, TextView textView5, TtIncludeBottomMountainBinding ttIncludeBottomMountainBinding, LinearLayout linearLayout2, RecyclerView recyclerView, RelativeLayout relativeLayout, TextView textView6) {
        this.rootView = frameLayout;
        this.appQrCode = imageView;
        this.appQrCodeTip = textView;
        this.back = linearLayout;
        this.clearRecord = textView2;
        this.gzStudent = ttLayoutStudentQrcodeBinding;
        this.idCardNumber = editText;
        this.inertIcCardTip = textView3;
        this.invalidAppQrCode = textView4;
        this.login = textView5;
        this.mountain = ttIncludeBottomMountainBinding;
        this.qrCodeLayout = linearLayout2;
        this.recyclerView = recyclerView;
        this.rlLayout = relativeLayout;
        this.title = textView6;
    }

    public static TtActivityStudentLoginBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.app_qr_code);
        if (imageView != null) {
            TextView textView = (TextView) view.findViewById(R.id.app_qr_code_tip);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.back);
                if (linearLayout != null) {
                    TextView textView2 = (TextView) view.findViewById(R.id.clearRecord);
                    if (textView2 != null) {
                        View viewFindViewById = view.findViewById(R.id.gzStudent);
                        if (viewFindViewById != null) {
                            TtLayoutStudentQrcodeBinding ttLayoutStudentQrcodeBindingBind = TtLayoutStudentQrcodeBinding.bind(viewFindViewById);
                            EditText editText = (EditText) view.findViewById(R.id.id_card_number);
                            if (editText != null) {
                                TextView textView3 = (TextView) view.findViewById(R.id.inert_ic_card_tip);
                                if (textView3 != null) {
                                    TextView textView4 = (TextView) view.findViewById(R.id.invalid_app_qr_code);
                                    if (textView4 != null) {
                                        TextView textView5 = (TextView) view.findViewById(R.id.login);
                                        if (textView5 != null) {
                                            View viewFindViewById2 = view.findViewById(R.id.mountain);
                                            if (viewFindViewById2 != null) {
                                                TtIncludeBottomMountainBinding ttIncludeBottomMountainBindingBind = TtIncludeBottomMountainBinding.bind(viewFindViewById2);
                                                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.qr_code_layout);
                                                if (linearLayout2 != null) {
                                                    RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.recyclerView);
                                                    if (recyclerView != null) {
                                                        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.rlLayout);
                                                        if (relativeLayout != null) {
                                                            TextView textView6 = (TextView) view.findViewById(R.id.title);
                                                            if (textView6 != null) {
                                                                return new TtActivityStudentLoginBinding((FrameLayout) view, imageView, textView, linearLayout, textView2, ttLayoutStudentQrcodeBindingBind, editText, textView3, textView4, textView5, ttIncludeBottomMountainBindingBind, linearLayout2, recyclerView, relativeLayout, textView6);
                                                            }
                                                            str = "title";
                                                        } else {
                                                            str = "rlLayout";
                                                        }
                                                    } else {
                                                        str = "recyclerView";
                                                    }
                                                } else {
                                                    str = "qrCodeLayout";
                                                }
                                            } else {
                                                str = "mountain";
                                            }
                                        } else {
                                            str = "login";
                                        }
                                    } else {
                                        str = "invalidAppQrCode";
                                    }
                                } else {
                                    str = "inertIcCardTip";
                                }
                            } else {
                                str = "idCardNumber";
                            }
                        } else {
                            str = "gzStudent";
                        }
                    } else {
                        str = "clearRecord";
                    }
                } else {
                    str = "back";
                }
            } else {
                str = "appQrCodeTip";
            }
        } else {
            str = "appQrCode";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityStudentLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityStudentLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_student_login, viewGroup, false);
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
