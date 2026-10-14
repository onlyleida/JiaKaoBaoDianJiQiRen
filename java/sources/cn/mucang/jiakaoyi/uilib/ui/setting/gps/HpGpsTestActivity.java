package cn.mucang.jiakaoyi.uilib.ui.setting.gps;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.handle.gps.g;
import com.mucang.android.jiakaoyi.uilib.databinding.SignalGpsRounteActivityBinding;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HpGpsTestActivity extends BaseViewBindingActivity<SignalGpsRounteActivityBinding> {
    private a b;
    private a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f10153d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f10154e;

    private static class a extends RecyclerView.Adapter<b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<g.a> f10155a;

        a(List<g.a> list) {
            ArrayList arrayList = new ArrayList();
            this.f10155a = arrayList;
            if (list != null) {
                arrayList.addAll(list);
            }
        }

        void c(g.a aVar) {
            if (this.f10155a.size() > 200) {
                List<g.a> list = this.f10155a;
                list.remove(list.size() - 1);
            }
            this.f10155a.add(0, aVar);
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(b bVar, int i) {
            g.a aVar = this.f10155a.get(i);
            bVar.f10156a.setText(aVar.f5728a + "\n时间=" + p0.b(aVar.c));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public b onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new b(new TextView(viewGroup.getContext()));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f10155a.size();
        }
    }

    private static class b extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f10156a;

        public b(View view) {
            super(view);
            TextView textView = (TextView) view;
            this.f10156a = textView;
            textView.setGravity(17);
            this.f10156a.setTextColor(-13421773);
            this.f10156a.setPadding(0, 15, 0, 15);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(g.a aVar) {
        a aVar2;
        a aVar3;
        a aVar4;
        a aVar5;
        int i = aVar.b;
        if (i == 3 && (aVar5 = this.f10154e) != null) {
            aVar5.c(aVar);
            return;
        }
        if (i == 1 && (aVar4 = this.c) != null) {
            aVar4.c(aVar);
            return;
        }
        if (i == 2 && (aVar3 = this.f10153d) != null) {
            aVar3.c(aVar);
        } else {
            if (i != 4 || (aVar2 = this.b) == null) {
                return;
            }
            aVar2.c(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(View view) {
        finish();
    }

    public static void n(Context context) {
        Intent intent = new Intent(context, (Class<?>) HpGpsTestActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    private a o(RecyclerView recyclerView, List<g.a> list) {
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        a aVar = new a(list);
        recyclerView.setAdapter(aVar);
        return aVar;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "高精度数据链路调试页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        ((SignalGpsRounteActivityBinding) this.f3424a).titleLayout.titleTv.setText("高精度链路");
        ((SignalGpsRounteActivityBinding) this.f3424a).titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gps.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10158a.m(view);
            }
        });
        LiveBus.d(g.a.class).h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gps.a
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f10157a.j((g.a) obj);
            }
        });
        this.b = o(((SignalGpsRounteActivityBinding) this.f3424a).toGGa, g.c(4));
        this.c = o(((SignalGpsRounteActivityBinding) this.f3424a).fromServer, g.c(1));
        this.f10154e = o(((SignalGpsRounteActivityBinding) this.f3424a).fromHardware, g.c(3));
        this.f10153d = o(((SignalGpsRounteActivityBinding) this.f3424a).toHardware, g.c(2));
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g.e(false);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        g.e(false);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        g.e(true);
    }
}
