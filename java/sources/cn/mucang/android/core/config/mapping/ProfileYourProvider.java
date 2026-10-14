package cn.mucang.android.core.config.mapping;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import cn.mucang.android.core.config.your.YourViewCategoryAddedTopTop;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.framework.core.databinding.CoreYourCategoryProfileBinding;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.config.mapping.l, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u001c\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/core/config/mapping/ProfileYourProvider;", "Lcn/mucang/android/core/config/your/YourViewCategoryProvider;", "Lcn/mucang/android/core/config/your/YourViewCategoryAddedTopTop;", "()V", "categoryName", "", "changeProfileTo", "", "profiles", "", "Lcn/mucang/android/core/config/mapping/ProfileJsonData;", "position", "", "createItemProvider", "", "Lcn/mucang/android/core/config/your/YourViewItemProvider;", "itemProviders", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ProfileYourProvider implements cn.mucang.android.core.config.your.b, YourViewCategoryAddedTopTop {

    /* JADX INFO: renamed from: cn.mucang.android.core.config.mapping.l$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/core/config/mapping/ProfileYourProvider$createItemProvider$1", "Lcn/mucang/android/core/config/your/YourViewItemProvider;", "getView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements cn.mucang.android.core.config.your.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref$IntRef f2489a;
        final /* synthetic */ ProfileYourProvider b;
        final /* synthetic */ List<ProfileJsonData> c;

        /* JADX INFO: renamed from: cn.mucang.android.core.config.mapping.l$a$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\f\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/core/config/mapping/ProfileYourProvider$createItemProvider$1$getView$1", "Landroid/widget/AdapterView$OnItemSelectedListener;", "onItemSelected", "", "parent", "Landroid/widget/AdapterView;", "view", "Landroid/view/View;", "position", "", TtmlNode.ATTR_ID, "", "onNothingSelected", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class C0075a implements AdapterView.OnItemSelectedListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ProfileYourProvider f2490a;
            final /* synthetic */ List<ProfileJsonData> b;

            C0075a(ProfileYourProvider profileYourProvider, List<ProfileJsonData> list) {
                this.f2490a = profileYourProvider;
                this.b = list;
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                this.f2490a.c(this.b, position);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.core.config.mapping.l$a$b */
        @Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\rH\u0017¨\u0006\u000e"}, d2 = {"cn/mucang/android/core/config/mapping/ProfileYourProvider$createItemProvider$1$getView$2", "Landroid/widget/BaseAdapter;", "getCount", "", "getItem", "", "position", "getItemId", "", "getView", "Landroid/view/View;", "convertView", "parent", "Landroid/view/ViewGroup;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class b extends BaseAdapter {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List<ProfileJsonData> f2491a;

            b(List<ProfileJsonData> list) {
                this.f2491a = list;
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return this.f2491a.size();
            }

            @Override // android.widget.Adapter
            public Object getItem(int position) {
                return this.f2491a.get(position);
            }

            @Override // android.widget.Adapter
            public long getItemId(int position) {
                return position;
            }

            @Override // android.widget.Adapter
            @SuppressLint({"ViewHolder"})
            public View getView(int position, View convertView, ViewGroup parent) {
                r.e(parent, "parent");
                View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.core__your_text_item_profile, parent, false);
                TextView textView = (TextView) view.findViewById(R.id.label);
                ProfileJsonData profileJsonData = (ProfileJsonData) s.f0(this.f2491a, position);
                textView.setText(profileJsonData == null ? null : profileJsonData.getName());
                r.d(view, "view");
                return view;
            }
        }

        a(Ref$IntRef ref$IntRef, ProfileYourProvider profileYourProvider, List<ProfileJsonData> list) {
            this.f2489a = ref$IntRef;
            this.b = profileYourProvider;
            this.c = list;
        }

        @Override // cn.mucang.android.core.config.your.c
        public View a(LayoutInflater inflater, ViewGroup container) {
            r.e(inflater, "inflater");
            r.e(container, "container");
            CoreYourCategoryProfileBinding coreYourCategoryProfileBindingInflate = CoreYourCategoryProfileBinding.inflate(inflater);
            r.d(coreYourCategoryProfileBindingInflate, "inflate(inflater)");
            Spinner spinner = coreYourCategoryProfileBindingInflate.profileSpinner;
            r.d(spinner, "binding.profileSpinner");
            spinner.setOnItemSelectedListener(new C0075a(this.b, this.c));
            spinner.setAdapter((SpinnerAdapter) new b(this.c));
            spinner.setSelection(this.f2489a.element);
            LinearLayout root = coreYourCategoryProfileBindingInflate.getRoot();
            r.d(root, "binding.root");
            return root;
        }
    }

    private final List<cn.mucang.android.core.config.your.c> d() {
        List<ProfileJsonData> listC = ProfileStorage.c();
        Long lB = ProfileStorage.f2487a.b();
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        Iterator<ProfileJsonData> it = listC.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (lB != null && it.next().getId() == lB.longValue()) {
                break;
            }
            i++;
        }
        ref$IntRef.element = i;
        if (i == -1) {
            ref$IntRef.element = 0;
        }
        return u.p(new a(ref$IntRef, this, listC));
    }

    @Override // cn.mucang.android.core.config.your.b
    public List<cn.mucang.android.core.config.your.c> a() {
        return d();
    }

    @Override // cn.mucang.android.core.config.your.b
    public String b() {
        return "网络切换";
    }

    public final void c(List<ProfileJsonData> profiles, int i) {
        r.e(profiles, "profiles");
        if (profiles.isEmpty()) {
            cn.mucang.android.core.utils.u.h("更改失败，没有profile可用");
            return;
        }
        ProfileJsonData profileJsonData = (ProfileJsonData) s.f0(profiles, i);
        if (profileJsonData == null) {
            profileJsonData = (ProfileJsonData) s.e0(profiles);
        }
        ProfileStorage.f2487a.h(profileJsonData == null ? null : Long.valueOf(profileJsonData.getId()));
        cn.mucang.android.core.utils.u.h(r.m("网络切换至:", profileJsonData != null ? profileJsonData.getName() : null));
    }
}
