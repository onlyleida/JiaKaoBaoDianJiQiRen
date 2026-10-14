package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.k3collect.R;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.o1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\b¢\u0006\u0002\u0010\tJ\"\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/TypeSpinnerAdapter;", "Landroid/widget/ArrayAdapter;", "", "context", "Landroid/content/Context;", "resId", "", "data", "", "(Landroid/content/Context;ILjava/util/List;)V", "getData", "()Ljava/util/List;", "getDropDownView", "Landroid/view/View;", "position", "convertView", "parent", "Landroid/view/ViewGroup;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TypeSpinnerAdapter extends ArrayAdapter<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f3855a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypeSpinnerAdapter(Context context, int i, List<String> data) {
        super(context, i, data);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(data, "data");
        this.f3855a = data;
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int position, View convertView, ViewGroup parent) {
        kotlin.jvm.internal.r.e(parent, "parent");
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.k3_common_spinner_dropdown_item, parent, false);
        }
        ((TextView) convertView.findViewById(R.id.text)).setText(this.f3855a.get(position));
        kotlin.jvm.internal.r.d(convertView, "view");
        return convertView;
    }
}
