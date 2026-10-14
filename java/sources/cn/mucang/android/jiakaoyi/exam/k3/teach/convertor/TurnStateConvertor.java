package cn.mucang.android.jiakaoyi.exam.k3.teach.convertor;

import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.BianDaoStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.ChaoCheStateData;
import cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BianDaoState;
import cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.bean.CarTurnState;

/* JADX INFO: loaded from: classes2.dex */
public class TurnStateConvertor implements IConvertor<CarTurnState, K3BaseStepData> {
    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.convertor.IConvertor
    public CarTurnState convert(CarTurnState carTurnState, K3BaseStepData k3BaseStepData) {
        if (carTurnState == null) {
            carTurnState = new CarTurnState();
        }
        boolean z = k3BaseStepData instanceof BianDaoStateData;
        if (z || (k3BaseStepData instanceof BianDaoChaoCheStateData)) {
            BianDaoState bianDaoState = (z ? ((BianDaoStateData) k3BaseStepData).bianDaoChecker : ((BianDaoChaoCheStateData) k3BaseStepData).bianDaoChecker).state;
            if (bianDaoState == BianDaoState.before) {
                carTurnState.state = 1;
            } else if (bianDaoState == BianDaoState.turnLeft) {
                carTurnState.state = 2;
            } else if (bianDaoState == BianDaoState.turnRight) {
                carTurnState.state = 3;
            } else if (bianDaoState == BianDaoState.after) {
                carTurnState.state = 4;
            } else {
                carTurnState.state = 0;
            }
        } else if (k3BaseStepData instanceof ChaoCheStateData) {
            ChaoCheStateData.State state = ((ChaoCheStateData) k3BaseStepData).state;
            if (state == ChaoCheStateData.State.before || state == ChaoCheStateData.State.preTurnLeft) {
                carTurnState.state = 1;
            } else if (state == ChaoCheStateData.State.turnRight || state == ChaoCheStateData.State.turnRightToBack) {
                carTurnState.state = 3;
            } else if (state == ChaoCheStateData.State.turnLeft) {
                carTurnState.state = 2;
            } else {
                carTurnState.state = 4;
            }
        }
        return carTurnState;
    }
}
