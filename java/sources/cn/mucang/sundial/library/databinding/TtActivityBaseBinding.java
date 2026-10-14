package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityBaseBinding implements a {
    public final TextView carNum;
    public final LinearLayout collapse;
    public final TextView debugSpeed;
    public final TextureView dummyTexture;
    public final LinearLayout layoutContainer;
    public final TextView leftTransBtn;
    private final FrameLayout rootView;
    public final TextView selfCheck;
    public final TextView terminalImei;
    public final TextView version;

    private TtActivityBaseBinding(FrameLayout frameLayout, TextView textView, LinearLayout linearLayout, TextView textView2, TextureView textureView, LinearLayout linearLayout2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = frameLayout;
        this.carNum = textView;
        this.collapse = linearLayout;
        this.debugSpeed = textView2;
        this.dummyTexture = textureView;
        this.layoutContainer = linearLayout2;
        this.leftTransBtn = textView3;
        this.selfCheck = textView4;
        this.terminalImei = textView5;
        this.version = textView6;
    }

    public static TtActivityBaseBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.car_num);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.collapse);
            if (linearLayout != null) {
                TextView textView2 = (TextView) view.findViewById(R.id.debug_speed);
                if (textView2 != null) {
                    TextureView textureView = (TextureView) view.findViewById(R.id.dummy_texture);
                    if (textureView != null) {
                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.layout_container);
                        if (linearLayout2 != null) {
                            TextView textView3 = (TextView) view.findViewById(R.id.left_trans_btn);
                            if (textView3 != null) {
                                TextView textView4 = (TextView) view.findViewById(R.id.self_check);
                                if (textView4 != null) {
                                    TextView textView5 = (TextView) view.findViewById(R.id.terminal_imei);
                                    if (textView5 != null) {
                                        TextView textView6 = (TextView) view.findViewById(R.id.version);
                                        if (textView6 != null) {
                                            return new TtActivityBaseBinding((FrameLayout) view, textView, linearLayout, textView2, textureView, linearLayout2, textView3, textView4, textView5, textView6);
                                        }
                                        str = "version";
                                    } else {
                                        str = "terminalImei";
                                    }
                                } else {
                                    str = "selfCheck";
                                }
                            } else {
                                str = "leftTransBtn";
                            }
                        } else {
                            str = "layoutContainer";
                        }
                    } else {
                        str = "dummyTexture";
                    }
                } else {
                    str = "debugSpeed";
                }
            } else {
                str = "collapse";
            }
        } else {
            str = "carNum";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityBaseBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityBaseBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_base, viewGroup, false);
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
