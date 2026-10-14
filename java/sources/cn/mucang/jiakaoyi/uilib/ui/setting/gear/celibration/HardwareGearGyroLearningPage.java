package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.gear.GearDataConverter;
import cn.mucang.jiakaoyi.uilib.gear.GearDataReporter;
import cn.mucang.jiakaoyi.uilib.gear.GetGearDataListener;
import cn.mucang.jiakaoyi.uilib.gear.RemoteGearSetter;
import cn.mucang.jiakaoyi.uilib.gear.entity.GearEntity;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.q0;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.alibaba.fastjson.JSON;
import com.mucang.android.jiakaoyi.uilib.R;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class HardwareGearGyroLearningPage extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f10001a;
    private boolean c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HardwareGearCalibView f10003e;
    private final Map<Gear, b> b = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o0 f10002d = new o0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f10004f = new a();

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            CarModel carModelD = eVar.d();
            HardwareGearGyroLearningPage.this.f10002d.o(carModelD.U, carModelD.T, carModelD.S, carModelD.X, carModelD.W, carModelD.V);
            Pos posG = HardwareGearGyroLearningPage.this.f10002d.g();
            HardwareGearGyroLearningPage.this.f10001a.setText("当前  :  " + HardwareGearGyroLearningPage.this.S(posG) + " ,  ,  挡位  :  " + eVar.d().m.gearName);
            Iterator it = HardwareGearGyroLearningPage.this.b.entrySet().iterator();
            while (it.hasNext()) {
                b bVar = (b) ((Map.Entry) it.next()).getValue();
                if (bVar.f10008e) {
                    if (HardwareGearGyroLearningPage.this.f10002d.m()) {
                        bVar.f10008e = false;
                        HardwareGearGyroLearningPage.this.R(bVar.f10006a, bVar.b, bVar.c, bVar.f10007d);
                        HardwareGearGyroLearningPage.this.f10003e.d(HardwareGearGyroLearningPage.this.f10002d.b());
                        HardwareGearGyroLearningPage.this.V("完成" + bVar.f10007d.gearName + "学习");
                    }
                    bVar.a(HardwareGearGyroLearningPage.this);
                }
            }
            if (posG != null) {
                HardwareGearGyroLearningPage.this.f10003e.e(posG.x, posG.y);
            }
            HardwareGearGyroLearningPage.this.Q();
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f10006a;
        int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Gear f10007d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f10008e = false;

        public b(int i, int i2, int i3, Gear gear) {
            this.f10006a = i;
            this.b = i2;
            this.c = i3;
            this.f10007d = gear;
        }

        void a(Activity activity) {
            TextView textView = (TextView) activity.findViewById(this.f10006a);
            TextView textView2 = (TextView) activity.findViewById(this.c);
            if (!this.f10008e) {
                textView.setText("学习");
                textView2.setVisibility(4);
            } else {
                textView.setText("学习中");
                textView2.setVisibility(0);
                textView2.setText("停止");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void C(View view) {
        GearDataReporter.f9320a.j(new GetGearDataListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.c0
            @Override // cn.mucang.jiakaoyi.uilib.gear.GetGearDataListener
            public final void a(cn.mucang.android.jiakaoyi.signal.communicate.receive.s sVar) {
                this.f10019a.w(sVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void E(View view) {
        if (cn.mucang.android.core.utils.g.b(this.f10002d.b())) {
            cn.mucang.android.core.utils.u.h("没有挡位数据");
            return;
        }
        List<GearPose> listB = this.f10002d.b();
        cn.mucang.android.jiakaoyi.framework.log.f.o("下发硬件挡位数据压缩前： " + JSON.toJSONString(listB));
        GearEntity gearEntity = new GearEntity();
        ArrayList arrayList = new ArrayList();
        gearEntity.setGearTracks(arrayList);
        Iterator<GearPose> it = listB.iterator();
        while (it.hasNext()) {
            arrayList.add(cn.mucang.jiakaoyi.uilib.gear.entity.a.a(it.next()));
        }
        if (arrayList.size() > 15) {
            cn.mucang.android.core.utils.u.h("采点数量超过15个,无法下发");
            return;
        }
        byte[] bArrA = GearDataConverter.a(gearEntity);
        if (bArrA == null) {
            cn.mucang.android.core.utils.u.h("挡位数据有问题");
            cn.mucang.android.jiakaoyi.framework.log.f.o("下发给主控的档位数据出现问题 " + JSON.toJSONString(gearEntity));
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("下发硬件挡位数据压缩后： " + JSON.toJSONString(gearEntity));
        RemoteGearSetter.f9324a.t(bArrA, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void G(int i, int i2, int i3, Gear gear, View view) {
        T(i, i2, i3, gear);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void I(Gear gear, View view) {
        U(gear);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void K(int i, int i2, int i3, Gear gear, DialogInterface dialogInterface, int i4) {
        T(i, i2, i3, gear);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void M(Gear gear, String str, int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        this.f10002d.k(gear);
        V(str);
        b bVar = this.b.get(gear);
        if (bVar == null) {
            Map<Gear, b> map = this.b;
            b bVar2 = new b(i, i2, i3, gear);
            map.put(gear, bVar2);
            bVar = bVar2;
        }
        bVar.f10008e = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void O() {
        int i;
        String jSONString;
        int iHashCode;
        if (this.c) {
            return;
        }
        this.c = true;
        try {
            List<GearPose> listB = this.f10002d.b();
            if (listB != null) {
                i = 0;
                for (int i2 = 0; i2 < listB.size(); i2++) {
                    if (listB.get(i2).gear == Gear.GearN.gear) {
                        i |= 1;
                    } else if (listB.get(i2).gear == Gear.Gear1.gear) {
                        i |= 2;
                    } else if (listB.get(i2).gear == Gear.Gear2.gear) {
                        i |= 4;
                    } else if (listB.get(i2).gear == Gear.Gear3.gear) {
                        i |= 8;
                    } else if (listB.get(i2).gear == Gear.Gear4.gear) {
                        i |= 16;
                    } else if (listB.get(i2).gear == Gear.Gear5.gear) {
                        i |= 32;
                    } else if (listB.get(i2).gear == Gear.GearBack.gear) {
                        i |= 64;
                    }
                }
            } else {
                i = 0;
            }
            if (i == 127 && (iHashCode = (jSONString = JSON.toJSONString(listB)).hashCode()) != cn.mucang.android.jiakaoyi.framework.utils.i0.d("gyro_gear_sensor_value_version_new", 0)) {
                new q0().m(jSONString);
                cn.mucang.android.jiakaoyi.framework.utils.i0.k("gyro_gear_sensor_value_version_new", iHashCode);
            }
        } catch (Throwable th) {
            try {
                cn.mucang.android.core.utils.t.d("TAG", th.getMessage());
            } finally {
                this.c = false;
            }
        }
    }

    public static void P(Context context) {
        Intent intent = new Intent(context, (Class<?>) HardwareGearGyroLearningPage.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        R(R.id.g0, R.id.g0_path1, R.id.g0_stop, Gear.GearN);
        R(R.id.g1, R.id.g1_path1, R.id.g1_stop, Gear.Gear1);
        R(R.id.g2, R.id.g2_path1, R.id.g2_stop, Gear.Gear2);
        R(R.id.g3, R.id.g3_path1, R.id.g3_stop, Gear.Gear3);
        R(R.id.g4, R.id.g4_path1, R.id.g4_stop, Gear.Gear4);
        R(R.id.g5, R.id.g5_path1, R.id.g5_stop, Gear.Gear5);
        R(R.id.gb, R.id.gb_path1, R.id.gb_stop, Gear.GearBack);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(final int i, final int i2, final int i3, final Gear gear) {
        if (!this.b.containsKey(gear)) {
            this.b.put(gear, new b(i, i2, i3, gear));
        }
        TextView textView = (TextView) findViewById(i);
        TextView textView2 = (TextView) findViewById(i2);
        TextView textView3 = (TextView) findViewById(i3);
        List<GearPose> listF = this.f10002d.f(gear);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10029a.o(view);
            }
        };
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10021a.I(gear, view);
            }
        };
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10010a.G(i, i2, i3, gear, view);
            }
        });
        textView2.setOnClickListener(onClickListener);
        textView3.setOnClickListener(onClickListener2);
        if (listF == null || listF.size() == 0) {
            textView2.setVisibility(4);
            return;
        }
        if (listF.size() == 1) {
            textView2.setVisibility(0);
            textView2.setTag(listF.get(0));
            textView2.setText("路径1," + ((int) listF.get(0).area()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String S(Pos pos) {
        if (pos == null) {
            return "0,0,0";
        }
        return W(pos.x) + " , " + W(pos.y) + " , " + W(pos.z);
    }

    private void T(final int i, final int i2, final int i3, final Gear gear) {
        Iterator<Map.Entry<Gear, b>> it = this.b.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().f10008e) {
                return;
            }
        }
        List<GearPose> listF = this.f10002d.f(gear);
        boolean z = true;
        if (listF != null && listF.size() > 0) {
            if (gear == Gear.GearN) {
                if (listF.size() == 1) {
                    V("空档只能学习一个位置，如果要重新学习，请先删除当前数据");
                    return;
                }
            } else if (listF.size() == 1) {
                V("最多只能学习1个路径");
                return;
            }
        }
        Gear gear2 = Gear.GearN;
        if (gear != gear2) {
            List<GearPose> listF2 = this.f10002d.f(gear2);
            if (listF2 != null && listF2.size() > 0) {
                Iterator<GearPose> it2 = listF2.iterator();
                do {
                    if (!it2.hasNext()) {
                        z = false;
                        break;
                    }
                } while (it2.next().gear != Gear.GearN.gear);
            } else {
                z = false;
                break;
            }
            if (!z) {
                V("请先学习空档");
                return;
            }
        }
        if (!this.f10002d.j()) {
            TtsManager.H();
            TtsManager.r("陀螺仪角度不合理，请正确安装，或者给控制盒断电30秒再重试", TtsGrade.GlobalTip);
            new androidx.appcompat.app.c.a(this).setTitle("陀螺仪角度不正确").setMessage("请确定安装是否正确，或者将控制盒断电30秒后再重试").setPositiveButton("重试", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.i0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i4) {
                    this.f10031a.K(i, i2, i3, gear, dialogInterface, i4);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
            return;
        }
        String str = "请将档位挂到" + gear.gearName + "后，点击开始";
        final String str2 = "请在" + gear.gearName + "的各个方向来回摆动档杆";
        new androidx.appcompat.app.c.a(this).setCancelable(false).setMessage(str).setPositiveButton("开始", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.b0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                this.f10014a.M(gear, str2, i, i2, i3, dialogInterface, i4);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
    }

    private void U(Gear gear) {
        this.f10002d.stop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(String str) {
        TtsManager.H();
        TtsManager.r(str, TtsGrade.GlobalTip);
        cn.mucang.android.core.utils.u.h(str);
        cn.mucang.android.jiakaoyi.framework.log.f.o(str);
    }

    private String W(double d2) {
        return String.format("%.1f", Double.valueOf(d2));
    }

    private void X() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.g0
            @Override // java.lang.Runnable
            public final void run() {
                this.f10027a.O();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(View view) {
        final GearPose gearPose = (GearPose) view.getTag();
        if (gearPose == null) {
            return;
        }
        this.f10003e.setChoose(gearPose);
        new androidx.appcompat.app.c.a(this).setMessage("删除这个档位数据?").setNegativeButton("不删除", (DialogInterface.OnClickListener) null).setPositiveButton(SundialNumKeyBoardView.KEY_DELETE, new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.j0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f10035a.r(gearPose, dialogInterface, i);
            }
        }).create().show();
    }

    private boolean p() {
        Iterator<Map.Entry<Gear, b>> it = this.b.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().f10008e) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r(final GearPose gearPose, DialogInterface dialogInterface, int i) {
        new androidx.appcompat.app.c.a(this).setMessage("确定删除?").setPositiveButton("确定删除", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.y
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                this.f10109a.y(gearPose, dialogInterface2, i2);
            }
        }).setNegativeButton("不删除", (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(DialogInterface dialogInterface, int i) {
        this.f10002d.stop();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void w(cn.mucang.android.jiakaoyi.signal.communicate.receive.s sVar) {
        List<GearPose> listB;
        if (sVar == null) {
            cn.mucang.android.core.utils.u.h("获取硬件挡位数据为null");
            return;
        }
        if (sVar.f5428a) {
            if (sVar.a() != 1) {
                cn.mucang.android.core.utils.u.h("获取挡位数据不是区域法");
                return;
            }
            cn.mucang.android.core.utils.u.h("获取区域法硬件挡位数据成功");
            byte[] bArrA = sVar.b().a();
            GearDataConverter.a aVar = GearDataConverter.f9334a;
            byte[] bArrF = aVar.f(bArrA, true);
            if (bArrF == null || bArrF.length <= 0 || (listB = cn.mucang.jiakaoyi.uilib.gear.entity.a.b(aVar.b(ByteBuffer.wrap(bArrF)))) == null) {
                return;
            }
            this.f10002d.e(listB);
            this.f10002d.r();
            this.f10003e.d(this.f10002d.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void y(GearPose gearPose, DialogInterface dialogInterface, int i) {
        this.f10002d.i(gearPose);
        this.f10003e.d(this.f10002d.b());
        Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void A(View view) {
        if (p()) {
            new androidx.appcompat.app.c.a(this).setTitle("正在挡位校准，确定退出?").setPositiveButton("退出", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.k0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f10037a.u(dialogInterface, i);
                }
            }).setNegativeButton("不退出", (DialogInterface.OnClickListener) null).create().show();
        } else {
            finish();
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "挡位传感器标定页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_test_hardware_gear_gyro_data);
        this.f10001a = (TextView) findViewById(R.id.value);
        this.f10003e = (HardwareGearCalibView) findViewById(R.id.mapView);
        findViewById(R.id.finish).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10025a.A(view);
            }
        });
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f10004f);
        this.f10002d.r();
        this.f10003e.d(this.f10002d.b());
        Q();
        findViewById(R.id.getHardwareData).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10023a.C(view);
            }
        });
        findViewById(R.id.sendToMaster).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10110a.E(view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f10004f);
        this.f10002d.stop();
        X();
    }
}
