package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.R;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.jiajiandang.SmoothJiaJianDangChecker;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.g0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public class JiaJianDangStateData extends K3BaseStepData<K3JiaJianDangStepConfig> {
    private boolean canStart;
    public boolean changeGearOutTime;
    public long changeGearStartTime;
    private long currentTime;
    private Gear highGear;
    private int index;
    private boolean isPlayDingDong;
    public boolean isSmoothJiaJianDang;
    public boolean isYueJi;
    private Gear lastGear;
    private boolean noInited;
    public boolean reachTargetGear;
    private Gear reduceTargetGear;
    private final SmoothJiaJianDangChecker smoothJiaJianDangChecker;
    public Gear startGear;
    public boolean success;
    private final List<Gear> targetGears;

    public JiaJianDangStateData(K3JiaJianDangStepConfig k3JiaJianDangStepConfig) {
        super(k3JiaJianDangStepConfig);
        this.isSmoothJiaJianDang = true;
        this.canStart = false;
        this.noInited = true;
        this.highGear = null;
        this.startGear = null;
        this.lastGear = null;
        this.targetGears = new ArrayList();
        this.index = 0;
        this.isPlayDingDong = false;
        this.reachTargetGear = false;
        this.smoothJiaJianDangChecker = new SmoothJiaJianDangChecker(k3JiaJianDangStepConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c(Boolean bool) {
        this.isPlayDingDong = false;
    }

    private List<Gear> createGearIter(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str.length()) {
            int i2 = i + 1;
            arrayList.add(Gear.parse(Integer.parseInt(str.substring(i, i2))));
            i = i2;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void e(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, String str) {
        if (this.success || bVar.j()) {
            return;
        }
        if (this.engineType == 1) {
            TtsManager.u(str, TtsGrade.ExamTip, new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.data.JiaJianDangStateData.2
                @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                public void onSpeakEnd() {
                    JiaJianDangStateData jiaJianDangStateData = JiaJianDangStateData.this;
                    jiaJianDangStateData.changeGearStartTime = jiaJianDangStateData.currentTime;
                }
            });
        } else {
            this.changeGearStartTime = this.currentTime;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private String getGearsByGear(Gear gear) {
        if (gear == Gear.Gear1) {
            return (String) ((K3JiaJianDangStepConfig) this.config).p212106.value;
        }
        if (gear == Gear.Gear2) {
            return (String) ((K3JiaJianDangStepConfig) this.config).p212107.value;
        }
        if (gear == Gear.Gear3) {
            return (String) ((K3JiaJianDangStepConfig) this.config).p212108.value;
        }
        if (gear == Gear.Gear4) {
            return (String) ((K3JiaJianDangStepConfig) this.config).p212109.value;
        }
        if (gear == Gear.Gear5) {
            return (String) ((K3JiaJianDangStepConfig) this.config).p212110.value;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean initGear(e eVar) {
        Gear gear;
        if (((Integer) ((K3JiaJianDangStepConfig) this.config).p212103.value).intValue() == 0) {
            gear = eVar.d().m;
        } else {
            if (((Integer) ((K3JiaJianDangStepConfig) this.config).p212103.value).intValue() != 1) {
                if (((Integer) ((K3JiaJianDangStepConfig) this.config).p212103.value).intValue() != 2) {
                    T t = this.config;
                    if (((K3JiaJianDangStepConfig) t).p212130 == null) {
                        return false;
                    }
                    if (((Integer) ((K3JiaJianDangStepConfig) t).p212130.value).intValue() == 0) {
                        this.targetGears.add(Gear.Gear1);
                    } else {
                        this.targetGears.add(Gear.list[((Integer) ((K3JiaJianDangStepConfig) this.config).p212130.value).intValue() + 2]);
                        this.targetGears.add(null);
                    }
                    if (this.engineType == 1) {
                        TtsManager.r(String.format(k0.a(R.string.exam_up_shift_x_gear_1), Integer.valueOf(((Integer) ((K3JiaJianDangStepConfig) this.config).p212130.value).intValue() + 1)), TtsGrade.ExamTip);
                    }
                    return true;
                }
                if (eVar.d().m.gear == 1) {
                    this.targetGears.add(Gear.Gear2);
                    return true;
                }
                if (eVar.d().m.gear <= 1 || eVar.d().m.gear > 6) {
                    return false;
                }
                List<Gear> list = this.targetGears;
                Gear[] gearArr = Gear.list;
                list.add(gearArr[eVar.d().m.gear]);
                this.targetGears.add(gearArr[eVar.d().m.gear + 2]);
                return true;
            }
            gear = Gear.parse(((Integer) ((K3JiaJianDangStepConfig) this.config).p212104.value).intValue() + 1);
            this.startGear = gear;
        }
        String gearsByGear = getGearsByGear(gear);
        if (gearsByGear != null) {
            try {
                List<Gear> listCreateGearIter = createGearIter(gearsByGear);
                if (g.d(listCreateGearIter)) {
                    this.highGear = Gear.GearN;
                    for (Gear gear2 : listCreateGearIter) {
                        if (gear2.gear > this.highGear.gear) {
                            this.highGear = gear2;
                        }
                    }
                    this.targetGears.clear();
                    this.targetGears.addAll(listCreateGearIter);
                    StringBuilder sb = new StringBuilder();
                    Iterator<Gear> it = this.targetGears.iterator();
                    while (it.hasNext()) {
                        sb.append(it.next().gear);
                    }
                    if (((Integer) ((K3JiaJianDangStepConfig) this.config).p212103.value).intValue() == 1 && gear != eVar.d().m && eVar.d().m != Gear.Invalid) {
                        T t2 = this.config;
                        if (((K3JiaJianDangStepConfig) t2).p212128 != null && ((Boolean) ((K3JiaJianDangStepConfig) t2).p212128.value).booleanValue() && this.engineType == 1) {
                            TtsManager.r(String.format(k0.a(R.string.exam_up_shift_x_gear_judge), Integer.valueOf(listCreateGearIter.get(0).gear)), TtsGrade.ExamTip);
                        }
                    }
                    this.index = 0;
                }
                return true;
            } catch (Throwable th) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("挡位配置错误");
                sb2.append(MucangConfig.v() ? ":" + th.getLocalizedMessage() : "");
                u.h(sb2.toString());
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void isPlayDingDong() {
        if (!((Boolean) ((K3JiaJianDangStepConfig) this.config).p212131.value).booleanValue() || this.isPlayDingDong) {
            return;
        }
        this.isPlayDingDong = true;
        g0.c(R.raw.dingdong, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.exam.k3.data.a
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f3220a.c((Boolean) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void orderJiaJianDang(final cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, Gear gear) {
        final String strReplace;
        if (this.targetGears.size() == 0) {
            return;
        }
        int size = this.targetGears.size();
        if (!this.canStart && gear == this.targetGears.get(0)) {
            this.canStart = true;
        }
        if (this.canStart) {
            long j = this.changeGearStartTime;
            if (j > 0 && this.currentTime - j > ((Integer) ((K3JiaJianDangStepConfig) this.config).p212124.value).intValue() * 1000) {
                this.changeGearOutTime = true;
            }
            if (this.targetGears.get(this.index) != gear) {
                Gear gear2 = this.lastGear;
                if (gear == gear2 || gear2 == null || gear == Gear.GearN) {
                    return;
                }
                f.o("isYueJi " + this.isYueJi + " current " + gear);
                this.isYueJi = true;
                return;
            }
            this.changeGearStartTime = 0L;
            this.changeGearOutTime = false;
            if (gear == this.highGear) {
                this.reachTargetGear = true;
            }
            this.isYueJi = false;
            if (this.index >= size - 1) {
                this.reachTargetGear = true;
                this.success = true;
                return;
            }
            isPlayDingDong();
            if (((Boolean) ((K3JiaJianDangStepConfig) this.config).p212111.value).booleanValue()) {
                String strReplace2 = ((String) ((K3JiaJianDangStepConfig) this.config).p212112.value).replace(Marker.ANY_MARKER, String.valueOf(gear.gear));
                if (this.engineType == 1) {
                    TtsManager.r(strReplace2, TtsGrade.ExamTip);
                }
            }
            if (((Boolean) ((K3JiaJianDangStepConfig) this.config).p212113.value).booleanValue()) {
                int iIntValue = ((Integer) ((K3JiaJianDangStepConfig) this.config).p212116.value).intValue() * 1000;
                int i = this.targetGears.get(this.index + 1).gear;
                if (i > gear.gear) {
                    T t = this.config;
                    if (((K3JiaJianDangStepConfig) t).p212114.value != 0) {
                        strReplace = ((String) ((K3JiaJianDangStepConfig) t).p212114.value).contains(Marker.ANY_MARKER) ? ((String) ((K3JiaJianDangStepConfig) this.config).p212114.value).replace(Marker.ANY_MARKER, String.valueOf(i)) : (String) ((K3JiaJianDangStepConfig) this.config).p212114.value;
                    } else {
                        strReplace = String.format(k0.a(R.string.exam_up_shift_x_gear), Integer.valueOf(i));
                    }
                } else {
                    T t2 = this.config;
                    if (((K3JiaJianDangStepConfig) t2).p212115.value != 0) {
                        strReplace = ((String) ((K3JiaJianDangStepConfig) t2).p212115.value).contains(Marker.ANY_MARKER) ? ((String) ((K3JiaJianDangStepConfig) this.config).p212115.value).replace(Marker.ANY_MARKER, String.valueOf(i)) : (String) ((K3JiaJianDangStepConfig) this.config).p212115.value;
                    } else {
                        strReplace = String.format(k0.a(R.string.exam_down_shift_x_gear), Integer.valueOf(i));
                    }
                }
                if (iIntValue != 0) {
                    u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.data.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f3221a.e(bVar, strReplace);
                        }
                    }, iIntValue);
                } else if (!this.success && !bVar.j()) {
                    if (this.engineType == 1) {
                        TtsManager.u(strReplace, TtsGrade.ExamTip, new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.data.JiaJianDangStateData.1
                            @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
                            public void onSpeakEnd() {
                                JiaJianDangStateData jiaJianDangStateData = JiaJianDangStateData.this;
                                jiaJianDangStateData.changeGearStartTime = jiaJianDangStateData.currentTime;
                            }
                        });
                    } else {
                        this.changeGearStartTime = this.currentTime;
                    }
                }
            }
            this.index++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        int i;
        int i2;
        super.onChange(eVar, bVar, examProcessor);
        this.currentTime = examProcessor.i;
        Gear gear = eVar.d().m;
        if (gear == Gear.Invalid) {
            return;
        }
        if (this.isYueJi) {
            this.isSmoothJiaJianDang = false;
        }
        if (this.isSmoothJiaJianDang) {
            this.isSmoothJiaJianDang = this.smoothJiaJianDangChecker.check(eVar);
        }
        if (this.success) {
            return;
        }
        if (this.noInited && initGear(eVar)) {
            this.noInited = false;
        }
        if (((Integer) ((K3JiaJianDangStepConfig) this.config).p212103.value).intValue() == 0 || ((Integer) ((K3JiaJianDangStepConfig) this.config).p212103.value).intValue() == 1) {
            orderJiaJianDang(bVar, gear);
        } else if (((Integer) ((K3JiaJianDangStepConfig) this.config).p212103.value).intValue() == 2) {
            Gear gear2 = this.lastGear;
            if (gear2 != null && gear2 != Gear.GearN && (i2 = gear.gear) >= 1 && i2 <= 6) {
                if (!(cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(gear, gear2, this.rpmRate) || cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(gear, Gear.parse(this.lastGear.gear - 1), this.rpmRate) || cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(gear, Gear.parse(this.lastGear.gear + 1), this.rpmRate))) {
                    this.isYueJi = true;
                }
            }
            if (this.targetGears.contains(gear)) {
                isPlayDingDong();
                this.reachTargetGear = true;
                this.success = true;
            }
        } else {
            Gear gear3 = this.lastGear;
            if (gear3 != null && gear3 != Gear.GearN && (i = gear.gear) >= 1 && i <= 6) {
                if (!(cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(gear, gear3, this.rpmRate) || cn.mucang.android.jiakaoyi.signal.gearsensor.e.c(gear, Gear.parse(this.lastGear.gear + 1), this.rpmRate))) {
                    this.isYueJi = true;
                }
            }
            Gear gear4 = this.reduceTargetGear;
            if (gear4 != null) {
                Gear gear5 = this.lastGear;
                if (gear != gear5 && gear5 != null && gear.gear > gear4.gear && cn.mucang.android.jiakaoyi.signal.gearsensor.e.a(gear, this.rpmRate)) {
                    this.isYueJi = true;
                }
                if (gear.gear < this.reduceTargetGear.gear) {
                    this.reachTargetGear = true;
                    this.success = true;
                }
            } else if (this.targetGears.get(0) != null && this.targetGears.get(0).gear == gear.gear) {
                isPlayDingDong();
                this.targetGears.remove(gear);
                if (this.targetGears.isEmpty()) {
                    this.reachTargetGear = true;
                    this.success = true;
                } else {
                    this.targetGears.clear();
                    this.reduceTargetGear = gear;
                    if (examProcessor.f3104a.p == 1) {
                        TtsManager.r("请减挡", TtsGrade.ExamTip);
                    }
                }
            }
        }
        this.lastGear = gear;
    }
}
