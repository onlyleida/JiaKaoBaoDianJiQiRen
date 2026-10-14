package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.CommonViewPager;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.entity.ExtraKey;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityStudentInfoBinding implements a {
    public final ImageView avatar;
    public final ConstraintLayout leftLayout;
    public final LinearLayout llBack;
    public final CommonViewPager pager;
    public final CommonViewPager pagerVoice;
    public final LinearLayout playTts;
    public final LinearLayout rightLayout;
    public final LinearLayout rlLayout;
    private final LinearLayout rootView;
    public final LinearLayout signOut;
    public final MagicIndicator tab;
    public final MagicIndicator tabVoice;
    public final LinearLayout takeCoachPhoto;
    public final LinearLayout takePhoto;
    public final TextView tvDelay;
    public final TextView tvDelayNum;
    public final LinearLayout voiceLayout;

    private TtActivityStudentInfoBinding(LinearLayout linearLayout, ImageView imageView, ConstraintLayout constraintLayout, LinearLayout linearLayout2, CommonViewPager commonViewPager, CommonViewPager commonViewPager2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, MagicIndicator magicIndicator, MagicIndicator magicIndicator2, LinearLayout linearLayout7, LinearLayout linearLayout8, TextView textView, TextView textView2, LinearLayout linearLayout9) {
        this.rootView = linearLayout;
        this.avatar = imageView;
        this.leftLayout = constraintLayout;
        this.llBack = linearLayout2;
        this.pager = commonViewPager;
        this.pagerVoice = commonViewPager2;
        this.playTts = linearLayout3;
        this.rightLayout = linearLayout4;
        this.rlLayout = linearLayout5;
        this.signOut = linearLayout6;
        this.tab = magicIndicator;
        this.tabVoice = magicIndicator2;
        this.takeCoachPhoto = linearLayout7;
        this.takePhoto = linearLayout8;
        this.tvDelay = textView;
        this.tvDelayNum = textView2;
        this.voiceLayout = linearLayout9;
    }

    public static TtActivityStudentInfoBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.avatar);
        if (imageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(R.id.left_layout);
            if (constraintLayout != null) {
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.llBack);
                if (linearLayout != null) {
                    CommonViewPager commonViewPager = (CommonViewPager) view.findViewById(R.id.pager);
                    if (commonViewPager != null) {
                        CommonViewPager commonViewPager2 = (CommonViewPager) view.findViewById(R.id.pager_voice);
                        if (commonViewPager2 != null) {
                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.playTts);
                            if (linearLayout2 != null) {
                                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.right_layout);
                                if (linearLayout3 != null) {
                                    LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.rlLayout);
                                    if (linearLayout4 != null) {
                                        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.sign_out);
                                        if (linearLayout5 != null) {
                                            MagicIndicator magicIndicator = (MagicIndicator) view.findViewById(R.id.tab);
                                            if (magicIndicator != null) {
                                                MagicIndicator magicIndicator2 = (MagicIndicator) view.findViewById(R.id.tab_voice);
                                                if (magicIndicator2 != null) {
                                                    LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.takeCoachPhoto);
                                                    if (linearLayout6 != null) {
                                                        LinearLayout linearLayout7 = (LinearLayout) view.findViewById(R.id.takePhoto);
                                                        if (linearLayout7 != null) {
                                                            TextView textView = (TextView) view.findViewById(R.id.tvDelay);
                                                            if (textView != null) {
                                                                TextView textView2 = (TextView) view.findViewById(R.id.tvDelayNum);
                                                                if (textView2 != null) {
                                                                    LinearLayout linearLayout8 = (LinearLayout) view.findViewById(R.id.voice_layout);
                                                                    if (linearLayout8 != null) {
                                                                        return new TtActivityStudentInfoBinding((LinearLayout) view, imageView, constraintLayout, linearLayout, commonViewPager, commonViewPager2, linearLayout2, linearLayout3, linearLayout4, linearLayout5, magicIndicator, magicIndicator2, linearLayout6, linearLayout7, textView, textView2, linearLayout8);
                                                                    }
                                                                    str = "voiceLayout";
                                                                } else {
                                                                    str = "tvDelayNum";
                                                                }
                                                            } else {
                                                                str = "tvDelay";
                                                            }
                                                        } else {
                                                            str = "takePhoto";
                                                        }
                                                    } else {
                                                        str = "takeCoachPhoto";
                                                    }
                                                } else {
                                                    str = "tabVoice";
                                                }
                                            } else {
                                                str = "tab";
                                            }
                                        } else {
                                            str = "signOut";
                                        }
                                    } else {
                                        str = "rlLayout";
                                    }
                                } else {
                                    str = "rightLayout";
                                }
                            } else {
                                str = "playTts";
                            }
                        } else {
                            str = "pagerVoice";
                        }
                    } else {
                        str = "pager";
                    }
                } else {
                    str = "llBack";
                }
            } else {
                str = "leftLayout";
            }
        } else {
            str = ExtraKey.avatar;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityStudentInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityStudentInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_student_info, viewGroup, false);
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
