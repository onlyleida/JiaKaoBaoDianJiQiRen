package cn.mucang.jiakaoyi.uilib.ui.setting.gear;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.SeekBar;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.gearsensor.GearPose;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.alibaba.fastjson.JSON;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class GearGyroLearningPage extends BaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f9960a;
    private boolean c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private GearView f9962e;
    private final Map<Gear, c> b = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9961d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f9963f = new a();

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            Pos posD = cn.mucang.android.jiakaoyi.signal.gearsensor.h.d();
            GearGyroLearningPage.this.f9960a.setText("当前  :  " + GearGyroLearningPage.this.t0(posD) + " ,   ,  挡位  :  " + eVar.d().m.gearName);
            Iterator it = GearGyroLearningPage.this.b.entrySet().iterator();
            while (it.hasNext()) {
                c cVar = (c) ((Map.Entry) it.next()).getValue();
                if (cVar.f9969f) {
                    if (cn.mucang.android.jiakaoyi.signal.gearsensor.h.A()) {
                        cVar.f9969f = false;
                        GearGyroLearningPage.this.r0(cVar.f9966a, cVar.b, cVar.c, cVar.f9967d, cVar.f9968e);
                        GearGyroLearningPage.this.f9962e.d();
                        GearGyroLearningPage.this.v0("完成" + cVar.f9968e.gearName + "学习");
                    }
                    cVar.a(GearGyroLearningPage.this);
                }
            }
            if (GearGyroLearningPage.this.f9961d && !cn.mucang.android.jiakaoyi.signal.gearsensor.h.x()) {
                GearGyroLearningPage.this.f9961d = false;
                GearGyroLearningPage.this.v0("标定完成，现在可以开始档位学习了");
            }
            if (posD != null) {
                GearGyroLearningPage.this.f9962e.e(posD.x, posD.y);
            }
            GearGyroLearningPage.this.q0();
        }
    }

    class b implements SeekBar.OnSeekBarChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TextView f9965a;
        final /* synthetic */ cn.mucang.android.jiakaoyi.framework.h.b b;

        b(TextView textView, cn.mucang.android.jiakaoyi.framework.h.b bVar) {
            this.f9965a = textView;
            this.b = bVar;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                this.f9965a.setText(String.valueOf(i));
                this.b.callback(Integer.valueOf(i));
                GearGyroLearningPage.this.f9962e.d();
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f9966a;
        int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f9967d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Gear f9968e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f9969f = false;

        public c(int i, int i2, int i3, int i4, Gear gear) {
            this.f9966a = i;
            this.b = i2;
            this.c = i3;
            this.f9967d = i4;
            this.f9968e = gear;
        }

        void a(Activity activity) {
            TextView textView = (TextView) activity.findViewById(this.f9966a);
            if (this.f9969f) {
                textView.setText("学习中");
            } else {
                textView.setText("学习");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void B(final GearPose gearPose, DialogInterface dialogInterface, int i) {
        new androidx.appcompat.app.c.a(this).setMessage("确定删除?").setPositiveButton("确定删除", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.z
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                this.f10152a.J(gearPose, dialogInterface2, i2);
            }
        }).setNegativeButton("不删除", (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void F(DialogInterface dialogInterface, int i) {
        cn.mucang.android.jiakaoyi.signal.gearsensor.h.T();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void H(DialogInterface dialogInterface, int i) {
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void J(GearPose gearPose, DialogInterface dialogInterface, int i) {
        cn.mucang.android.jiakaoyi.signal.gearsensor.h.e(gearPose);
        this.f9962e.d();
        q0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void M(View view) {
        finish();
        startActivity(new Intent(this, (Class<?>) GearAutoGyroLearningPage.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void Q(View view) {
        if (t()) {
            new androidx.appcompat.app.c.a(this).setTitle("正在挡位校准，确定退出?").setPositiveButton("退出", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.p
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f10141a.F(dialogInterface, i);
                }
            }).setNegativeButton("不退出", (DialogInterface.OnClickListener) null).create().show();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void S(View view) {
        p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void U(View view) {
        p0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c0(CheckBox checkBox, CompoundButton compoundButton, boolean z) {
        cn.mucang.android.jiakaoyi.signal.gearsensor.h.I(z);
        this.f9962e.d();
        s0();
        if (z) {
            checkBox.setVisibility(0);
        } else {
            checkBox.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f0(DialogInterface dialogInterface, int i) {
        new androidx.appcompat.app.c.a(this).setMessage("确定已经挂到空档？").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("确定, 开始校准", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.r
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                this.f10144a.H(dialogInterface2, i2);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h0(int i, int i2, int i3, int i4, Gear gear, View view) {
        u0(i, i2, i3, i4, gear);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j0(int i, int i2, int i3, int i4, Gear gear, DialogInterface dialogInterface, int i5) {
        u0(i, i2, i3, i4, gear);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l0(Gear gear, String str, int i, int i2, int i3, int i4, DialogInterface dialogInterface, int i5) {
        if (!cn.mucang.android.jiakaoyi.signal.gearsensor.h.z() && !cn.mucang.android.jiakaoyi.signal.gearsensor.h.v()) {
            cn.mucang.android.jiakaoyi.signal.gearsensor.h.g();
        }
        cn.mucang.android.jiakaoyi.signal.gearsensor.h.S(gear);
        v0(str);
        c cVar = this.b.get(gear);
        if (cVar == null) {
            Map<Gear, c> map = this.b;
            c cVar2 = new c(i, i2, i3, i4, gear);
            map.put(gear, cVar2);
            cVar = cVar2;
        }
        cVar.f9969f = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n0() {
        int i;
        String jSONString;
        int iHashCode;
        if (this.c) {
            return;
        }
        this.c = true;
        try {
            List<GearPose> listH = cn.mucang.android.jiakaoyi.signal.gearsensor.h.h();
            if (listH != null) {
                i = 0;
                for (int i2 = 0; i2 < listH.size(); i2++) {
                    if (listH.get(i2).gear == Gear.GearN.gear) {
                        i |= 1;
                    } else if (listH.get(i2).gear == Gear.Gear1.gear) {
                        i |= 2;
                    } else if (listH.get(i2).gear == Gear.Gear2.gear) {
                        i |= 4;
                    } else if (listH.get(i2).gear == Gear.Gear3.gear) {
                        i |= 8;
                    } else if (listH.get(i2).gear == Gear.Gear4.gear) {
                        i |= 16;
                    } else if (listH.get(i2).gear == Gear.Gear5.gear) {
                        i |= 32;
                    } else if (listH.get(i2).gear == Gear.GearBack.gear) {
                        i |= 64;
                    }
                }
            } else {
                i = 0;
            }
            if (i == 127 && (iHashCode = (jSONString = JSON.toJSONString(listH)).hashCode()) != cn.mucang.android.jiakaoyi.framework.utils.i0.d("gyro_gear_sensor_value_version_new", 0)) {
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

    public static void o0(Context context) {
        Intent intent = new Intent(context, (Class<?>) GearGyroLearningPage.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    private void p() {
        if (!cn.mucang.android.jiakaoyi.signal.gearsensor.h.z() && !cn.mucang.android.jiakaoyi.signal.gearsensor.h.v()) {
            cn.mucang.android.jiakaoyi.signal.gearsensor.h.g();
        }
        if (!cn.mucang.android.jiakaoyi.signal.gearsensor.h.c()) {
            v0("没有检测到档位传感器");
            return;
        }
        if (!cn.mucang.android.jiakaoyi.signal.gearsensor.h.A()) {
            cn.mucang.android.core.utils.u.h("档位学习时不能进行标定");
            return;
        }
        if (!cn.mucang.android.jiakaoyi.signal.gearsensor.h.X()) {
            TtsManager.H();
            TtsManager.r("陀螺仪角度不合理，请正确安装，或者给控制盒断电30秒再重试", TtsGrade.GlobalTip);
            new androidx.appcompat.app.c.a(this).setTitle("陀螺仪角度不正确").setMessage("请确定安装是否正确，或者将控制盒断电30秒后再重试").setPositiveButton("重试", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.f0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f10116a.v(dialogInterface, i);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
        } else {
            if (cn.mucang.android.core.utils.g.d(cn.mucang.android.jiakaoyi.signal.gearsensor.h.h())) {
                new androidx.appcompat.app.c.a(this).setMessage("当前有档位数据，不能标定。如果标定，会清除所有档位数据，标定后重新学习各个档位数据。确定删除档位数据然后开始标定吗？").setNegativeButton("不标定", (DialogInterface.OnClickListener) null).setPositiveButton("删除档位数据，开始标定", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.q
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f10143a.x(dialogInterface, i);
                    }
                }).create().show();
                return;
            }
            String str = AppUtils.l() ? "请在2档和3档之间来回挂档，重复5遍" : "请在3档和4档之间来回挂档，重复5遍";
            v0(str);
            new androidx.appcompat.app.c.a(this).setMessage(str).setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("开始标定", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.k
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f10128a.z(dialogInterface, i);
                }
            }).create().show();
        }
    }

    private void p0() {
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.h.z() || cn.mucang.android.jiakaoyi.signal.gearsensor.h.v()) {
            new androidx.appcompat.app.c.a(this).setMessage("请将档位挂到空档，然后点击校准").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("校准", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.o
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f10139a.f0(dialogInterface, i);
                }
            }).create().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(View view) {
        final GearPose gearPose = (GearPose) view.getTag();
        if (gearPose == null) {
            return;
        }
        this.f9962e.setChoose(gearPose);
        new androidx.appcompat.app.c.a(this).setMessage("删除这个档位数据?").setNegativeButton("不删除", (DialogInterface.OnClickListener) null).setPositiveButton(SundialNumKeyBoardView.KEY_DELETE, new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f10113a.B(gearPose, dialogInterface, i);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0() {
        r0(R.id.g0, R.id.g0_path1, R.id.g0_path2, R.id.g0_path3, Gear.GearN);
        r0(R.id.g1, R.id.g1_path1, R.id.g1_path2, R.id.g1_path3, Gear.Gear1);
        r0(R.id.g2, R.id.g2_path1, R.id.g2_path2, R.id.g2_path3, Gear.Gear2);
        r0(R.id.g3, R.id.g3_path1, R.id.g3_path2, R.id.g3_path3, Gear.Gear3);
        r0(R.id.g4, R.id.g4_path1, R.id.g4_path2, R.id.g4_path3, Gear.Gear4);
        r0(R.id.g5, R.id.g5_path1, R.id.g5_path2, R.id.g5_path3, Gear.Gear5);
        r0(R.id.gb, R.id.gb_path1, R.id.gb_path2, R.id.gb_path3, Gear.GearBack);
    }

    private void r() {
        cn.mucang.android.jiakaoyi.signal.gearsensor.h.E(true, false);
        new androidx.appcompat.app.c.a(this).setMessage(AppUtils.l() ? "请将档位在2档和3档之间来回挂档5次" : "请将档位在3档和4档之间来回挂档5次").setPositiveButton("开始", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.s
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.E(false, true);
            }
        }).setNegativeButton("开始", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.u
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.E(false, true);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r0(final int i, final int i2, final int i3, final int i4, final Gear gear) {
        if (!this.b.containsKey(gear)) {
            this.b.put(gear, new c(i, i2, i3, i4, gear));
        }
        TextView textView = (TextView) findViewById(i);
        TextView textView2 = (TextView) findViewById(i2);
        TextView textView3 = (TextView) findViewById(i3);
        TextView textView4 = (TextView) findViewById(i4);
        List<GearPose> listL = cn.mucang.android.jiakaoyi.signal.gearsensor.h.l(gear);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f9987a.q(view);
            }
        };
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10117a.h0(i, i2, i3, i4, gear, view);
            }
        });
        textView2.setOnClickListener(onClickListener);
        textView3.setOnClickListener(onClickListener);
        textView4.setOnClickListener(onClickListener);
        if (listL == null || listL.size() == 0) {
            textView2.setVisibility(4);
            textView3.setVisibility(4);
            textView4.setVisibility(4);
            return;
        }
        if (listL.size() == 1) {
            textView2.setVisibility(0);
            textView2.setTag(listL.get(0));
            textView2.setText("路径1," + ((int) listL.get(0).area()));
            textView3.setVisibility(4);
            textView4.setVisibility(4);
            return;
        }
        if (listL.size() == 2) {
            textView2.setVisibility(0);
            textView2.setTag(listL.get(0));
            textView2.setText("路径1," + ((int) listL.get(0).area()));
            textView3.setVisibility(0);
            textView3.setTag(listL.get(1));
            textView3.setText("路径2," + ((int) listL.get(1).area()));
            textView4.setVisibility(4);
            return;
        }
        textView2.setVisibility(0);
        textView2.setTag(listL.get(0));
        textView2.setText("路径1," + ((int) listL.get(0).area()));
        textView3.setVisibility(0);
        textView3.setTag(listL.get(1));
        textView3.setText("路径2," + ((int) listL.get(1).area()));
        textView4.setVisibility(0);
        textView4.setTag(listL.get(2));
        textView4.setText("路径3," + ((int) listL.get(2).area()));
    }

    private void s(int i, int i2, float f2, cn.mucang.android.jiakaoyi.framework.h.b<Integer> bVar) {
        TextView textView = (TextView) findViewById(i);
        SeekBar seekBar = (SeekBar) findViewById(i2);
        seekBar.setMax(100);
        int i3 = (int) (f2 * 100.0f);
        seekBar.setProgress(i3);
        textView.setText(String.valueOf(i3));
        seekBar.setOnSeekBarChangeListener(new b(textView, bVar));
    }

    private void s0() {
        findViewById(R.id.argumentContent).setVisibility(cn.mucang.android.jiakaoyi.signal.gearsensor.h.z() ? 0 : 8);
    }

    private boolean t() {
        Iterator<Map.Entry<Gear, c>> it = this.b.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().f9969f) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String t0(Pos pos) {
        if (pos == null) {
            return "0,0,0";
        }
        return w0(pos.x) + " , " + w0(pos.y) + " , " + w0(pos.z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(DialogInterface dialogInterface, int i) {
        p();
    }

    private void u0(final int i, final int i2, final int i3, final int i4, final Gear gear) {
        String str;
        String str2;
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.h.x()) {
            cn.mucang.android.core.utils.u.h("当前正在进行陀螺仪标定，不能档位学习");
            return;
        }
        Iterator<Map.Entry<Gear, c>> it = this.b.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().f9969f) {
                return;
            }
        }
        List<GearPose> listL = cn.mucang.android.jiakaoyi.signal.gearsensor.h.l(gear);
        boolean z = true;
        if (listL != null && listL.size() > 0) {
            if (gear == Gear.GearN) {
                if (listL.size() == 1) {
                    v0("空档只能学习一个位置，如果要重新学习，请先删除当前数据");
                    return;
                }
            } else if (listL.size() == 3) {
                v0("最多只能学习3个路径");
                return;
            }
        }
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.h.z() && !cn.mucang.android.jiakaoyi.signal.gearsensor.l.c.u()) {
            v0("请先标定陀螺仪");
            return;
        }
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.h.v() && !cn.mucang.android.jiakaoyi.signal.gearsensor.l.a.v()) {
            v0("请先标定陀螺仪");
            return;
        }
        Gear gear2 = Gear.GearN;
        if (gear != gear2) {
            List<GearPose> listL2 = cn.mucang.android.jiakaoyi.signal.gearsensor.h.l(gear2);
            if (listL2 != null && listL2.size() > 0) {
                Iterator<GearPose> it2 = listL2.iterator();
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
                v0("请先学习空档");
                return;
            }
        }
        if (!cn.mucang.android.jiakaoyi.signal.gearsensor.h.X()) {
            TtsManager.H();
            TtsManager.r("陀螺仪角度不合理，请正确安装，或者给控制盒断电30秒再重试", TtsGrade.GlobalTip);
            new androidx.appcompat.app.c.a(this).setTitle("陀螺仪角度不正确").setMessage("请确定安装是否正确，或者将控制盒断电30秒后再重试").setPositiveButton("重试", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.l
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    this.f10130a.j0(i, i2, i3, i4, gear, dialogInterface, i5);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
            return;
        }
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.h.v()) {
            str = "请将档位挂到" + gear.gearName + "后，点击开始";
        } else {
            str = "请将档位挂到空档后，点击开始";
        }
        if (cn.mucang.android.jiakaoyi.signal.gearsensor.h.v()) {
            str2 = "请在" + gear.gearName + "的各个方向来回摆动档杆";
        } else {
            str2 = "请将档位挂到" + gear.gearName + "后，松开挡杆";
        }
        final String str3 = str2;
        new androidx.appcompat.app.c.a(this).setCancelable(false).setMessage(str).setPositiveButton("开始", new DialogInterface.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.c0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i5) {
                this.f9989a.l0(gear, str3, i, i2, i3, i4, dialogInterface, i5);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0(String str) {
        TtsManager.H();
        TtsManager.r(str, TtsGrade.GlobalTip);
        cn.mucang.android.core.utils.u.h(str);
        cn.mucang.android.jiakaoyi.framework.log.f.o(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x(DialogInterface dialogInterface, int i) {
        if (cn.mucang.android.core.utils.n0.g(cn.mucang.android.jiakaoyi.signal.gearsensor.h.b())) {
            this.f9961d = true;
        }
    }

    private String w0(double d2) {
        return String.format("%.1f", Double.valueOf(d2));
    }

    private void x0() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f10148a.n0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(DialogInterface dialogInterface, int i) {
        if (cn.mucang.android.core.utils.n0.g(cn.mucang.android.jiakaoyi.signal.gearsensor.h.b())) {
            this.f9961d = true;
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "挡位传感器标定页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_test_gear_gyro_data);
        findViewById(R.id.autoLearn).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10149a.M(view);
            }
        });
        this.f9960a = (TextView) findViewById(R.id.value);
        this.f9962e = (GearView) findViewById(R.id.mapView);
        s(R.id.argNum, R.id.argSeek, cn.mucang.android.jiakaoyi.signal.gearsensor.h.m(), new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.m
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.K(Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, ((Integer) obj).intValue() / 100.0f)));
            }
        });
        s(R.id.argNumBottom, R.id.argSeekBottom, cn.mucang.android.jiakaoyi.signal.gearsensor.h.i(), new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.t
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.L(Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, ((Integer) obj).intValue() / 100.0f)));
            }
        });
        s(R.id.valueNum, R.id.valueSeek, cn.mucang.android.jiakaoyi.signal.gearsensor.h.r(), new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.e0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.R(Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, ((Integer) obj).intValue() / 100.0f)));
            }
        });
        CheckBox checkBox = (CheckBox) findViewById(R.id.calGearWhenClutch);
        checkBox.setChecked(cn.mucang.android.jiakaoyi.signal.gearsensor.h.B());
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.y
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.M(z);
            }
        });
        CheckBox checkBox2 = (CheckBox) findViewById(R.id.noCalWhenNoClutch);
        checkBox2.setChecked(cn.mucang.android.jiakaoyi.signal.gearsensor.h.D());
        checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.n
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.N(z);
            }
        });
        CheckBox checkBox3 = (CheckBox) findViewById(R.id.trustObdGear);
        checkBox3.setChecked(cn.mucang.android.jiakaoyi.signal.gearsensor.h.q());
        checkBox3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.d0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.Q(z);
            }
        });
        final CheckBox checkBox4 = (CheckBox) findViewById(R.id.calOnce);
        checkBox4.setChecked(cn.mucang.android.jiakaoyi.signal.gearsensor.h.w());
        checkBox4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.j
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.a(z);
            }
        });
        CheckBox checkBox5 = (CheckBox) findViewById(R.id.areaFun);
        checkBox5.setChecked(cn.mucang.android.jiakaoyi.signal.gearsensor.h.u());
        checkBox5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.i
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f10124a.c0(checkBox4, compoundButton, z);
            }
        });
        CheckBox checkBox6 = (CheckBox) findViewById(R.id.calQuick);
        checkBox6.setChecked(cn.mucang.android.jiakaoyi.signal.gearsensor.h.y());
        checkBox6.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.h
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.O(z);
            }
        });
        CheckBox checkBox7 = (CheckBox) findViewById(R.id.trustExtGear);
        checkBox7.setChecked(cn.mucang.android.jiakaoyi.signal.gearsensor.h.U());
        checkBox7.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.x
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                cn.mucang.android.jiakaoyi.signal.gearsensor.h.P(z);
            }
        });
        findViewById(R.id.finish).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f9985a.Q(view);
            }
        });
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f9963f);
        findViewById(R.id.calibrate).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10115a.S(view);
            }
        });
        q0();
        int i = R.id.oneKeyCalibrate;
        findViewById(i).setVisibility((cn.mucang.android.jiakaoyi.signal.gearsensor.h.z() || cn.mucang.android.jiakaoyi.signal.gearsensor.h.v()) ? 0 : 8);
        findViewById(i).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10121a.U(view);
            }
        });
        s0();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.f9963f);
        cn.mucang.android.jiakaoyi.signal.gearsensor.h.T();
        x0();
        cn.mucang.android.jiakaoyi.signal.gearsensor.h.G();
    }
}
