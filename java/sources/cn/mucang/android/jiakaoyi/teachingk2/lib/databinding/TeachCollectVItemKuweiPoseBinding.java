package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachCollectVItemKuweiPoseBinding implements a {
    public final EditText angleRadius;
    public final EditText disRadius;
    private final LinearLayout rootView;

    private TeachCollectVItemKuweiPoseBinding(LinearLayout linearLayout, EditText editText, EditText editText2) {
        this.rootView = linearLayout;
        this.angleRadius = editText;
        this.disRadius = editText2;
    }

    public static TeachCollectVItemKuweiPoseBinding bind(View view) {
        int i = R.id.angleRadius;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.disRadius;
            EditText editText2 = (EditText) view.findViewById(i);
            if (editText2 != null) {
                return new TeachCollectVItemKuweiPoseBinding((LinearLayout) view, editText, editText2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemKuweiPoseBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemKuweiPoseBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_kuwei_pose, viewGroup, false);
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
