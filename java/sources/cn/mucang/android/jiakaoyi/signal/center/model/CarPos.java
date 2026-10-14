package cn.mucang.android.jiakaoyi.signal.center.model;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CarPos implements Serializable {
    public double L;
    public Pos back;
    public cn.mucang.android.jiakaoyi.signal.pos.a bigBound;
    public cn.mucang.android.jiakaoyi.signal.pos.a bound;
    public List<Pos> carPoints;
    public cn.mucang.android.jiakaoyi.signal.pos.c carRect;
    public Pos center;
    public double degree;
    public Pos front;
    public Pos headerPoint;
    public cn.mucang.android.jiakaoyi.signal.pos.c lastCarRect;
    public Pos lastCenter;
    public Pos lastRearAxlePoint;
    public cn.mucang.android.jiakaoyi.signal.pos.c leftBackTouchRect;
    public cn.mucang.android.jiakaoyi.signal.pos.c leftFrontTouchRect;
    public Pos leftMirrorInSide;
    public Pos leftMirrorInSideLast;
    public Pos leftMirrorOutSide;
    public Pos leftMirrorOutSideLast;
    public List<Pos> leftMirrorPoints;
    public Pos main;
    public double pitch;
    public Pos rearAxlePoint;
    public cn.mucang.android.jiakaoyi.signal.pos.c rightBackTouchRect;
    public cn.mucang.android.jiakaoyi.signal.pos.c rightFrontTouchRect;
    public Pos rightMirrorInSide;
    public Pos rightMirrorInSideLast;
    public Pos rightMirrorOutSide;
    public Pos rightMirrorOutSideLast;
    public List<Pos> rightMirrorPoints;
    public Pos tailPoint;
    public Pos wheelLeftBack;
    public Pos wheelLeftBackInner;
    public Pos wheelLeftBackLast;
    public Pos wheelLeftFront;
    public Pos wheelLeftFrontInner;
    public Pos wheelLeftFrontLast;
    public Pos wheelRightBack;
    public Pos wheelRightBackInner;
    public Pos wheelRightBackLast;
    public Pos wheelRightFront;
    public Pos wheelRightFrontInner;
    public Pos wheelRightFrontLast;
    public double wheelTouchWidth;

    public CarPos copy() {
        CarPos carPos = new CarPos();
        carPos.set(this);
        return carPos;
    }

    public void set(CarPos carPos) {
        if (carPos.carPoints != null) {
            this.carPoints = new ArrayList();
            Iterator<Pos> it = carPos.carPoints.iterator();
            while (it.hasNext()) {
                this.carPoints.add(new Pos(it.next()));
            }
        }
        Pos pos = carPos.main;
        if (pos != null) {
            this.main = new Pos(pos);
        }
        Pos pos2 = carPos.front;
        if (pos2 != null) {
            this.front = new Pos(pos2);
        }
        Pos pos3 = carPos.back;
        if (pos3 != null) {
            this.back = new Pos(pos3);
        }
        Pos pos4 = carPos.wheelRightBack;
        if (pos4 != null) {
            this.wheelRightBack = new Pos(pos4);
        }
        Pos pos5 = carPos.wheelRightFront;
        if (pos5 != null) {
            this.wheelRightFront = new Pos(pos5);
        }
        Pos pos6 = carPos.wheelLeftBack;
        if (pos6 != null) {
            this.wheelLeftBack = new Pos(pos6);
        }
        Pos pos7 = carPos.wheelLeftFront;
        if (pos7 != null) {
            this.wheelLeftFront = new Pos(pos7);
        }
        Pos pos8 = carPos.wheelRightBackInner;
        if (pos8 != null) {
            this.wheelRightBackInner = new Pos(pos8);
        }
        Pos pos9 = carPos.wheelRightFrontInner;
        if (pos9 != null) {
            this.wheelRightFrontInner = new Pos(pos9);
        }
        Pos pos10 = carPos.wheelLeftBackInner;
        if (pos10 != null) {
            this.wheelLeftBackInner = new Pos(pos10);
        }
        Pos pos11 = carPos.wheelLeftFrontInner;
        if (pos11 != null) {
            this.wheelLeftFrontInner = new Pos(pos11);
        }
        Pos pos12 = carPos.wheelRightBackLast;
        if (pos12 != null) {
            this.wheelRightBackLast = new Pos(pos12);
        }
        Pos pos13 = carPos.wheelRightFrontLast;
        if (pos13 != null) {
            this.wheelRightFrontLast = new Pos(pos13);
        }
        Pos pos14 = carPos.wheelLeftBackLast;
        if (pos14 != null) {
            this.wheelLeftBackLast = new Pos(pos14);
        }
        Pos pos15 = carPos.wheelLeftFrontLast;
        if (pos15 != null) {
            this.wheelLeftFrontLast = new Pos(pos15);
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPos.leftFrontTouchRect;
        if (cVar != null) {
            this.leftFrontTouchRect = new cn.mucang.android.jiakaoyi.signal.pos.c(cVar);
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.leftBackTouchRect;
        if (cVar2 != null) {
            this.leftBackTouchRect = new cn.mucang.android.jiakaoyi.signal.pos.c(cVar2);
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar3 = carPos.rightFrontTouchRect;
        if (cVar3 != null) {
            this.rightFrontTouchRect = new cn.mucang.android.jiakaoyi.signal.pos.c(cVar3);
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar4 = carPos.rightBackTouchRect;
        if (cVar4 != null) {
            this.rightBackTouchRect = new cn.mucang.android.jiakaoyi.signal.pos.c(cVar4);
        }
        Pos pos16 = carPos.center;
        if (pos16 != null) {
            this.center = new Pos(pos16);
        }
        Pos pos17 = carPos.lastCenter;
        if (pos17 != null) {
            this.lastCenter = new Pos(pos17);
        }
        Pos pos18 = carPos.leftMirrorInSideLast;
        if (pos18 != null) {
            this.leftMirrorInSideLast = new Pos(pos18);
        }
        Pos pos19 = carPos.leftMirrorOutSideLast;
        if (pos19 != null) {
            this.leftMirrorOutSideLast = new Pos(pos19);
        }
        Pos pos20 = carPos.rightMirrorInSideLast;
        if (pos20 != null) {
            this.rightMirrorInSideLast = new Pos(pos20);
        }
        Pos pos21 = carPos.rightMirrorOutSideLast;
        if (pos21 != null) {
            this.rightMirrorOutSideLast = new Pos(pos21);
        }
        Pos pos22 = carPos.leftMirrorOutSide;
        if (pos22 != null) {
            this.leftMirrorOutSide = new Pos(pos22);
        }
        Pos pos23 = carPos.rightMirrorOutSide;
        if (pos23 != null) {
            this.rightMirrorOutSide = new Pos(pos23);
        }
        Pos pos24 = carPos.leftMirrorInSide;
        if (pos24 != null) {
            this.leftMirrorInSide = new Pos(pos24);
        }
        Pos pos25 = carPos.rightMirrorInSide;
        if (pos25 != null) {
            this.rightMirrorInSide = new Pos(pos25);
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar5 = carPos.carRect;
        if (cVar5 != null) {
            this.carRect = new cn.mucang.android.jiakaoyi.signal.pos.c(cVar5);
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar6 = carPos.lastCarRect;
        if (cVar6 != null) {
            this.lastCarRect = new cn.mucang.android.jiakaoyi.signal.pos.c(cVar6);
        }
        cn.mucang.android.jiakaoyi.signal.pos.a aVar = carPos.bound;
        if (aVar != null) {
            cn.mucang.android.jiakaoyi.signal.pos.a aVar2 = new cn.mucang.android.jiakaoyi.signal.pos.a(aVar);
            this.bound = aVar2;
            this.bigBound = aVar2.m(300.0f, 300.0f, 300.0f, 300.0f);
        }
        Pos pos26 = carPos.headerPoint;
        if (pos26 != null) {
            this.headerPoint = new Pos(pos26);
        }
        Pos pos27 = carPos.tailPoint;
        if (pos27 != null) {
            this.tailPoint = new Pos(pos27);
        }
        if (carPos.leftMirrorPoints != null) {
            this.leftMirrorPoints = new ArrayList();
            Iterator<Pos> it2 = carPos.leftMirrorPoints.iterator();
            while (it2.hasNext()) {
                this.leftMirrorPoints.add(new Pos(it2.next()));
            }
        }
        if (carPos.rightMirrorPoints != null) {
            this.rightMirrorPoints = new ArrayList();
            Iterator<Pos> it3 = carPos.rightMirrorPoints.iterator();
            while (it3.hasNext()) {
                this.rightMirrorPoints.add(new Pos(it3.next()));
            }
        }
        Pos pos28 = carPos.rearAxlePoint;
        if (pos28 != null) {
            this.rearAxlePoint = new Pos(pos28);
        }
        Pos pos29 = carPos.lastRearAxlePoint;
        if (pos29 != null) {
            this.lastRearAxlePoint = new Pos(pos29);
        }
        this.degree = carPos.degree;
        this.pitch = carPos.pitch;
        this.wheelTouchWidth = carPos.wheelTouchWidth;
        this.L = carPos.L;
    }

    public String toString() {
        return "CarPos{carPoints=" + this.carPoints + ", front=" + this.front + ", back=" + this.back + ", degree=" + this.degree + ", wheelLeftFront=" + this.wheelLeftFront + ", wheelLeftBack=" + this.wheelLeftBack + ", wheelRightFront=" + this.wheelRightFront + ", wheelRightBack=" + this.wheelRightBack + ", wheelLeftFrontLast=" + this.wheelLeftFrontLast + ", wheelLeftBackLast=" + this.wheelLeftBackLast + ", wheelRightFrontLast=" + this.wheelRightFrontLast + ", wheelRightBackLast=" + this.wheelRightBackLast + ", headerPoint=" + this.headerPoint + ", tailPoint=" + this.tailPoint + ", center=" + this.center + ", pitch=" + this.pitch + ", carRect=" + this.carRect + ", bound=" + this.bound + ", leftMirrorPoints=" + this.leftMirrorPoints + ", rightMirrorPoints=" + this.rightMirrorPoints + ", leftMirrorInSideLast=" + this.leftMirrorInSideLast + ", leftMirrorOutSideLast=" + this.leftMirrorOutSideLast + ", rightMirrorInSideLast=" + this.rightMirrorInSideLast + ", rightMirrorOutSideLast=" + this.rightMirrorOutSideLast + ", leftMirrorInSide=" + this.leftMirrorInSide + ", leftMirrorOutSide=" + this.leftMirrorOutSide + ", rightMirrorInSide=" + this.rightMirrorInSide + ", rightMirrorOutSide=" + this.rightMirrorOutSide + '}';
    }
}
