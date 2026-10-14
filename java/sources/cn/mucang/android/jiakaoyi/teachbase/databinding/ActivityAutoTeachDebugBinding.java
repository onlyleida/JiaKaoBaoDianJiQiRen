package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityAutoTeachDebugBinding implements a {
    public final EditText directionEt;
    public final TextView endTv;
    public final EditText gearEt;
    public final TextView gearTv;
    public final View left;
    public final RecyclerView middle;
    public final EditText motorEt;
    public final TextView motorTv;
    public final EditText numberEt;
    public final TextView pathTv;
    public final TextView pauseTv;
    public final TextView resumeTv;
    public final RecyclerView right;
    private final ConstraintLayout rootView;
    public final EditText speedEt;
    public final TextView speedTv;
    public final TextView startTv;
    public final RelativeLayout switchRl;
    public final ImageView teachCb;
    public final CommonTitleBinding titleLayout;
    public final EditText wheelEt;
    public final TextView wheelTv;

    private ActivityAutoTeachDebugBinding(ConstraintLayout constraintLayout, EditText editText, TextView textView, EditText editText2, TextView textView2, View view, RecyclerView recyclerView, EditText editText3, TextView textView3, EditText editText4, TextView textView4, TextView textView5, TextView textView6, RecyclerView recyclerView2, EditText editText5, TextView textView7, TextView textView8, RelativeLayout relativeLayout, ImageView imageView, CommonTitleBinding commonTitleBinding, EditText editText6, TextView textView9) {
        this.rootView = constraintLayout;
        this.directionEt = editText;
        this.endTv = textView;
        this.gearEt = editText2;
        this.gearTv = textView2;
        this.left = view;
        this.middle = recyclerView;
        this.motorEt = editText3;
        this.motorTv = textView3;
        this.numberEt = editText4;
        this.pathTv = textView4;
        this.pauseTv = textView5;
        this.resumeTv = textView6;
        this.right = recyclerView2;
        this.speedEt = editText5;
        this.speedTv = textView7;
        this.startTv = textView8;
        this.switchRl = relativeLayout;
        this.teachCb = imageView;
        this.titleLayout = commonTitleBinding;
        this.wheelEt = editText6;
        this.wheelTv = textView9;
    }

    public static ActivityAutoTeachDebugBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.directionEt;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.endTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.gearEt;
                EditText editText2 = (EditText) view.findViewById(i);
                if (editText2 != null) {
                    i = R.id.gearTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.left))) != null) {
                        i = R.id.middle;
                        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                        if (recyclerView != null) {
                            i = R.id.motorEt;
                            EditText editText3 = (EditText) view.findViewById(i);
                            if (editText3 != null) {
                                i = R.id.motorTv;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.numberEt;
                                    EditText editText4 = (EditText) view.findViewById(i);
                                    if (editText4 != null) {
                                        i = R.id.pathTv;
                                        TextView textView4 = (TextView) view.findViewById(i);
                                        if (textView4 != null) {
                                            i = R.id.pauseTv;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null) {
                                                i = R.id.resumeTv;
                                                TextView textView6 = (TextView) view.findViewById(i);
                                                if (textView6 != null) {
                                                    i = R.id.right;
                                                    RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                                                    if (recyclerView2 != null) {
                                                        i = R.id.speedEt;
                                                        EditText editText5 = (EditText) view.findViewById(i);
                                                        if (editText5 != null) {
                                                            i = R.id.speedTv;
                                                            TextView textView7 = (TextView) view.findViewById(i);
                                                            if (textView7 != null) {
                                                                i = R.id.startTv;
                                                                TextView textView8 = (TextView) view.findViewById(i);
                                                                if (textView8 != null) {
                                                                    i = R.id.switchRl;
                                                                    RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
                                                                    if (relativeLayout != null) {
                                                                        i = R.id.teachCb;
                                                                        ImageView imageView = (ImageView) view.findViewById(i);
                                                                        if (imageView != null && (viewFindViewById2 = view.findViewById((i = R.id.titleLayout))) != null) {
                                                                            CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById2);
                                                                            i = R.id.wheelEt;
                                                                            EditText editText6 = (EditText) view.findViewById(i);
                                                                            if (editText6 != null) {
                                                                                i = R.id.wheelTv;
                                                                                TextView textView9 = (TextView) view.findViewById(i);
                                                                                if (textView9 != null) {
                                                                                    return new ActivityAutoTeachDebugBinding((ConstraintLayout) view, editText, textView, editText2, textView2, viewFindViewById, recyclerView, editText3, textView3, editText4, textView4, textView5, textView6, recyclerView2, editText5, textView7, textView8, relativeLayout, imageView, commonTitleBindingBind, editText6, textView9);
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

    public static ActivityAutoTeachDebugBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityAutoTeachDebugBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_auto_teach_debug, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
