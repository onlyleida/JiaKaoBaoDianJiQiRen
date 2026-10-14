package cn.mucang.sundial.library.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.binder.LightVoiceBinder;
import cn.mucang.sundial.library.databinding.TtFragmentLightVoiceBinding;
import cn.mucang.sundial.library.entity.ProjectVoiceItem;
import cn.mucang.sundial.library.tts.Tts;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import me.drakeet.multitype.Items;
import me.drakeet.multitype.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\rJ+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\rR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcn/mucang/sundial/library/fragment/LightVoiceFragment;", "Lcn/mucang/sundial/library/fragment/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Lkotlin/v;", "onResume", "()V", "onPause", "Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;", "viewBinding", "Lcn/mucang/sundial/library/databinding/TtFragmentLightVoiceBinding;", "Lme/drakeet/multitype/Items;", "items", "Lme/drakeet/multitype/Items;", "Lme/drakeet/multitype/d;", "adapter", "Lme/drakeet/multitype/d;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class LightVoiceFragment extends BaseFragment {
    private final d adapter;
    private final Items items;
    private TtFragmentLightVoiceBinding viewBinding;

    public LightVoiceFragment() {
        Items items = new Items();
        this.items = items;
        this.adapter = new d(items);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        TtFragmentLightVoiceBinding ttFragmentLightVoiceBindingInflate = TtFragmentLightVoiceBinding.inflate(inflater);
        r.d(ttFragmentLightVoiceBindingInflate, "TtFragmentLightVoiceBinding.inflate(inflater)");
        this.viewBinding = ttFragmentLightVoiceBindingInflate;
        if (ttFragmentLightVoiceBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        this.adapter.f(ProjectVoiceItem.class, new LightVoiceBinder());
        RecyclerView recyclerView = ttFragmentLightVoiceBindingInflate.recyclerView;
        r.d(recyclerView, "recyclerView");
        recyclerView.setAdapter(this.adapter);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ProjectVoiceItem("开始", R.drawable.tt__ic_light_start, "下面将进行模拟夜间行驶场景灯光使用的考试，请按语音指令在5秒内做出相应的灯光操作：请开启前照灯"));
        arrayList.add(new ProjectVoiceItem("关灯", R.drawable.tt__ic_light_off, "模拟夜间考试完成，请关闭所有灯光"));
        int i = R.drawable.tt__ic_light_near;
        arrayList.add(new ProjectVoiceItem("近光", i, "夜间在有路灯的道路上行驶"));
        arrayList.add(new ProjectVoiceItem("近光", i, "夜间在照明良好的道路上行驶"));
        arrayList.add(new ProjectVoiceItem("近光", i, "夜间同方向近距离跟车行驶"));
        arrayList.add(new ProjectVoiceItem("近光", i, "夜间在窄路与非机动车会车"));
        arrayList.add(new ProjectVoiceItem("近光", i, "夜间与机动车会车"));
        arrayList.add(new ProjectVoiceItem("近光", i, "夜间在窄桥与非机动车会车"));
        arrayList.add(new ProjectVoiceItem("近光", i, "夜间直行通过有交通信号灯控制的路口"));
        arrayList.add(new ProjectVoiceItem("远光", R.drawable.tt__ic_light_far, "夜间在没有路灯，照明不良的条件下行驶"));
        int i2 = R.drawable.tt__ic_light_flash;
        arrayList.add(new ProjectVoiceItem("闪光", i2, "夜间通过坡路、拱桥"));
        arrayList.add(new ProjectVoiceItem("闪光", i2, "夜间通过没有交通信号灯控制的路口"));
        arrayList.add(new ProjectVoiceItem("闪光", i2, "夜间通过人行横道"));
        arrayList.add(new ProjectVoiceItem("闪光", i2, "夜间超越前方车辆"));
        arrayList.add(new ProjectVoiceItem("闪光", i2, "夜间通过急弯"));
        int i3 = R.drawable.tt__ic_light_width;
        arrayList.add(new ProjectVoiceItem("示宽警示", i3, "夜间在道路上发生故障，妨碍交通又难以移动"));
        arrayList.add(new ProjectVoiceItem("示宽警示", i3, "夜间在道路上发生交通事故，妨碍交通又难以移动"));
        arrayList.add(new ProjectVoiceItem("示宽警示", i3, "路边临时停车"));
        arrayList.add(new ProjectVoiceItem("雾灯", R.drawable.tt__ic_light_fog, "雾天行驶"));
        arrayList.add(new ProjectVoiceItem("右转", R.drawable.tt__ic_light_right, "夜间路口右转弯"));
        arrayList.add(new ProjectVoiceItem("左转", R.drawable.tt__ic_light_left, "夜间路口左转弯"));
        arrayList.add(new ProjectVoiceItem("结束", R.drawable.tt__ic_light_end, "请起步，继续完成考试"));
        this.adapter.h(arrayList);
        this.adapter.notifyDataSetChanged();
        TtFragmentLightVoiceBinding ttFragmentLightVoiceBinding = this.viewBinding;
        if (ttFragmentLightVoiceBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        LinearLayout root = ttFragmentLightVoiceBinding.getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        Tts.speakStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        SundialLog.normal("显示灯光语音");
    }
}
