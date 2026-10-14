package cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeState;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityBrakeDistancePageBinding;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandAdapter;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.alibaba.fastjson.JSON;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.fitting.PolynomialCurveFitter;
import org.apache.commons.math3.fitting.WeightedObservedPoints;

/* JADX INFO: loaded from: classes4.dex */
public class BrakeDistanceTestPage extends BaseViewBindingActivity<ActivityBrakeDistancePageBinding> {
    private final List<BrakeInfo> b = new ArrayList();
    private BrakeInfo c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7681d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Pos> f7682e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Pos f7683f = new Pos();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.i.a f7684g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f7685h = 0.0d;
    private int i = 0;
    private b j = null;
    private final cn.mucang.android.jiakaoyi.signal.c.f.a k = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test.g
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            this.f7694a.A(eVar);
        }
    };

    public static class BrakeInfo implements Serializable {
        public double distance;
        public Pos end;
        public long endTime;
        public double speed;
        public Pos start;
        public long startTime;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b extends RecyclerView.Adapter<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<BrakeInfo> f7686a;

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void d(int i, DialogInterface dialogInterface, int i2) {
            this.f7686a.remove(i);
            notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void f(c cVar, final int i, View view) {
            new AlertDialog.Builder(cVar.f7687a.getContext()).setMessage("确定删除这条数据?").setPositiveButton(SundialNumKeyBoardView.KEY_DELETE, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test.d
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f7691a.d(i, dialogInterface, i2);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final c cVar, final int i) {
            BrakeInfo brakeInfo = this.f7686a.get(i);
            cVar.f7687a.setText("刹车速度=" + brakeInfo.speed + ",刹车距离=" + brakeInfo.distance);
            cVar.f7687a.setTag(Integer.valueOf(i));
            cVar.f7687a.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f7690a.f(cVar, i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f7686a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public c onCreateViewHolder(ViewGroup viewGroup, int i) {
            TextView textView = new TextView(viewGroup.getContext());
            textView.setPadding(0, 20, 0, 20);
            textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            return new c(textView);
        }

        private b(List<BrakeInfo> list) {
            this.f7686a = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f7687a;

        public c(View view) {
            super(view);
            this.f7687a = (TextView) view;
        }
    }

    private void B(String str) {
        u.h(str);
        TtsManager.r(str, TtsGrade.GlobalTip);
    }

    private void C() {
        SafeCommandAdapter.f((byte) 1);
        this.f7681d = false;
        this.c = null;
        ((ActivityBrakeDistancePageBinding) this.f3424a).brake.setText("开始刹车");
        B("解刹");
    }

    private void j() {
        if (this.f7681d) {
            B("当前正在测试中，不能退出");
        } else {
            finish();
        }
    }

    private void k() {
        if (this.f7681d) {
            B("当前正在刹车");
            return;
        }
        if (this.f7683f.model() <= 0.1d) {
            B("gps不正确，请先移动车子");
            return;
        }
        if (this.f7685h <= 0.1d) {
            B("车速过小，请将车速保持在1-10码左右");
            return;
        }
        if (this.i != 4) {
            B("gps类型不为4，不能开始测试");
            return;
        }
        this.f7681d = true;
        BrakeInfo brakeInfo = new BrakeInfo();
        this.c = brakeInfo;
        brakeInfo.speed = this.f7685h;
        brakeInfo.startTime = System.currentTimeMillis();
        this.c.start = new Pos(this.f7683f);
        ((ActivityBrakeDistancePageBinding) this.f3424a).brake.setText("刹车测试中");
        cn.mucang.android.jiakaoyi.framework.log.f.d("下发测试刹车指令");
        SafeCommandAdapter.b(BrakeModel.createBrakeModel(BrakeReason.BrakeStudy, null, true), (byte) 1);
    }

    private void l() {
        new AlertDialog.Builder(this).setMessage("确定清除obd速度刹车参数？清除之后，将使用原来的时间配置来设置电子围栏刹车的距离").setPositiveButton("清除", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f7689a.o(dialogInterface, i);
            }
        }).setNegativeButton("不清除", (DialogInterface.OnClickListener) null).create().show();
    }

    private void m() {
        if (this.f7681d) {
            B("当前正在刹车");
            return;
        }
        if (this.b.size() < 5) {
            B("测试数据过少，请至少测试5次");
            return;
        }
        double d2 = 1.0E7d;
        double d3 = 0.0d;
        Iterator<BrakeInfo> it = this.b.iterator();
        while (it.hasNext()) {
            double d4 = it.next().speed;
            if (d4 > d3) {
                d3 = d4;
            }
            if (d4 < d2) {
                d2 = d4;
            }
        }
        if (d3 - d2 < 5.0d) {
            B("测试的速度过于集中，请在1-10码之间各测试几次");
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.d("刹车测试数据:" + JSON.toJSONString(this.b));
        WeightedObservedPoints weightedObservedPoints = new WeightedObservedPoints();
        for (BrakeInfo brakeInfo : this.b) {
            weightedObservedPoints.add(brakeInfo.speed, brakeInfo.distance);
        }
        double[] dArrFit = PolynomialCurveFitter.create(2).fit(weightedObservedPoints.toList());
        cn.mucang.android.jiakaoyi.teachingk2.safe.detector.b.c(dArrFit[2], dArrFit[1], dArrFit[0]);
        u.h("学习完成");
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(DialogInterface dialogInterface, int i) {
        cn.mucang.android.jiakaoyi.teachingk2.safe.detector.b.c(0.0d, 0.0d, 0.0d);
        B("已清除");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q(View view) {
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(View view) {
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(View view) {
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void w(View view) {
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void y(View view) {
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void A(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.d().c > 10.0f) {
            int i = (eVar.d().b > 1.0f ? 1 : (eVar.d().b == 1.0f ? 0 : -1));
        }
        this.f7685h = Math.max(eVar.d().c, eVar.d().b);
        ((ActivityBrakeDistancePageBinding) this.f3424a).info.setText("车速:" + this.f7685h + ",gps类型:" + eVar.getCurrentPosition().f5282h);
        int i2 = eVar.getCurrentPosition().f5282h;
        this.i = i2;
        if (i2 != 4) {
            return;
        }
        Gps gpsFrom = Gps.from(eVar.getCurrentPosition().f5281g);
        if (this.f7684g == null) {
            this.f7684g = new cn.mucang.android.jiakaoyi.signal.i.b(gpsFrom);
        }
        Pos posA = this.f7684g.a(gpsFrom);
        this.f7683f.setPos(posA);
        if (eVar.d().G.safeBoardBrakeState != CarBrakeState.STATE_BRAKE || eVar.d().c() || !this.f7681d || this.c == null) {
            return;
        }
        this.f7682e.add(new Pos(posA));
        if (this.f7682e.size() >= 3) {
            this.c.end = cn.mucang.android.jiakaoyi.hpmap.d.a.c(this.f7682e);
            BrakeInfo brakeInfo = this.c;
            brakeInfo.distance = brakeInfo.start.distanceTo(brakeInfo.end);
            this.c.endTime = System.currentTimeMillis();
            this.f7681d = false;
            this.f7682e.clear();
            ((ActivityBrakeDistancePageBinding) this.f3424a).brake.setText("开始刹车");
            this.b.add(this.c);
            b bVar = this.j;
            if (bVar != null) {
                bVar.notifyDataSetChanged();
            }
            this.c = null;
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "刹车测试";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        ((ActivityBrakeDistancePageBinding) this.f3424a).back.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7693a.q(view);
            }
        });
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.k);
        ((ActivityBrakeDistancePageBinding) this.f3424a).brake.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7692a.s(view);
            }
        });
        ((ActivityBrakeDistancePageBinding) this.f3424a).finishBrake.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7696a.u(view);
            }
        });
        ((ActivityBrakeDistancePageBinding) this.f3424a).brakeData.setLayoutManager(new LinearLayoutManager(this, 1, false));
        RecyclerView recyclerView = ((ActivityBrakeDistancePageBinding) this.f3424a).brakeData;
        b bVar = new b(this.b);
        this.j = bVar;
        recyclerView.setAdapter(bVar);
        ((ActivityBrakeDistancePageBinding) this.f3424a).clearArguments.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7695a.w(view);
            }
        });
        ((ActivityBrakeDistancePageBinding) this.f3424a).unbrake.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.detector.test.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7688a.y(view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.k);
    }
}
