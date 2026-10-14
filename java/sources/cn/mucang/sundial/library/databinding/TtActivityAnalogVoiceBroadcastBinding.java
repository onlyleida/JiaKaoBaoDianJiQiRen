package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.CommonViewPager;
import cn.mucang.sundial.library.R;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityAnalogVoiceBroadcastBinding implements a {
    public final LinearLayout llBack;
    public final CommonViewPager pager;
    private final LinearLayout rootView;
    public final MagicIndicator tab;

    private TtActivityAnalogVoiceBroadcastBinding(LinearLayout linearLayout, LinearLayout linearLayout2, CommonViewPager commonViewPager, MagicIndicator magicIndicator) {
        this.rootView = linearLayout;
        this.llBack = linearLayout2;
        this.pager = commonViewPager;
        this.tab = magicIndicator;
    }

    public static TtActivityAnalogVoiceBroadcastBinding bind(View view) {
        String str;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.llBack);
        if (linearLayout != null) {
            CommonViewPager commonViewPager = (CommonViewPager) view.findViewById(R.id.pager);
            if (commonViewPager != null) {
                MagicIndicator magicIndicator = (MagicIndicator) view.findViewById(R.id.tab);
                if (magicIndicator != null) {
                    return new TtActivityAnalogVoiceBroadcastBinding((LinearLayout) view, linearLayout, commonViewPager, magicIndicator);
                }
                str = "tab";
            } else {
                str = "pager";
            }
        } else {
            str = "llBack";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityAnalogVoiceBroadcastBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityAnalogVoiceBroadcastBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_analog_voice_broadcast, viewGroup, false);
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
