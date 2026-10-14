package cn.mucang.jiakaoyi.uilib.model;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.z;
import cn.mucang.android.core.webview.MenuOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.model.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00030\u0002B\u0005¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0002\u0010\nJ\u001b\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0002\u0010\rJ\u0016\u0010\u000e\u001a\u00020\b2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003J\u0010\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\bJ\u0013\u0010\u0014\u001a\u00020\b2\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0002\u0010\nJ\u001b\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u0000¢\u0006\u0002\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\b2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/MutableLiveData;", "", "()V", "list", "", "addItem", "", "item", "(Ljava/lang/Object;)V", "index", "", "(ILjava/lang/Object;)V", "addList", "itemList", "clear", "notify", "", MenuOptions.REFRESH, "removeItem", "replace", "old", "new", "(Ljava/lang/Object;Ljava/lang/Object;)V", "resetList", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class ListLiveData<T> extends z<List<? extends T>> {
    private final List<T> l = new ArrayList();

    public final synchronized void p(int i, T t) {
        this.l.add(i, t);
        l(this.l);
    }

    public final synchronized void q(List<? extends T> list) {
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                this.l.add(it.next());
            }
        }
        l(this.l);
    }

    public final synchronized void r(boolean z) {
        this.l.clear();
        if (z) {
            l(this.l);
        }
    }

    public final synchronized void s() {
        l(this.l);
    }

    public final synchronized void t(T t) {
        this.l.remove(t);
        l(this.l);
    }

    public final synchronized void u(List<? extends T> list) {
        this.l.clear();
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                this.l.add(it.next());
            }
        }
        l(this.l);
    }
}
