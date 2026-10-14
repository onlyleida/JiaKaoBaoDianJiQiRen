package f.a.a.a.viewbinding;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.a;
import me.drakeet.multitype.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class a<T, VB extends androidx.viewbinding.a> extends b<T, c<VB>> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // me.drakeet.multitype.b
    public c<VB> onCreateViewHolder(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return new c<>(new b().b(getClass(), layoutInflater, viewGroup));
    }
}
