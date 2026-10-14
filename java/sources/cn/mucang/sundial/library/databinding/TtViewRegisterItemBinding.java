package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import com.nirvana.tools.logger.cache.db.DBHelpTool;

/* JADX INFO: loaded from: classes5.dex */
public final class TtViewRegisterItemBinding implements a {
    public final EditText content;
    public final TextView label;
    private final LinearLayout rootView;

    private TtViewRegisterItemBinding(LinearLayout linearLayout, EditText editText, TextView textView) {
        this.rootView = linearLayout;
        this.content = editText;
        this.label = textView;
    }

    public static TtViewRegisterItemBinding bind(View view) {
        String str;
        EditText editText = (EditText) view.findViewById(R.id.content);
        if (editText != null) {
            TextView textView = (TextView) view.findViewById(R.id.label);
            if (textView != null) {
                return new TtViewRegisterItemBinding((LinearLayout) view, editText, textView);
            }
            str = "label";
        } else {
            str = DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtViewRegisterItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtViewRegisterItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__view_register_item, viewGroup, false);
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
