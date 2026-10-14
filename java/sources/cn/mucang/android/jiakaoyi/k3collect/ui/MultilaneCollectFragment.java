package cn.mucang.android.jiakaoyi.k3collect.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3collect.databinding.DialogK3MultilaneCollectBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u000bH\u0002J&\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\f\u0010\u0016\u001a\u00020\u0015*\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectFragment;", "Landroidx/fragment/app/Fragment;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "collectItems", "", "Lcn/mucang/android/jiakaoyi/k3collect/model/MultilaneCollectItem;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/DialogK3MultilaneCollectBinding;", "checkCollectFinish", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "save", "", "notifyAdapter", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MultilaneCollectFragment extends Fragment {
    private DialogK3MultilaneCollectBinding b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.drakeet.multitype.f f4166a = new com.drakeet.multitype.f(null, 0, null, 7, null);
    private final List<cn.mucang.android.jiakaoyi.k3collect.i0.a> c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(MultilaneCollectFragment this$0, DialogK3MultilaneCollectBinding this_apply, View view) {
        r.e(this$0, "this$0");
        r.e(this_apply, "$this_apply");
        this$0.c.add(new cn.mucang.android.jiakaoyi.k3collect.i0.a());
        this$0.x(this_apply);
    }

    private final void B() {
        if (t()) {
            Bundle arguments = getArguments();
            String string = arguments == null ? null : arguments.getString("examSiteId");
            if (string == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (cn.mucang.android.jiakaoyi.k3collect.i0.a aVar : this.c) {
                boolean z = true;
                if (aVar.c() == 2) {
                    ShuangHuangSrcData shuangHuangSrcData = new ShuangHuangSrcData(aVar.d());
                    if (aVar.a().size() <= 2 && aVar.b().size() <= 2) {
                        z = false;
                    }
                    shuangHuangSrcData.isCurve = z;
                    if (z) {
                        shuangHuangSrcData.curveList1 = aVar.a();
                        shuangHuangSrcData.curveList2 = aVar.b();
                    }
                    List<Gps> listA = aVar.a();
                    r.d(listA, "collectItem.gpsList1");
                    shuangHuangSrcData.line1Start = (Gps) s.c0(listA);
                    List<Gps> listB = aVar.b();
                    r.d(listB, "collectItem.gpsList2");
                    shuangHuangSrcData.line2Start = (Gps) s.c0(listB);
                    List<Gps> listA2 = aVar.a();
                    r.d(listA2, "collectItem.gpsList1");
                    shuangHuangSrcData.line1End = (Gps) s.o0(listA2);
                    List<Gps> listB2 = aVar.b();
                    r.d(listB2, "collectItem.gpsList2");
                    shuangHuangSrcData.line2End = (Gps) s.o0(listB2);
                    arrayList.add(shuangHuangSrcData);
                } else {
                    SingleLineSrcData singleLineSrcData = new SingleLineSrcData(aVar.d(), aVar.c() == 0);
                    z = aVar.a().size() > 2;
                    singleLineSrcData.isCurve = z;
                    if (z) {
                        singleLineSrcData.lineList = aVar.a();
                    }
                    List<Gps> listA3 = aVar.a();
                    r.d(listA3, "collectItem.gpsList1");
                    singleLineSrcData.start = (Gps) s.c0(listA3);
                    List<Gps> listA4 = aVar.a();
                    r.d(listA4, "collectItem.gpsList1");
                    singleLineSrcData.end = (Gps) s.o0(listA4);
                    arrayList.add(singleLineSrcData);
                }
            }
            kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new MultilaneCollectFragment$save$1(arrayList, string, this, null), 3, null);
        }
    }

    private final boolean t() {
        int i = 0;
        for (Object obj : this.c) {
            int i2 = i + 1;
            if (i < 0) {
                s.t();
                throw null;
            }
            cn.mucang.android.jiakaoyi.k3collect.i0.a aVar = (cn.mucang.android.jiakaoyi.k3collect.i0.a) obj;
            if (aVar.d() <= 0) {
                u.h((char) 31532 + i2 + "车道线宽不符合要求");
                return false;
            }
            if (aVar.c() == 2) {
                if (aVar.a() == null || aVar.a().size() < 2 || aVar.b() == null || aVar.b().size() < 2) {
                    u.h((char) 31532 + i2 + "车道有未完成的采集点");
                    return false;
                }
            } else if (aVar.a() == null || aVar.a().size() < 2) {
                u.h((char) 31532 + i2 + "车道有未完成的采集点");
                return false;
            }
            i = i2;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(DialogK3MultilaneCollectBinding dialogK3MultilaneCollectBinding) {
        this.f4166a.notifyDataSetChanged();
        dialogK3MultilaneCollectBinding.etMultilaneCount.setText(String.valueOf(this.f4166a.c().size()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(MultilaneCollectFragment this$0, View view) {
        r.e(this$0, "this$0");
        androidx.fragment.app.d activity = this$0.getActivity();
        if (activity == null) {
            return;
        }
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(MultilaneCollectFragment this$0, View view) {
        r.e(this$0, "this$0");
        this$0.B();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        final DialogK3MultilaneCollectBinding dialogK3MultilaneCollectBindingInflate = DialogK3MultilaneCollectBinding.inflate(inflater);
        r.d(dialogK3MultilaneCollectBindingInflate, "inflate(inflater)");
        this.b = dialogK3MultilaneCollectBindingInflate;
        if (dialogK3MultilaneCollectBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        RecyclerView recyclerView = dialogK3MultilaneCollectBindingInflate.recyclerView;
        DialogK3MultilaneCollectBinding dialogK3MultilaneCollectBinding = this.b;
        if (dialogK3MultilaneCollectBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        recyclerView.addItemDecoration(new androidx.recyclerview.widget.d(dialogK3MultilaneCollectBinding.getRoot().getContext(), 0));
        dialogK3MultilaneCollectBindingInflate.recyclerView.setAdapter(this.f4166a);
        int i = 0;
        do {
            i++;
            this.c.add(new cn.mucang.android.jiakaoyi.k3collect.i0.a());
        } while (i <= 4);
        this.f4166a.g(cn.mucang.android.jiakaoyi.k3collect.i0.a.class, new MultilaneCollectItemBinder(new Function2<Integer, cn.mucang.android.jiakaoyi.k3collect.i0.a, v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.ui.MultilaneCollectFragment$onCreateView$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ v invoke(Integer num, cn.mucang.android.jiakaoyi.k3collect.i0.a aVar) {
                invoke(num.intValue(), aVar);
                return v.f15822a;
            }

            public final void invoke(int i2, cn.mucang.android.jiakaoyi.k3collect.i0.a item) {
                r.e(item, "item");
                this.this$0.c.remove(item);
                this.this$0.x(dialogK3MultilaneCollectBindingInflate);
            }
        }));
        this.f4166a.i(this.c);
        x(dialogK3MultilaneCollectBindingInflate);
        dialogK3MultilaneCollectBindingInflate.back.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.ui.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultilaneCollectFragment.y(this.f4167a, view);
            }
        });
        dialogK3MultilaneCollectBindingInflate.save.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.ui.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultilaneCollectFragment.z(this.f4169a, view);
            }
        });
        dialogK3MultilaneCollectBindingInflate.imgAdd.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.ui.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultilaneCollectFragment.A(this.f4168a, dialogK3MultilaneCollectBindingInflate, view);
            }
        });
        dialogK3MultilaneCollectBindingInflate.etMultilaneCount.setEnabled(false);
        DialogK3MultilaneCollectBinding dialogK3MultilaneCollectBinding2 = this.b;
        if (dialogK3MultilaneCollectBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        f.a.a.e.a.d.a.a(dialogK3MultilaneCollectBinding2.getRoot(), "多车道采集线段距离最长只能50米").show();
        TtsManager.r("多车道采集线段距离最长只能50米", TtsGrade.SpecialVoice);
        DialogK3MultilaneCollectBinding dialogK3MultilaneCollectBinding3 = this.b;
        if (dialogK3MultilaneCollectBinding3 != null) {
            return dialogK3MultilaneCollectBinding3.getRoot();
        }
        r.u("viewBinding");
        throw null;
    }
}
