package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.OpenCloseDoorChecker;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116123_Event extends d<K3TingCheStepConfig> {
    private static final String TAG = "Event_116123_ ";
    private final int StepCloseEngine_4;
    private final int StepFootBrakeOn_3;
    private final int StepHandbrakeOpen_2;
    private final int StepHuiKongDang_1;
    private final int StepOpenCloseDoor_6;
    private final int StepSeatBeltOn_5;
    private OpenCloseDoorChecker closeDoorChecker;
    private int currentIndex;
    private Gear currentValidGear;
    private int[] orderArr;
    private String[] orderNameArr;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_TingChe_116123_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.orderNameArr = new String[]{"", "(1)回空挡", "(2)拉手刹", "(3)松脚刹", "(4)熄火", "(5)解安全带", "(6)开关车门"};
        this.StepHuiKongDang_1 = 1;
        this.StepHandbrakeOpen_2 = 2;
        this.StepFootBrakeOn_3 = 3;
        this.StepCloseEngine_4 = 4;
        this.StepSeatBeltOn_5 = 5;
        this.StepOpenCloseDoor_6 = 6;
        this.currentIndex = 0;
        this.currentValidGear = Gear.Invalid;
        String str = (String) k3TingCheStepConfig.p216142.value;
        if (n0.e(str)) {
            return;
        }
        this.orderArr = new int[str.length()];
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            this.orderArr[i] = charArray[i] - '0';
        }
    }

    private boolean checkBackStep(e eVar, int i) {
        int i2 = i;
        while (true) {
            int[] iArr = this.orderArr;
            if (i2 >= iArr.length) {
                return true;
            }
            if (iArr[i2] == 6) {
                if (!eVar.d().j) {
                    f.o("Event_116123_ 提前 门是开的");
                    return false;
                }
            } else if (checkOrder(eVar, i2)) {
                int[] iArr2 = this.orderArr;
                if (iArr2[i] == 1) {
                    f.o("Event_116123_ 提前 挡位空挡");
                } else if (iArr2[i] == 2) {
                    f.o("Event_116123_ 提前 手刹拉起");
                } else if (iArr2[i] == 3) {
                    f.o("Event_116123_ 提前 脚刹松开");
                } else if (iArr2[i] == 4) {
                    f.o("Event_116123_ 提前 引擎熄火");
                } else if (iArr2[i] == 5) {
                    f.o("Event_116123_ 提前 安全带松开");
                }
                return false;
            }
            i2++;
        }
    }

    public boolean checkOrder(e eVar, int i) {
        int[] iArr = this.orderArr;
        if (iArr[i] == 1) {
            if (this.currentIndex - 1 == i) {
                return this.currentValidGear == Gear.GearN;
            }
            if (eVar.d().m == Gear.GearN) {
                if (this.currentIndex == i) {
                    f.o("Event_116123_  检查到完成回空挡");
                }
                return true;
            }
        } else if (iArr[i] == 2) {
            if (this.currentIndex - 1 == i && !eVar.d().f()) {
                f.o("检测上一个步骤的松手刹操作时 车辆是熄火的  " + eVar.d().p);
                return true;
            }
            if (!eVar.d().f5268f) {
                if (this.currentIndex == i) {
                    f.o("Event_116123_  检查到手刹拉起");
                }
                return true;
            }
        } else if (iArr[i] == 3) {
            if (!eVar.d().f5269g) {
                if (this.currentIndex == i) {
                    f.o("Event_116123_  检查到脚刹松开");
                }
                return true;
            }
        } else if (iArr[i] == 4) {
            if (!eVar.d().f()) {
                if (this.currentIndex == i) {
                    f.o("Event_116123_  检查到引擎关闭");
                }
                return true;
            }
        } else if (iArr[i] == 5) {
            if (!eVar.d().f5266d) {
                if (this.currentIndex == i) {
                    f.o("Event_116123_  检查到安全带松开");
                }
                return true;
            }
        } else if (iArr[i] == 6 && eVar.d().j) {
            if (this.currentIndex == i) {
                f.o("Event_116123_  检查到门关闭");
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.orderArr.length == 0 || bVar.j()) {
            setDoNotExecute(true);
            f.o("Event_116123_  orderArr.length " + this.orderArr.length + " stepEvent.isEnd() " + bVar.j());
            return false;
        }
        if (this.orderArr.length == 0) {
            setDoNotExecute(true);
            f.o("Event_116123_  p216142 （回空挡(1)拉手刹(2)松脚刹(3)熄火(4)解安全带(5)开关车门(6)）配置有错误 value = " + ((String) ((K3TingCheStepConfig) this.config).p216142.value));
            return false;
        }
        if (eVar.d().m != Gear.Invalid) {
            this.currentValidGear = eVar.d().m;
        }
        if (!eVar.d().b()) {
            int i = this.currentIndex;
            int[] iArr = this.orderArr;
            if (i < iArr.length) {
                if (iArr[i] == 6) {
                    if (i - 1 >= 0 && !checkOrder(eVar, i - 1)) {
                        setDoNotExecute(true);
                        int i2 = this.orderArr[this.currentIndex - 1];
                        if (i2 < this.orderNameArr.length) {
                            f.o("Event_116123_  开关车门做对时检查上一个步骤" + this.orderNameArr[i2] + " 做错扣分");
                        }
                        return false;
                    }
                    if (!checkBackStep(eVar, this.currentIndex + 1)) {
                        setDoNotExecute(true);
                        return false;
                    }
                    if (this.closeDoorChecker == null) {
                        this.closeDoorChecker = new OpenCloseDoorChecker();
                    }
                    this.closeDoorChecker.check(eVar);
                    OpenCloseDoorChecker.State state = this.closeDoorChecker.state;
                    if (state == OpenCloseDoorChecker.State.Finish) {
                        this.currentIndex++;
                    } else if (state == OpenCloseDoorChecker.State.Error) {
                        setDoNotExecute(true);
                        f.o("Event_116123_  开关车门步骤做错扣分");
                        return false;
                    }
                } else {
                    if (!checkBackStep(eVar, i + 1)) {
                        setDoNotExecute(true);
                        return false;
                    }
                    if (checkOrder(eVar, this.currentIndex)) {
                        int i3 = this.currentIndex;
                        if (i3 - 1 < 0) {
                            this.currentIndex = i3 + 1;
                        } else {
                            if (!checkOrder(eVar, i3 - 1)) {
                                setDoNotExecute(true);
                                int i4 = this.orderArr[this.currentIndex - 1];
                                if (i4 < this.orderNameArr.length) {
                                    f.o("Event_116123_  做对一个操作时检查上一个步骤" + this.orderNameArr[i4] + " 做错扣分");
                                }
                                return false;
                            }
                            this.currentIndex++;
                        }
                    }
                }
            }
            if (this.currentIndex == this.orderArr.length) {
                f.o("Event_116123_ 所有步骤已经完成");
                setDoNotExecute(true);
                return true;
            }
        }
        if (!bVar.j()) {
            return true;
        }
        setDoNotExecute(true);
        f.o("Event_116123_ 项目结束 步骤没有做完 ");
        return false;
    }
}
