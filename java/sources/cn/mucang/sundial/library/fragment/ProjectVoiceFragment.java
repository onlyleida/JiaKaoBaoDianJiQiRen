package cn.mucang.sundial.library.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.binder.ProjectVoiceBinder;
import cn.mucang.sundial.library.databinding.TtFragmentProjectVoiceBinding;
import cn.mucang.sundial.library.entity.ProjectVoiceItem;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import me.drakeet.multitype.Items;
import me.drakeet.multitype.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\rJ+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcn/mucang/sundial/library/fragment/ProjectVoiceFragment;", "Lcn/mucang/sundial/library/fragment/BaseFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Lkotlin/v;", "onResume", "()V", "Lme/drakeet/multitype/d;", "adapter", "Lme/drakeet/multitype/d;", "Lme/drakeet/multitype/Items;", "items", "Lme/drakeet/multitype/Items;", "Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;", "viewBinding", "Lcn/mucang/sundial/library/databinding/TtFragmentProjectVoiceBinding;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ProjectVoiceFragment extends BaseFragment {
    private final d adapter;
    private final Items items;
    private TtFragmentProjectVoiceBinding viewBinding;

    public ProjectVoiceFragment() {
        Items items = new Items();
        this.items = items;
        this.adapter = new d(items);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        TtFragmentProjectVoiceBinding ttFragmentProjectVoiceBindingInflate = TtFragmentProjectVoiceBinding.inflate(inflater);
        r.d(ttFragmentProjectVoiceBindingInflate, "TtFragmentProjectVoiceBinding.inflate(inflater)");
        this.viewBinding = ttFragmentProjectVoiceBindingInflate;
        if (ttFragmentProjectVoiceBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        this.adapter.f(ProjectVoiceItem.class, new ProjectVoiceBinder());
        RecyclerView recyclerView = ttFragmentProjectVoiceBindingInflate.recyclerView;
        r.d(recyclerView, "recyclerView");
        recyclerView.setAdapter(this.adapter);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ProjectVoiceItem("考试准备", R.drawable.tt__ic_voice_ready, "绕车一周检查车辆外观及安全状况，打开车门前观察后方交通情况{停顿}{停顿}，上车后请系好安全带，调整座位、侧镜、后视镜、{停顿}{停顿}，打开近光灯并关闭警示灯"));
        arrayList.add(new ProjectVoiceItem("起步", R.drawable.tt__ic_voice_start, "请起步继续完成考试"));
        arrayList.add(new ProjectVoiceItem("路口直行", R.drawable.tt__ic_voice_crossroads_straight, "前方路口直行"));
        arrayList.add(new ProjectVoiceItem("变更车道", R.drawable.tt__ic_voice_change_lane, "前方请变更车道"));
        arrayList.add(new ProjectVoiceItem("公共汽车站", R.drawable.tt__ic_voice_bus_stop, "通过公共汽车站"));
        arrayList.add(new ProjectVoiceItem("学校", R.drawable.tt__ic_voice_school, "通过学校区域"));
        arrayList.add(new ProjectVoiceItem("直线行驶", R.drawable.tt__ic_voice_line_drive, "前方进入直线行驶路段，请保持时速在35公里左右"));
        arrayList.add(new ProjectVoiceItem("左转", R.drawable.tt__ic_voice_turn_left, "前方路口左转"));
        arrayList.add(new ProjectVoiceItem("右转", R.drawable.tt__ic_voice_turn_right, "前方路口右转"));
        arrayList.add(new ProjectVoiceItem("加速挡", R.drawable.tt__ic_voice_shift, "请进行加减档位操作"));
        arrayList.add(new ProjectVoiceItem("会车", R.drawable.tt__ic_voice_meet_car, "与机动车会车"));
        arrayList.add(new ProjectVoiceItem("超车", R.drawable.tt__ic_voice_over_take, "请超越前方车辆"));
        arrayList.add(new ProjectVoiceItem("减速", R.drawable.tt__ic_voice_slow_down, "请减速慢行"));
        arrayList.add(new ProjectVoiceItem("限速", R.drawable.tt__ic_voice_speed_limit, "前方路段最低限速40公里每小时{停顿}{停顿}{停顿}{停顿}{停顿}，离开最低限速路段"));
        arrayList.add(new ProjectVoiceItem("人行横道", R.drawable.tt__ic_voice_crosswalk, "前方人行横道"));
        arrayList.add(new ProjectVoiceItem("人行横道", R.drawable.tt__ic_voice_crosswalk2, "有行人通过，前方人行横道有行人通过{停顿}{停顿}{停顿}{停顿}，行人已通过"));
        arrayList.add(new ProjectVoiceItem("隧道", R.drawable.tt__ic_voice_tunnel, "前方隧道"));
        arrayList.add(new ProjectVoiceItem("掉头", R.drawable.tt__ic_voice_u_turn, "前方请选择合适地点掉头"));
        arrayList.add(new ProjectVoiceItem("靠边停车", R.drawable.tt__ic_voice_pull_over, "请靠边停车"));
        arrayList.add(new ProjectVoiceItem("直行行驶结束", R.drawable.tt__ic_voice_straight_end, "直线行驶结束"));
        this.adapter.h(arrayList);
        this.adapter.notifyDataSetChanged();
        TtFragmentProjectVoiceBinding ttFragmentProjectVoiceBinding = this.viewBinding;
        if (ttFragmentProjectVoiceBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        LinearLayout root = ttFragmentProjectVoiceBinding.getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        SundialLog.normal("显示项目语音");
    }
}
