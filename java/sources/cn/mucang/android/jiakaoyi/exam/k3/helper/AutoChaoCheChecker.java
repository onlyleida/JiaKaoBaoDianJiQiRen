package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AutoChaoCheChecker {
    private float autoChaoCheStartDistance;
    private K3BianDaoStepConfig bianDaoStepConfig;
    public BooleanValue canExeBianDao;
    private K3ChaoCheStepConfig chaoCheStepConfig;
    public IntegerValue distanceLimit;
    private K3GlobalStepConfig globalStepConfig;
    private boolean hadReachDistance;
    private boolean hadReachSpeed;
    public BooleanValue isAutoBianDao;
    public BooleanValue isAutoChaoChe;
    private K3QiBuStepConfig qiBuStepConfig;
    public IntegerValue speedLimit;
    public boolean finishAutoBianDao = false;
    private boolean hadChaoChe = false;
    private boolean finishAutoChaoChe = false;
    private HashMap<Step, Boolean> frameResult = new HashMap<>();
    private GlobalStateData.State lastState = GlobalStateData.State.before;

    public AutoChaoCheChecker(K3GlobalStepConfig k3GlobalStepConfig) {
        this.globalStepConfig = k3GlobalStepConfig;
        this.isAutoBianDao = k3GlobalStepConfig.p200206;
        this.isAutoChaoChe = k3GlobalStepConfig.p200202;
        this.speedLimit = k3GlobalStepConfig.p200204;
        this.distanceLimit = k3GlobalStepConfig.p200203;
        this.canExeBianDao = k3GlobalStepConfig.p200265;
    }

    private void resetAutoChaoChe() {
        this.hadChaoChe = false;
        this.autoChaoCheStartDistance = BitmapDescriptorFactory.HUE_RED;
        this.hadReachSpeed = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HashMap<Step, Boolean> check(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, GlobalStateData.State state) {
        K3QiBuStepConfig k3QiBuStepConfig;
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = Boolean.TRUE;
        this.frameResult.clear();
        if (this.bianDaoStepConfig == null) {
            this.bianDaoStepConfig = (K3BianDaoStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_BianDao);
        }
        if (this.chaoCheStepConfig == null) {
            this.chaoCheStepConfig = (K3ChaoCheStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_ChaoChe);
        }
        if (this.qiBuStepConfig == null) {
            this.qiBuStepConfig = (K3QiBuStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_QiBu);
        }
        if (!examProcessor.v() || (!this.finishAutoBianDao && (k3QiBuStepConfig = this.qiBuStepConfig) != null && ((Boolean) k3QiBuStepConfig.p203137.value).booleanValue() && examProcessor.y(Step.K3_QiBu))) {
            if (!this.finishAutoChaoChe && this.hadChaoChe) {
                if (eVar.d().b > ((Integer) this.speedLimit.value).intValue()) {
                    this.hadReachSpeed = true;
                }
                if (this.autoChaoCheStartDistance > BitmapDescriptorFactory.HUE_RED && eVar.d().C - this.autoChaoCheStartDistance > ((Integer) this.distanceLimit.value).intValue()) {
                    this.hadReachDistance = true;
                }
            }
            GlobalStateData.State state2 = this.lastState;
            if (state2 == GlobalStateData.State.before) {
                if (state != GlobalStateData.State.turnLeft) {
                    GlobalStateData.State state3 = GlobalStateData.State.turnRight;
                } else if (!this.finishAutoChaoChe) {
                    resetAutoChaoChe();
                }
            } else if (state2 == GlobalStateData.State.turnLeft) {
                if (state == GlobalStateData.State.after) {
                    if (((Boolean) this.isAutoBianDao.value).booleanValue() && !this.finishAutoBianDao) {
                        this.finishAutoBianDao = true;
                        if (!((Boolean) this.canExeBianDao.value).booleanValue()) {
                            examProcessor.o().i().a(Step.K3_BianDao);
                        }
                        this.frameResult.put(Step.K3_BianDao, bool2);
                        if (((Boolean) this.bianDaoStepConfig.p205114.value).booleanValue()) {
                            TtsManager.r((String) this.bianDaoStepConfig.p205101.value, TtsGrade.ExamTip);
                        }
                    } else if (!this.finishAutoChaoChe && ((Boolean) this.isAutoChaoChe.value).booleanValue() && !this.hadChaoChe) {
                        this.hadChaoChe = true;
                        this.autoChaoCheStartDistance = eVar.d().C;
                    }
                }
            } else if (state2 == GlobalStateData.State.turnRight && state == GlobalStateData.State.after) {
                if (((Boolean) this.isAutoBianDao.value).booleanValue() && !this.finishAutoBianDao) {
                    this.finishAutoBianDao = true;
                    if (!((Boolean) this.canExeBianDao.value).booleanValue()) {
                        examProcessor.o().i().a(Step.K3_BianDao);
                    }
                    this.frameResult.put(Step.K3_BianDao, bool2);
                    if (((Boolean) this.bianDaoStepConfig.p205114.value).booleanValue()) {
                        TtsManager.r((String) this.bianDaoStepConfig.p205101.value, TtsGrade.ExamTip);
                    }
                } else if (!this.finishAutoChaoChe) {
                    if (this.hadChaoChe && this.hadReachSpeed && this.hadReachDistance) {
                        this.finishAutoChaoChe = true;
                        this.frameResult.put(Step.K3_ChaoChe, bool2);
                        if (((Boolean) this.chaoCheStepConfig.p206118.value).booleanValue()) {
                            TtsManager.r((String) this.chaoCheStepConfig.p206101.value, TtsGrade.ExamTip);
                        }
                    } else {
                        resetAutoChaoChe();
                    }
                }
            }
            this.lastState = state;
        } else {
            if (!this.finishAutoChaoChe) {
                resetAutoChaoChe();
            }
            this.lastState = GlobalStateData.State.before;
        }
        if (!this.finishAutoChaoChe && ((Boolean) this.globalStepConfig.p200256.value).booleanValue() && K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().h() && K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressBanMaLine)) {
            resetAutoChaoChe();
            this.lastState = GlobalStateData.State.before;
        }
        if (examProcessor.w()) {
            if (((Boolean) this.isAutoBianDao.value).booleanValue() && !this.finishAutoBianDao) {
                Step step = Step.K3_BianDao;
                examProcessor.f(step, new int[]{105110});
                this.frameResult.put(step, bool);
            }
            if (((Boolean) this.isAutoChaoChe.value).booleanValue() && !this.finishAutoChaoChe) {
                Step step2 = Step.K3_ChaoChe;
                examProcessor.f(step2, new int[]{106104});
                this.frameResult.put(step2, bool);
            }
        }
        return this.frameResult;
    }
}
