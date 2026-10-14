package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangRoundCornerImageView;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentCollectFormBinding implements a {
    public final ImageView addImageIv;
    public final ImageView addVideoIv;
    public final ImageView closeIv;
    public final TextView gearTv;
    public final EditText highInput;
    public final RadioButton highRb;
    public final MucangRoundCornerImageView imageIv;
    public final RadioGroup levelRg;
    public final TextView lightTv;
    public final LinearLayout lineTipsContainer;
    public final RadioButton lowRb;
    public final EditText middleInput;
    public final RadioButton middleRb;
    public final TextView name;
    public final RadioButton noneRb;
    public final RadioButton operateRb;
    public final ImageView refreshIv;
    public final RadioButton reportRb;
    private final ScrollView rootView;
    public final CheckBox selectSound;
    public final CheckBox selectVideo;
    public final EditText shortInput;
    public final RadioButton tipRb;
    public final TextView type;
    public final RadioGroup typeRg;
    public final MucangRoundCornerImageView videoIv;
    public final EditText voiceInput;
    public final EditText wheelEt;

    private FragmentCollectFormBinding(ScrollView scrollView, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, EditText editText, RadioButton radioButton, MucangRoundCornerImageView mucangRoundCornerImageView, RadioGroup radioGroup, TextView textView2, LinearLayout linearLayout, RadioButton radioButton2, EditText editText2, RadioButton radioButton3, TextView textView3, RadioButton radioButton4, RadioButton radioButton5, ImageView imageView4, RadioButton radioButton6, CheckBox checkBox, CheckBox checkBox2, EditText editText3, RadioButton radioButton7, TextView textView4, RadioGroup radioGroup2, MucangRoundCornerImageView mucangRoundCornerImageView2, EditText editText4, EditText editText5) {
        this.rootView = scrollView;
        this.addImageIv = imageView;
        this.addVideoIv = imageView2;
        this.closeIv = imageView3;
        this.gearTv = textView;
        this.highInput = editText;
        this.highRb = radioButton;
        this.imageIv = mucangRoundCornerImageView;
        this.levelRg = radioGroup;
        this.lightTv = textView2;
        this.lineTipsContainer = linearLayout;
        this.lowRb = radioButton2;
        this.middleInput = editText2;
        this.middleRb = radioButton3;
        this.name = textView3;
        this.noneRb = radioButton4;
        this.operateRb = radioButton5;
        this.refreshIv = imageView4;
        this.reportRb = radioButton6;
        this.selectSound = checkBox;
        this.selectVideo = checkBox2;
        this.shortInput = editText3;
        this.tipRb = radioButton7;
        this.type = textView4;
        this.typeRg = radioGroup2;
        this.videoIv = mucangRoundCornerImageView2;
        this.voiceInput = editText4;
        this.wheelEt = editText5;
    }

    public static FragmentCollectFormBinding bind(View view) {
        int i = R.id.addImageIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.addVideoIv;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.closeIv;
                ImageView imageView3 = (ImageView) view.findViewById(i);
                if (imageView3 != null) {
                    i = R.id.gearTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.high_input;
                        EditText editText = (EditText) view.findViewById(i);
                        if (editText != null) {
                            i = R.id.highRb;
                            RadioButton radioButton = (RadioButton) view.findViewById(i);
                            if (radioButton != null) {
                                i = R.id.imageIv;
                                MucangRoundCornerImageView mucangRoundCornerImageView = (MucangRoundCornerImageView) view.findViewById(i);
                                if (mucangRoundCornerImageView != null) {
                                    i = R.id.levelRg;
                                    RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                                    if (radioGroup != null) {
                                        i = R.id.lightTv;
                                        TextView textView2 = (TextView) view.findViewById(i);
                                        if (textView2 != null) {
                                            i = R.id.lineTipsContainer;
                                            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                            if (linearLayout != null) {
                                                i = R.id.lowRb;
                                                RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                                                if (radioButton2 != null) {
                                                    i = R.id.middle_input;
                                                    EditText editText2 = (EditText) view.findViewById(i);
                                                    if (editText2 != null) {
                                                        i = R.id.middleRb;
                                                        RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                                                        if (radioButton3 != null) {
                                                            i = R.id.name;
                                                            TextView textView3 = (TextView) view.findViewById(i);
                                                            if (textView3 != null) {
                                                                i = R.id.noneRb;
                                                                RadioButton radioButton4 = (RadioButton) view.findViewById(i);
                                                                if (radioButton4 != null) {
                                                                    i = R.id.operateRb;
                                                                    RadioButton radioButton5 = (RadioButton) view.findViewById(i);
                                                                    if (radioButton5 != null) {
                                                                        i = R.id.refreshIv;
                                                                        ImageView imageView4 = (ImageView) view.findViewById(i);
                                                                        if (imageView4 != null) {
                                                                            i = R.id.reportRb;
                                                                            RadioButton radioButton6 = (RadioButton) view.findViewById(i);
                                                                            if (radioButton6 != null) {
                                                                                i = R.id.selectSound;
                                                                                CheckBox checkBox = (CheckBox) view.findViewById(i);
                                                                                if (checkBox != null) {
                                                                                    i = R.id.select_video;
                                                                                    CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                                                                                    if (checkBox2 != null) {
                                                                                        i = R.id.short_input;
                                                                                        EditText editText3 = (EditText) view.findViewById(i);
                                                                                        if (editText3 != null) {
                                                                                            i = R.id.tipRb;
                                                                                            RadioButton radioButton7 = (RadioButton) view.findViewById(i);
                                                                                            if (radioButton7 != null) {
                                                                                                i = R.id.type;
                                                                                                TextView textView4 = (TextView) view.findViewById(i);
                                                                                                if (textView4 != null) {
                                                                                                    i = R.id.typeRg;
                                                                                                    RadioGroup radioGroup2 = (RadioGroup) view.findViewById(i);
                                                                                                    if (radioGroup2 != null) {
                                                                                                        i = R.id.videoIv;
                                                                                                        MucangRoundCornerImageView mucangRoundCornerImageView2 = (MucangRoundCornerImageView) view.findViewById(i);
                                                                                                        if (mucangRoundCornerImageView2 != null) {
                                                                                                            i = R.id.voice_input;
                                                                                                            EditText editText4 = (EditText) view.findViewById(i);
                                                                                                            if (editText4 != null) {
                                                                                                                i = R.id.wheelEt;
                                                                                                                EditText editText5 = (EditText) view.findViewById(i);
                                                                                                                if (editText5 != null) {
                                                                                                                    return new FragmentCollectFormBinding((ScrollView) view, imageView, imageView2, imageView3, textView, editText, radioButton, mucangRoundCornerImageView, radioGroup, textView2, linearLayout, radioButton2, editText2, radioButton3, textView3, radioButton4, radioButton5, imageView4, radioButton6, checkBox, checkBox2, editText3, radioButton7, textView4, radioGroup2, mucangRoundCornerImageView2, editText4, editText5);
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

    public static FragmentCollectFormBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentCollectFormBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_collect_form, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ScrollView getRoot() {
        return this.rootView;
    }
}
