package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import com.iflytek.cloud.SpeechConstant;

/* JADX INFO: loaded from: classes5.dex */
public final class TtFragmentTrainingInfoBinding implements a {
    public final TextView coachInfo;
    public final TextView courseDistance;
    public final TextView courseTime;
    public final TextView driveType;
    private final LinearLayout rootView;
    public final TextView studentInfo;
    public final TextView subject;

    private TtFragmentTrainingInfoBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = linearLayout;
        this.coachInfo = textView;
        this.courseDistance = textView2;
        this.courseTime = textView3;
        this.driveType = textView4;
        this.studentInfo = textView5;
        this.subject = textView6;
    }

    public static TtFragmentTrainingInfoBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.coach_info);
        if (textView != null) {
            TextView textView2 = (TextView) view.findViewById(R.id.course_distance);
            if (textView2 != null) {
                TextView textView3 = (TextView) view.findViewById(R.id.course_time);
                if (textView3 != null) {
                    TextView textView4 = (TextView) view.findViewById(R.id.drive_type);
                    if (textView4 != null) {
                        TextView textView5 = (TextView) view.findViewById(R.id.student_info);
                        if (textView5 != null) {
                            TextView textView6 = (TextView) view.findViewById(R.id.subject);
                            if (textView6 != null) {
                                return new TtFragmentTrainingInfoBinding((LinearLayout) view, textView, textView2, textView3, textView4, textView5, textView6);
                            }
                            str = SpeechConstant.SUBJECT;
                        } else {
                            str = "studentInfo";
                        }
                    } else {
                        str = "driveType";
                    }
                } else {
                    str = "courseTime";
                }
            } else {
                str = "courseDistance";
            }
        } else {
            str = "coachInfo";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtFragmentTrainingInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtFragmentTrainingInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__fragment_training_info, viewGroup, false);
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
