package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.e;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.a;
import cn.mucang.android.jiakaoyi.teachingk2.wheelr.RuntimeWheelAndR;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    /* JADX WARN: Code duplicated, block: B:100:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:102:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:103:0x040b  */
    /* JADX WARN: Code duplicated, block: B:106:0x0418 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:108:0x041a  */
    /* JADX WARN: Code duplicated, block: B:110:0x043e  */
    /* JADX WARN: Code duplicated, block: B:111:0x0440  */
    /* JADX WARN: Code duplicated, block: B:114:0x0451  */
    /* JADX WARN: Code duplicated, block: B:117:0x0461  */
    /* JADX WARN: Code duplicated, block: B:118:0x0463  */
    /* JADX WARN: Code duplicated, block: B:123:0x0479  */
    /* JADX WARN: Code duplicated, block: B:124:0x047b  */
    /* JADX WARN: Code duplicated, block: B:127:0x04ea  */
    /* JADX WARN: Code duplicated, block: B:128:0x04ec  */
    /* JADX WARN: Code duplicated, block: B:131:0x04f5  */
    /* JADX WARN: Code duplicated, block: B:132:0x04fc  */
    /* JADX WARN: Code duplicated, block: B:135:0x0539  */
    /* JADX WARN: Code duplicated, block: B:137:0x054f A[LOOP:0: B:136:0x054d->B:137:0x054f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:140:0x057b  */
    /* JADX WARN: Code duplicated, block: B:141:0x057e  */
    /* JADX WARN: Code duplicated, block: B:143:0x05c1  */
    /* JADX WARN: Code duplicated, block: B:146:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:148:0x05f0  */
    /* JADX WARN: Code duplicated, block: B:149:0x060d  */
    /* JADX WARN: Code duplicated, block: B:150:0x063f  */
    /* JADX WARN: Code duplicated, block: B:153:0x0652 A[LOOP:1: B:152:0x0650->B:153:0x0652, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:155:0x0672  */
    /* JADX WARN: Code duplicated, block: B:156:0x0675  */
    /* JADX WARN: Code duplicated, block: B:158:0x0679  */
    /* JADX WARN: Code duplicated, block: B:159:0x06ab  */
    /* JADX WARN: Code duplicated, block: B:161:0x06b5  */
    /* JADX WARN: Code duplicated, block: B:162:0x06b8  */
    /* JADX WARN: Code duplicated, block: B:166:0x070a  */
    /* JADX WARN: Code duplicated, block: B:167:0x070d  */
    /* JADX WARN: Code duplicated, block: B:170:0x071f  */
    /* JADX WARN: Code duplicated, block: B:176:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x007c  */
    /* JADX WARN: Code duplicated, block: B:27:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:28:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:31:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:33:0x015e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0160  */
    /* JADX WARN: Code duplicated, block: B:37:0x0168  */
    /* JADX WARN: Code duplicated, block: B:38:0x016a  */
    /* JADX WARN: Code duplicated, block: B:41:0x0212  */
    /* JADX WARN: Code duplicated, block: B:43:0x0235  */
    /* JADX WARN: Code duplicated, block: B:44:0x0237  */
    /* JADX WARN: Code duplicated, block: B:45:0x0239  */
    /* JADX WARN: Code duplicated, block: B:48:0x0244  */
    /* JADX WARN: Code duplicated, block: B:57:0x0269  */
    /* JADX WARN: Code duplicated, block: B:60:0x02a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:63:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:64:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:66:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:67:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:70:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:71:0x0300  */
    /* JADX WARN: Code duplicated, block: B:74:0x0312  */
    /* JADX WARN: Code duplicated, block: B:76:0x0348 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:78:0x034a  */
    /* JADX WARN: Code duplicated, block: B:80:0x035c  */
    /* JADX WARN: Code duplicated, block: B:81:0x035f  */
    /* JADX WARN: Code duplicated, block: B:84:0x0381 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:86:0x0383  */
    /* JADX WARN: Code duplicated, block: B:90:0x0392  */
    /* JADX WARN: Code duplicated, block: B:95:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:96:0x03b0  */
    public static boolean a(e eVar, cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g.b bVar) {
        CarPos carPos;
        boolean z;
        boolean z2;
        CarPos carPos2;
        cn.mucang.android.jiakaoyi.signal.utils.b bVar2;
        Pos posA;
        double d2;
        double dMin;
        double radians;
        double radians2;
        double dSin;
        double dSin2;
        int i;
        boolean z3;
        Pos pos;
        Pos pos2;
        double d3;
        Pos pos3;
        Pos pos4;
        Pos pos5;
        Pos pos6;
        boolean z4;
        Pos pos7;
        int i2;
        Pos pos8;
        int i3;
        double dTan;
        Pos pos9;
        Pos pos10;
        double d4;
        Pos pos11;
        double dTan2;
        double d5;
        Pos pos12;
        double d6;
        Pos posC;
        boolean z5;
        boolean z6;
        double d7;
        boolean z7;
        double d8;
        boolean z8;
        double radians3;
        boolean z9;
        cn.mucang.android.jiakaoyi.signal.utils.b bVar3;
        Pos pos13;
        Pos posC2;
        Pos posC3;
        Pos posC4;
        Pos posC5;
        Pos pos14;
        ArrayList arrayList;
        List<a> arrayList2;
        Pos pos15;
        boolean z10;
        boolean z11;
        List<a> list;
        ArrayList arrayList3;
        int iAbs;
        double d9;
        int i4;
        String str;
        int i5;
        Pos pos16;
        String str2;
        int iAbs2;
        double d10;
        int i6;
        String str3;
        double d11;
        double d12;
        double d13;
        double d14;
        double d15;
        int i7;
        double d16;
        int i8;
        int i9;
        String str4;
        CarPos carPosC = eVar.c();
        Pos pos17 = bVar.f8084e;
        double d17 = bVar.f8085f;
        int i10 = bVar.b;
        boolean z12 = i10 == 1 || i10 == 3 || i10 == 5;
        if (!z12 && Math.abs(d.c((float) (d17 - carPosC.degree))) < 10.0f) {
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos17, carPosC.back, carPosC.front) >= 30.0d) {
                z = z12;
                carPos = carPosC;
                if (cn.mucang.android.jiakaoyi.hpmap.d.a.k(carPosC.rearAxlePoint, pos17, new Pos(pos17).translate(Math.cos(Math.toRadians(d17)) * 100.0d, Math.sin(Math.toRadians(d17)) * 100.0d)) < 30.0d) {
                }
                if (z2) {
                    List<Pos> arrayList4 = new ArrayList<>();
                    bVar.d(arrayList4);
                    List<a> arrayList5 = new ArrayList<>();
                    bVar.f(arrayList5);
                    CarPos carPos3 = carPos;
                    arrayList4.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(carPos3.rearAxlePoint, pos17, 29.0d));
                    Pos pos18 = carPos3.rearAxlePoint;
                    arrayList5.add(d(pos18, new Pos(pos18).translate(Math.cos(Math.toRadians(carPos3.degree)) * 50.0d, Math.sin(Math.toRadians(carPos3.degree)) * 50.0d), carPos3.degree, carPos3, "请沿轨迹微调方向盘，将车辆开到停车区域", false, !z));
                    Pos posTranslate = new Pos(pos17).translate(Math.cos(Math.toRadians(d17)) * 50.0d, Math.sin(Math.toRadians(d17)) * 50.0d);
                    if (z) {
                        str4 = "请停车，挂前进档";
                    } else {
                        str4 = "请停车，挂倒档";
                    }
                    arrayList5.add(d(pos17, posTranslate, d17, carPos3, str4, false, !z));
                    return true;
                }
                carPos2 = carPos;
                bVar2 = new cn.mucang.android.jiakaoyi.signal.utils.b(pos17, d17, true);
                posA = bVar2.a(eVar.c().rearAxlePoint);
                d2 = eVar.c().degree - bVar2.f5831f;
                dMin = Math.min(RuntimeWheelAndR.b(eVar.c().L).R, 380.0d);
                radians = Math.toRadians(d2 + 90.0d);
                radians2 = Math.toRadians(d2 - 90.0d);
                dSin = posA.y + (Math.sin(radians) * dMin);
                dSin2 = posA.y + (Math.sin(radians2) * dMin);
                if (Math.abs(dSin) < Math.abs(dSin2)) {
                    i = 1;
                } else {
                    dSin = dSin2;
                    radians = radians2;
                    i = -1;
                }
                if (i == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                pos = new Pos(posA.x + (Math.cos(radians) * dMin), dSin);
                pos2 = new Pos();
                d3 = -d2;
                pos2.setPos(posA).rotate(pos, Math.cos(Math.toRadians(d3)), Math.sin(Math.toRadians(d3)));
                pos3 = new Pos();
                pos4 = new Pos();
                pos5 = new Pos();
                pos6 = new Pos();
                z4 = z3;
                pos7 = new Pos();
                pos7.setPos(posA.x - (posA.y / Math.tan(Math.toRadians(d2 + 1.0E-7d))), 0.0d);
                i2 = i;
                if ((Math.cos(Math.toRadians(d2)) * (pos7.x - posA.x)) + (Math.sin(Math.toRadians(d2)) * (pos7.y - posA.y)) > 0.0d) {
                    dTan = dMin / Math.tan(Math.toRadians(((double) d.c((float) (180.0d - Math.abs(d2)))) * 0.5d));
                    pos8 = pos7;
                    if (pos8.x + dTan < 30.0d) {
                        i3 = 1;
                    } else {
                        i3 = 0;
                    }
                } else {
                    pos8 = pos7;
                    i3 = 0;
                    dTan = 0.0d;
                }
                if (i3 == 0 && Math.abs(d2) < 90.0d && Math.abs(pos2.y) > dMin * 2.0d && pos2.x <= dMin * (-2.0d)) {
                    i3 = 3;
                }
                if (i3 == 0) {
                    i3 = 2;
                }
                f.o("路径规划算法:" + i3 + ",degree:" + d2 + ",当前位置:" + posA + ",R:" + dMin);
                if (i3 != 1) {
                    if (i3 == 2) {
                        pos11 = pos6;
                        pos3.setPos(0.0d, 0.0d);
                        double d18 = pos2.y * 0.5d;
                        pos4.y = d18;
                        pos10 = pos;
                        double d19 = pos10.x;
                        d11 = d19 * (-2.0d);
                        double d20 = pos10.y;
                        d12 = (d11 * d11) - (4.0d * (((d19 * d19) + ((d18 - d20) * (d18 - d20))) - (dMin * dMin)));
                        if (d12 < 0.0d) {
                            return false;
                        }
                        double dSqrt = Math.sqrt(d12);
                        double d21 = -d11;
                        d13 = (d21 + dSqrt) / 2.0d;
                        d14 = (d21 - dSqrt) / 2.0d;
                        if (d13 >= pos2.x) {
                            pos4.x = d13;
                        } else {
                            pos4.x = d14;
                        }
                        d15 = (pos4.x * 2.0d) - pos10.x;
                        pos11.x = d15;
                        pos11.y = (pos4.y * 2.0d) - pos10.y;
                        pos9 = pos5;
                        pos9.x = d15;
                        pos9.y = 0.0d;
                        if (d15 <= 200.0d || d15 > 200.0d) {
                            return false;
                        }
                        if (pos4.x >= posA.x - 20.0d && pos4.distanceSquare(posA) >= 1600.0d) {
                            return false;
                        }
                        double degrees = Math.toDegrees(pos10.angleTo(pos4));
                        if (posA.y > 0.0d) {
                            i7 = -90;
                        } else {
                            i7 = 90;
                        }
                        double d22 = degrees + ((double) i7);
                        d8 = d22 - d2;
                        d7 = -d22;
                        posC = pos3;
                    } else if (i3 != 3) {
                        pos2 = pos2;
                        dMin = dMin;
                        pos12 = pos4;
                        pos9 = pos5;
                        pos11 = pos6;
                        posC = pos3;
                        pos10 = pos;
                        z6 = false;
                        z7 = true;
                        d8 = 0.0d;
                        d7 = 0.0d;
                    } else {
                        double d23 = i2;
                        pos3.setPos(pos2).rotate(pos, 0.0d, d23);
                        pos4.setPos(pos3.x, (-dMin) * d23);
                        pos5.setPos(pos4).translate(dMin, 0.0d);
                        pos5.y = 0.0d;
                        pos11 = pos6;
                        pos11.setPos(pos5.x, pos4.y);
                        d16 = posA.y;
                        if (d16 > 0.0d) {
                            i8 = -90;
                        } else {
                            i8 = 90;
                        }
                        double d24 = ((double) i8) - d2;
                        if (d16 > 0.0d) {
                            i9 = 90;
                        } else {
                            i9 = -90;
                        }
                        d7 = i9;
                        posC = pos3;
                        pos9 = pos5;
                        d8 = d24;
                        pos10 = pos;
                    }
                    z6 = false;
                    pos2 = pos2;
                    pos12 = pos4;
                    z7 = true;
                } else {
                    pos9 = pos5;
                    pos10 = pos;
                    d4 = dTan;
                    pos11 = pos6;
                    pos3.setPos(posA);
                    if (d4 < 1.0E-5d) {
                        pos8.setPos(posA.x - (posA.y / Math.tan(Math.toRadians(d2 + 1.0E-7d))), 0.0d);
                        dTan2 = dMin / Math.tan(Math.toRadians(((double) d.c((float) (180.0d - Math.abs(d2)))) * 0.5d));
                    } else {
                        dTan2 = d4;
                    }
                    if (pos8.x + dTan2 > 100.0d) {
                        return false;
                    }
                    pos4.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos8, posA, dTan2));
                    pos9.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos8, new Pos(100000.0d, 0.0d), dTan2));
                    double d25 = pos9.x;
                    if (posA.y > 0.0d) {
                        d5 = dMin;
                    } else {
                        d5 = -dMin;
                    }
                    pos11.setPos(d25, d5);
                    pos12 = pos4;
                    d6 = pos12.y;
                    if (d6 * (d6 - posA.y) <= 0.0d) {
                        posC = pos3;
                        if (posC.distanceSquare(pos12) >= 2500.0d) {
                            z5 = false;
                        }
                        z6 = z5;
                        dMin = dMin;
                        d7 = d3;
                        z7 = false;
                        d8 = 0.0d;
                    } else {
                        posC = r3;
                    }
                    posC.setPos(0.0d, 0.0d);
                    z5 = true;
                    z6 = z5;
                    dMin = dMin;
                    d7 = d3;
                    z7 = false;
                    d8 = 0.0d;
                }
                if (pos9.x < -30.0d) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("theta1:");
                float f2 = (float) d8;
                sb.append(d.c(f2));
                sb.append(",theta2:");
                float f3 = (float) d7;
                sb.append(d.c(f3));
                sb.append(",B:");
                sb.append(pos12);
                sb.append(",C:");
                sb.append(pos9);
                sb.append(",D:");
                sb.append(pos2);
                sb.append(",O1:");
                sb.append(pos10);
                sb.append(",O2:");
                sb.append(pos11);
                sb.append(",D:");
                sb.append(pos2);
                f.o(sb.toString());
                radians3 = Math.toRadians(d.c(f2));
                double radians4 = Math.toRadians(d.c(f3));
                if (pos12.y > 0.0d) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                if (posC.model() > 1.0E-5d) {
                    bVar3 = bVar2;
                    posC = bVar3.c(posC);
                } else {
                    bVar3 = bVar2;
                }
                pos13 = posC;
                posC2 = bVar3.c(pos12);
                posC3 = bVar3.c(pos9);
                bVar3.c(pos2);
                posC4 = bVar3.c(pos10);
                posC5 = bVar3.c(pos11);
                bVar.c.setPos(carPos2.rearAxlePoint);
                pos14 = carPos2.rearAxlePoint;
                arrayList = new ArrayList();
                bVar.d(arrayList);
                arrayList2 = new ArrayList<>();
                bVar.f(arrayList2);
                if (z7) {
                    iAbs2 = (int) Math.abs((((double) ((float) radians3)) * dMin) / 29.0d);
                    d10 = radians3 / ((double) iAbs2);
                    i6 = 0;
                    while (i6 < iAbs2) {
                        boolean z13 = z9;
                        double d26 = ((double) i6) * d10;
                        arrayList.add(new Pos(pos14).rotate(posC4, Math.cos(d26), Math.sin(d26)));
                        i6++;
                        z8 = z8;
                        z9 = z13;
                    }
                    z10 = z9;
                    z11 = z8;
                    if (z4) {
                        str3 = "右打满";
                    } else {
                        str3 = "左打满";
                    }
                    pos15 = posC3;
                    list = arrayList2;
                    list.add(c(pos14, new Pos(pos14).translate(Math.cos(Math.toRadians(carPos2.degree)) * 50.0d, Math.sin(Math.toRadians(carPos2.degree)) * 50.0d), carPos2.degree, carPos2, str3, false));
                } else {
                    pos15 = posC3;
                    z10 = z9;
                    z11 = z8;
                    list = arrayList2;
                }
                if (pos13.model() > 1.0E-5d) {
                    arrayList3 = arrayList;
                    arrayList3.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos13, r23, 29.0d));
                    arrayList3.remove(arrayList3.size() - 1);
                    if (z7) {
                        list.add(c(pos13, cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos13, posC2, 50.0d), Math.toDegrees(pos13.angleTo(r23)), carPos2, "回正", true));
                    } else {
                        list.add(c(pos14, new Pos(pos14).translate(Math.cos(Math.toRadians(r4.degree)) * 50.0d, Math.sin(Math.toRadians(r4.degree)) * 50.0d), r4.degree, r4, "方向盘回正往前走", false));
                    }
                } else {
                    arrayList3 = arrayList;
                }
                iAbs = (int) Math.abs((((double) ((float) radians4)) * dMin) / 29.0d);
                d9 = radians4 / ((double) iAbs);
                for (i4 = 0; i4 < iAbs; i4++) {
                    double d27 = ((double) i4) * d9;
                    arrayList3.add(new Pos(r23).rotate(posC5, Math.cos(d27), Math.sin(d27)));
                }
                if (z10) {
                    str = "右打满";
                } else {
                    str = "左打满";
                }
                if (z6) {
                    list.add(c(pos14, new Pos(pos14).translate(Math.cos(Math.toRadians(r4.degree)) * 50.0d, Math.sin(Math.toRadians(r4.degree)) * 50.0d), r4.degree, r4, str, false));
                } else {
                    double degrees2 = Math.toDegrees(posC5.angleTo(r23));
                    if (z10) {
                        i5 = 90;
                    } else {
                        i5 = -90;
                    }
                    double d28 = ((double) i5) + degrees2;
                    list.add(c(r23, new Pos(r23).translate(Math.cos(Math.toRadians(d28)) * 50.0d, Math.sin(Math.toRadians(d28)) * 50.0d), d28, r4, str, false));
                }
                pos16 = pos15;
                Pos posTranslate2 = new Pos(pos16).translate(Math.cos(Math.toRadians(d17)) * 50.0d, Math.sin(Math.toRadians(d17)) * 50.0d);
                if (z11) {
                    str2 = "回正";
                } else {
                    str2 = "回正，请停车，挂倒档";
                }
                list.add(c(pos16, posTranslate2, d17, r4, str2, z11));
                if (!z11) {
                    return true;
                }
                arrayList3.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos16, pos17, 29.0d));
                list.add(c(pos17, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos16, pos17, 50.0d), d17, r4, "请停车，挂倒档", false));
                return true;
            }
            carPos = carPosC;
            z = z12;
            z2 = true;
            if (z2) {
                List<Pos> arrayList6 = new ArrayList<>();
                bVar.d(arrayList6);
                List<a> arrayList7 = new ArrayList<>();
                bVar.f(arrayList7);
                CarPos carPos4 = carPos;
                arrayList6.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(carPos4.rearAxlePoint, pos17, 29.0d));
                Pos pos19 = carPos4.rearAxlePoint;
                arrayList7.add(d(pos19, new Pos(pos19).translate(Math.cos(Math.toRadians(carPos4.degree)) * 50.0d, Math.sin(Math.toRadians(carPos4.degree)) * 50.0d), carPos4.degree, carPos4, "请沿轨迹微调方向盘，将车辆开到停车区域", false, !z));
                Pos posTranslate3 = new Pos(pos17).translate(Math.cos(Math.toRadians(d17)) * 50.0d, Math.sin(Math.toRadians(d17)) * 50.0d);
                if (z) {
                    str4 = "请停车，挂前进档";
                } else {
                    str4 = "请停车，挂倒档";
                }
                arrayList7.add(d(pos17, posTranslate3, d17, carPos4, str4, false, !z));
                return true;
            }
            carPos2 = carPos;
            bVar2 = new cn.mucang.android.jiakaoyi.signal.utils.b(pos17, d17, true);
            posA = bVar2.a(eVar.c().rearAxlePoint);
            d2 = eVar.c().degree - bVar2.f5831f;
            dMin = Math.min(RuntimeWheelAndR.b(eVar.c().L).R, 380.0d);
            radians = Math.toRadians(d2 + 90.0d);
            radians2 = Math.toRadians(d2 - 90.0d);
            dSin = posA.y + (Math.sin(radians) * dMin);
            dSin2 = posA.y + (Math.sin(radians2) * dMin);
            if (Math.abs(dSin) < Math.abs(dSin2)) {
                i = 1;
            } else {
                dSin = dSin2;
                radians = radians2;
                i = -1;
            }
            if (i == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            pos = new Pos(posA.x + (Math.cos(radians) * dMin), dSin);
            pos2 = new Pos();
            d3 = -d2;
            pos2.setPos(posA).rotate(pos, Math.cos(Math.toRadians(d3)), Math.sin(Math.toRadians(d3)));
            pos3 = new Pos();
            pos4 = new Pos();
            pos5 = new Pos();
            pos6 = new Pos();
            z4 = z3;
            pos7 = new Pos();
            pos7.setPos(posA.x - (posA.y / Math.tan(Math.toRadians(d2 + 1.0E-7d))), 0.0d);
            i2 = i;
            if ((Math.cos(Math.toRadians(d2)) * (pos7.x - posA.x)) + (Math.sin(Math.toRadians(d2)) * (pos7.y - posA.y)) > 0.0d) {
                dTan = dMin / Math.tan(Math.toRadians(((double) d.c((float) (180.0d - Math.abs(d2)))) * 0.5d));
                pos8 = pos7;
                if (pos8.x + dTan < 30.0d) {
                    i3 = 1;
                } else {
                    i3 = 0;
                }
            } else {
                pos8 = pos7;
                i3 = 0;
                dTan = 0.0d;
            }
            if (i3 == 0) {
                i3 = 3;
            }
            if (i3 == 0) {
                i3 = 2;
            }
            f.o("路径规划算法:" + i3 + ",degree:" + d2 + ",当前位置:" + posA + ",R:" + dMin);
            if (i3 != 1) {
                if (i3 == 2) {
                    pos11 = pos6;
                    pos3.setPos(0.0d, 0.0d);
                    double d110 = pos2.y * 0.5d;
                    pos4.y = d110;
                    pos10 = pos;
                    double d111 = pos10.x;
                    d11 = d111 * (-2.0d);
                    double d29 = pos10.y;
                    d12 = (d11 * d11) - (4.0d * (((d111 * d111) + ((d110 - d29) * (d110 - d29))) - (dMin * dMin)));
                    if (d12 < 0.0d) {
                        return false;
                    }
                    double dSqrt2 = Math.sqrt(d12);
                    double d210 = -d11;
                    d13 = (d210 + dSqrt2) / 2.0d;
                    d14 = (d210 - dSqrt2) / 2.0d;
                    if (d13 >= pos2.x) {
                        pos4.x = d13;
                    } else {
                        pos4.x = d14;
                    }
                    d15 = (pos4.x * 2.0d) - pos10.x;
                    pos11.x = d15;
                    pos11.y = (pos4.y * 2.0d) - pos10.y;
                    pos9 = pos5;
                    pos9.x = d15;
                    pos9.y = 0.0d;
                    if (d15 <= 200.0d) {
                        return false;
                    }
                    if (pos4.x >= posA.x - 20.0d) {
                    }
                    double degrees3 = Math.toDegrees(pos10.angleTo(pos4));
                    if (posA.y > 0.0d) {
                        i7 = -90;
                    } else {
                        i7 = 90;
                    }
                    double d211 = degrees3 + ((double) i7);
                    d8 = d211 - d2;
                    d7 = -d211;
                    posC = pos3;
                } else if (i3 != 3) {
                    pos2 = pos2;
                    dMin = dMin;
                    pos12 = pos4;
                    pos9 = pos5;
                    pos11 = pos6;
                    posC = pos3;
                    pos10 = pos;
                    z6 = false;
                    z7 = true;
                    d8 = 0.0d;
                    d7 = 0.0d;
                } else {
                    double d212 = i2;
                    pos3.setPos(pos2).rotate(pos, 0.0d, d212);
                    pos4.setPos(pos3.x, (-dMin) * d212);
                    pos5.setPos(pos4).translate(dMin, 0.0d);
                    pos5.y = 0.0d;
                    pos11 = pos6;
                    pos11.setPos(pos5.x, pos4.y);
                    d16 = posA.y;
                    if (d16 > 0.0d) {
                        i8 = -90;
                    } else {
                        i8 = 90;
                    }
                    double d213 = ((double) i8) - d2;
                    if (d16 > 0.0d) {
                        i9 = 90;
                    } else {
                        i9 = -90;
                    }
                    d7 = i9;
                    posC = pos3;
                    pos9 = pos5;
                    d8 = d213;
                    pos10 = pos;
                }
                z6 = false;
                pos2 = pos2;
                pos12 = pos4;
                z7 = true;
            } else {
                pos9 = pos5;
                pos10 = pos;
                d4 = dTan;
                pos11 = pos6;
                pos3.setPos(posA);
                if (d4 < 1.0E-5d) {
                    pos8.setPos(posA.x - (posA.y / Math.tan(Math.toRadians(d2 + 1.0E-7d))), 0.0d);
                    dTan2 = dMin / Math.tan(Math.toRadians(((double) d.c((float) (180.0d - Math.abs(d2)))) * 0.5d));
                } else {
                    dTan2 = d4;
                }
                if (pos8.x + dTan2 > 100.0d) {
                    return false;
                }
                pos4.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos8, posA, dTan2));
                pos9.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos8, new Pos(100000.0d, 0.0d), dTan2));
                double d214 = pos9.x;
                if (posA.y > 0.0d) {
                    d5 = dMin;
                } else {
                    d5 = -dMin;
                }
                pos11.setPos(d214, d5);
                pos12 = pos4;
                d6 = pos12.y;
                if (d6 * (d6 - posA.y) <= 0.0d) {
                    posC = pos3;
                    if (posC.distanceSquare(pos12) >= 2500.0d) {
                        z5 = false;
                    }
                    z6 = z5;
                    dMin = dMin;
                    d7 = d3;
                    z7 = false;
                    d8 = 0.0d;
                } else {
                    posC = r3;
                }
                posC.setPos(0.0d, 0.0d);
                z5 = true;
                z6 = z5;
                dMin = dMin;
                d7 = d3;
                z7 = false;
                d8 = 0.0d;
            }
            if (pos9.x < -30.0d) {
                z8 = true;
            } else {
                z8 = false;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("theta1:");
            float f4 = (float) d8;
            sb2.append(d.c(f4));
            sb2.append(",theta2:");
            float f5 = (float) d7;
            sb2.append(d.c(f5));
            sb2.append(",B:");
            sb2.append(pos12);
            sb2.append(",C:");
            sb2.append(pos9);
            sb2.append(",D:");
            sb2.append(pos2);
            sb2.append(",O1:");
            sb2.append(pos10);
            sb2.append(",O2:");
            sb2.append(pos11);
            sb2.append(",D:");
            sb2.append(pos2);
            f.o(sb2.toString());
            radians3 = Math.toRadians(d.c(f4));
            double radians5 = Math.toRadians(d.c(f5));
            if (pos12.y > 0.0d) {
                z9 = true;
            } else {
                z9 = false;
            }
            if (posC.model() > 1.0E-5d) {
                bVar3 = bVar2;
                posC = bVar3.c(posC);
            } else {
                bVar3 = bVar2;
            }
            pos13 = posC;
            posC2 = bVar3.c(pos12);
            posC3 = bVar3.c(pos9);
            bVar3.c(pos2);
            posC4 = bVar3.c(pos10);
            posC5 = bVar3.c(pos11);
            bVar.c.setPos(carPos2.rearAxlePoint);
            pos14 = carPos2.rearAxlePoint;
            arrayList = new ArrayList();
            bVar.d(arrayList);
            arrayList2 = new ArrayList<>();
            bVar.f(arrayList2);
            if (z7) {
                iAbs2 = (int) Math.abs((((double) ((float) radians3)) * dMin) / 29.0d);
                d10 = radians3 / ((double) iAbs2);
                i6 = 0;
                while (i6 < iAbs2) {
                    boolean z14 = z9;
                    double d215 = ((double) i6) * d10;
                    arrayList.add(new Pos(pos14).rotate(posC4, Math.cos(d215), Math.sin(d215)));
                    i6++;
                    z8 = z8;
                    z9 = z14;
                }
                z10 = z9;
                z11 = z8;
                if (z4) {
                    str3 = "右打满";
                } else {
                    str3 = "左打满";
                }
                pos15 = posC3;
                list = arrayList2;
                list.add(c(pos14, new Pos(pos14).translate(Math.cos(Math.toRadians(carPos2.degree)) * 50.0d, Math.sin(Math.toRadians(carPos2.degree)) * 50.0d), carPos2.degree, carPos2, str3, false));
            } else {
                pos15 = posC3;
                z10 = z9;
                z11 = z8;
                list = arrayList2;
            }
            if (pos13.model() > 1.0E-5d) {
                arrayList3 = arrayList;
                arrayList3.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos13, r23, 29.0d));
                arrayList3.remove(arrayList3.size() - 1);
                if (z7) {
                    list.add(c(pos13, cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos13, posC2, 50.0d), Math.toDegrees(pos13.angleTo(r23)), carPos2, "回正", true));
                } else {
                    list.add(c(pos14, new Pos(pos14).translate(Math.cos(Math.toRadians(r4.degree)) * 50.0d, Math.sin(Math.toRadians(r4.degree)) * 50.0d), r4.degree, r4, "方向盘回正往前走", false));
                }
            } else {
                arrayList3 = arrayList;
            }
            iAbs = (int) Math.abs((((double) ((float) radians5)) * dMin) / 29.0d);
            d9 = radians5 / ((double) iAbs);
            while (i4 < iAbs) {
                double d216 = ((double) i4) * d9;
                arrayList3.add(new Pos(r23).rotate(posC5, Math.cos(d216), Math.sin(d216)));
            }
            if (z10) {
                str = "右打满";
            } else {
                str = "左打满";
            }
            if (z6) {
                list.add(c(pos14, new Pos(pos14).translate(Math.cos(Math.toRadians(r4.degree)) * 50.0d, Math.sin(Math.toRadians(r4.degree)) * 50.0d), r4.degree, r4, str, false));
            } else {
                double degrees4 = Math.toDegrees(posC5.angleTo(r23));
                if (z10) {
                    i5 = 90;
                } else {
                    i5 = -90;
                }
                double d217 = ((double) i5) + degrees4;
                list.add(c(r23, new Pos(r23).translate(Math.cos(Math.toRadians(d217)) * 50.0d, Math.sin(Math.toRadians(d217)) * 50.0d), d217, r4, str, false));
            }
            pos16 = pos15;
            Pos posTranslate4 = new Pos(pos16).translate(Math.cos(Math.toRadians(d17)) * 50.0d, Math.sin(Math.toRadians(d17)) * 50.0d);
            if (z11) {
                str2 = "回正";
            } else {
                str2 = "回正，请停车，挂倒档";
            }
            list.add(c(pos16, posTranslate4, d17, r4, str2, z11));
            if (!z11) {
                return true;
            }
            arrayList3.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos16, pos17, 29.0d));
            list.add(c(pos17, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos16, pos17, 50.0d), d17, r4, "请停车，挂倒档", false));
            return true;
        }
        carPos = carPosC;
        z = z12;
        z2 = z;
        if (z2) {
            List<Pos> arrayList8 = new ArrayList<>();
            bVar.d(arrayList8);
            List<a> arrayList9 = new ArrayList<>();
            bVar.f(arrayList9);
            CarPos carPos5 = carPos;
            arrayList8.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(carPos5.rearAxlePoint, pos17, 29.0d));
            Pos pos110 = carPos5.rearAxlePoint;
            arrayList9.add(d(pos110, new Pos(pos110).translate(Math.cos(Math.toRadians(carPos5.degree)) * 50.0d, Math.sin(Math.toRadians(carPos5.degree)) * 50.0d), carPos5.degree, carPos5, "请沿轨迹微调方向盘，将车辆开到停车区域", false, !z));
            Pos posTranslate5 = new Pos(pos17).translate(Math.cos(Math.toRadians(d17)) * 50.0d, Math.sin(Math.toRadians(d17)) * 50.0d);
            if (z) {
                str4 = "请停车，挂前进档";
            } else {
                str4 = "请停车，挂倒档";
            }
            arrayList9.add(d(pos17, posTranslate5, d17, carPos5, str4, false, !z));
            return true;
        }
        carPos2 = carPos;
        bVar2 = new cn.mucang.android.jiakaoyi.signal.utils.b(pos17, d17, true);
        posA = bVar2.a(eVar.c().rearAxlePoint);
        d2 = eVar.c().degree - bVar2.f5831f;
        dMin = Math.min(RuntimeWheelAndR.b(eVar.c().L).R, 380.0d);
        radians = Math.toRadians(d2 + 90.0d);
        radians2 = Math.toRadians(d2 - 90.0d);
        dSin = posA.y + (Math.sin(radians) * dMin);
        dSin2 = posA.y + (Math.sin(radians2) * dMin);
        if (Math.abs(dSin) < Math.abs(dSin2)) {
            i = 1;
        } else {
            dSin = dSin2;
            radians = radians2;
            i = -1;
        }
        if (i == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        pos = new Pos(posA.x + (Math.cos(radians) * dMin), dSin);
        pos2 = new Pos();
        d3 = -d2;
        pos2.setPos(posA).rotate(pos, Math.cos(Math.toRadians(d3)), Math.sin(Math.toRadians(d3)));
        pos3 = new Pos();
        pos4 = new Pos();
        pos5 = new Pos();
        pos6 = new Pos();
        z4 = z3;
        pos7 = new Pos();
        pos7.setPos(posA.x - (posA.y / Math.tan(Math.toRadians(d2 + 1.0E-7d))), 0.0d);
        i2 = i;
        if ((Math.cos(Math.toRadians(d2)) * (pos7.x - posA.x)) + (Math.sin(Math.toRadians(d2)) * (pos7.y - posA.y)) > 0.0d) {
            dTan = dMin / Math.tan(Math.toRadians(((double) d.c((float) (180.0d - Math.abs(d2)))) * 0.5d));
            pos8 = pos7;
            if (pos8.x + dTan < 30.0d) {
                i3 = 1;
            } else {
                i3 = 0;
            }
        } else {
            pos8 = pos7;
            i3 = 0;
            dTan = 0.0d;
        }
        if (i3 == 0) {
            i3 = 3;
        }
        if (i3 == 0) {
            i3 = 2;
        }
        f.o("路径规划算法:" + i3 + ",degree:" + d2 + ",当前位置:" + posA + ",R:" + dMin);
        if (i3 != 1) {
            if (i3 == 2) {
                pos11 = pos6;
                pos3.setPos(0.0d, 0.0d);
                double d112 = pos2.y * 0.5d;
                pos4.y = d112;
                pos10 = pos;
                double d113 = pos10.x;
                d11 = d113 * (-2.0d);
                double d218 = pos10.y;
                d12 = (d11 * d11) - (4.0d * (((d113 * d113) + ((d112 - d218) * (d112 - d218))) - (dMin * dMin)));
                if (d12 < 0.0d) {
                    return false;
                }
                double dSqrt3 = Math.sqrt(d12);
                double d219 = -d11;
                d13 = (d219 + dSqrt3) / 2.0d;
                d14 = (d219 - dSqrt3) / 2.0d;
                if (d13 >= pos2.x) {
                    pos4.x = d13;
                } else {
                    pos4.x = d14;
                }
                d15 = (pos4.x * 2.0d) - pos10.x;
                pos11.x = d15;
                pos11.y = (pos4.y * 2.0d) - pos10.y;
                pos9 = pos5;
                pos9.x = d15;
                pos9.y = 0.0d;
                if (d15 <= 200.0d) {
                    return false;
                }
                if (pos4.x >= posA.x - 20.0d) {
                }
                double degrees5 = Math.toDegrees(pos10.angleTo(pos4));
                if (posA.y > 0.0d) {
                    i7 = -90;
                } else {
                    i7 = 90;
                }
                double d2110 = degrees5 + ((double) i7);
                d8 = d2110 - d2;
                d7 = -d2110;
                posC = pos3;
            } else if (i3 != 3) {
                pos2 = pos2;
                dMin = dMin;
                pos12 = pos4;
                pos9 = pos5;
                pos11 = pos6;
                posC = pos3;
                pos10 = pos;
                z6 = false;
                z7 = true;
                d8 = 0.0d;
                d7 = 0.0d;
            } else {
                double d2111 = i2;
                pos3.setPos(pos2).rotate(pos, 0.0d, d2111);
                pos4.setPos(pos3.x, (-dMin) * d2111);
                pos5.setPos(pos4).translate(dMin, 0.0d);
                pos5.y = 0.0d;
                pos11 = pos6;
                pos11.setPos(pos5.x, pos4.y);
                d16 = posA.y;
                if (d16 > 0.0d) {
                    i8 = -90;
                } else {
                    i8 = 90;
                }
                double d2112 = ((double) i8) - d2;
                if (d16 > 0.0d) {
                    i9 = 90;
                } else {
                    i9 = -90;
                }
                d7 = i9;
                posC = pos3;
                pos9 = pos5;
                d8 = d2112;
                pos10 = pos;
            }
            z6 = false;
            pos2 = pos2;
            pos12 = pos4;
            z7 = true;
        } else {
            pos9 = pos5;
            pos10 = pos;
            d4 = dTan;
            pos11 = pos6;
            pos3.setPos(posA);
            if (d4 < 1.0E-5d) {
                pos8.setPos(posA.x - (posA.y / Math.tan(Math.toRadians(d2 + 1.0E-7d))), 0.0d);
                dTan2 = dMin / Math.tan(Math.toRadians(((double) d.c((float) (180.0d - Math.abs(d2)))) * 0.5d));
            } else {
                dTan2 = d4;
            }
            if (pos8.x + dTan2 > 100.0d) {
                return false;
            }
            pos4.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos8, posA, dTan2));
            pos9.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos8, new Pos(100000.0d, 0.0d), dTan2));
            double d2113 = pos9.x;
            if (posA.y > 0.0d) {
                d5 = dMin;
            } else {
                d5 = -dMin;
            }
            pos11.setPos(d2113, d5);
            pos12 = pos4;
            d6 = pos12.y;
            if (d6 * (d6 - posA.y) <= 0.0d) {
                posC = pos3;
                if (posC.distanceSquare(pos12) >= 2500.0d) {
                    z5 = false;
                }
                z6 = z5;
                dMin = dMin;
                d7 = d3;
                z7 = false;
                d8 = 0.0d;
            } else {
                posC = r3;
            }
            posC.setPos(0.0d, 0.0d);
            z5 = true;
            z6 = z5;
            dMin = dMin;
            d7 = d3;
            z7 = false;
            d8 = 0.0d;
        }
        if (pos9.x < -30.0d) {
            z8 = true;
        } else {
            z8 = false;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("theta1:");
        float f6 = (float) d8;
        sb3.append(d.c(f6));
        sb3.append(",theta2:");
        float f7 = (float) d7;
        sb3.append(d.c(f7));
        sb3.append(",B:");
        sb3.append(pos12);
        sb3.append(",C:");
        sb3.append(pos9);
        sb3.append(",D:");
        sb3.append(pos2);
        sb3.append(",O1:");
        sb3.append(pos10);
        sb3.append(",O2:");
        sb3.append(pos11);
        sb3.append(",D:");
        sb3.append(pos2);
        f.o(sb3.toString());
        radians3 = Math.toRadians(d.c(f6));
        double radians6 = Math.toRadians(d.c(f7));
        if (pos12.y > 0.0d) {
            z9 = true;
        } else {
            z9 = false;
        }
        if (posC.model() > 1.0E-5d) {
            bVar3 = bVar2;
            posC = bVar3.c(posC);
        } else {
            bVar3 = bVar2;
        }
        pos13 = posC;
        posC2 = bVar3.c(pos12);
        posC3 = bVar3.c(pos9);
        bVar3.c(pos2);
        posC4 = bVar3.c(pos10);
        posC5 = bVar3.c(pos11);
        bVar.c.setPos(carPos2.rearAxlePoint);
        pos14 = carPos2.rearAxlePoint;
        arrayList = new ArrayList();
        bVar.d(arrayList);
        arrayList2 = new ArrayList<>();
        bVar.f(arrayList2);
        if (z7) {
            iAbs2 = (int) Math.abs((((double) ((float) radians3)) * dMin) / 29.0d);
            d10 = radians3 / ((double) iAbs2);
            i6 = 0;
            while (i6 < iAbs2) {
                boolean z15 = z9;
                double d2114 = ((double) i6) * d10;
                arrayList.add(new Pos(pos14).rotate(posC4, Math.cos(d2114), Math.sin(d2114)));
                i6++;
                z8 = z8;
                z9 = z15;
            }
            z10 = z9;
            z11 = z8;
            if (z4) {
                str3 = "右打满";
            } else {
                str3 = "左打满";
            }
            pos15 = posC3;
            list = arrayList2;
            list.add(c(pos14, new Pos(pos14).translate(Math.cos(Math.toRadians(carPos2.degree)) * 50.0d, Math.sin(Math.toRadians(carPos2.degree)) * 50.0d), carPos2.degree, carPos2, str3, false));
        } else {
            pos15 = posC3;
            z10 = z9;
            z11 = z8;
            list = arrayList2;
        }
        if (pos13.model() > 1.0E-5d) {
            arrayList3 = arrayList;
            arrayList3.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos13, r23, 29.0d));
            arrayList3.remove(arrayList3.size() - 1);
            if (z7) {
                list.add(c(pos13, cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos13, posC2, 50.0d), Math.toDegrees(pos13.angleTo(r23)), carPos2, "回正", true));
            } else {
                list.add(c(pos14, new Pos(pos14).translate(Math.cos(Math.toRadians(r4.degree)) * 50.0d, Math.sin(Math.toRadians(r4.degree)) * 50.0d), r4.degree, r4, "方向盘回正往前走", false));
            }
        } else {
            arrayList3 = arrayList;
        }
        iAbs = (int) Math.abs((((double) ((float) radians6)) * dMin) / 29.0d);
        d9 = radians6 / ((double) iAbs);
        while (i4 < iAbs) {
            double d2115 = ((double) i4) * d9;
            arrayList3.add(new Pos(r23).rotate(posC5, Math.cos(d2115), Math.sin(d2115)));
        }
        if (z10) {
            str = "右打满";
        } else {
            str = "左打满";
        }
        if (z6) {
            list.add(c(pos14, new Pos(pos14).translate(Math.cos(Math.toRadians(r4.degree)) * 50.0d, Math.sin(Math.toRadians(r4.degree)) * 50.0d), r4.degree, r4, str, false));
        } else {
            double degrees6 = Math.toDegrees(posC5.angleTo(r23));
            if (z10) {
                i5 = 90;
            } else {
                i5 = -90;
            }
            double d2116 = ((double) i5) + degrees6;
            list.add(c(r23, new Pos(r23).translate(Math.cos(Math.toRadians(d2116)) * 50.0d, Math.sin(Math.toRadians(d2116)) * 50.0d), d2116, r4, str, false));
        }
        pos16 = pos15;
        Pos posTranslate6 = new Pos(pos16).translate(Math.cos(Math.toRadians(d17)) * 50.0d, Math.sin(Math.toRadians(d17)) * 50.0d);
        if (z11) {
            str2 = "回正";
        } else {
            str2 = "回正，请停车，挂倒档";
        }
        list.add(c(pos16, posTranslate6, d17, r4, str2, z11));
        if (!z11) {
            return true;
        }
        arrayList3.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos16, pos17, 29.0d));
        list.add(c(pos17, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos16, pos17, 50.0d), d17, r4, "请停车，挂倒档", false));
        return true;
    }

    private static c b(Pos pos, double d2, CarPos carPos) {
        Pos posVectorTo = carPos.rearAxlePoint.vectorTo(pos);
        Pos posTranslate = new Pos(carPos.carRect.f5820a).translate(posVectorTo);
        Pos posTranslate2 = new Pos(carPos.carRect.b).translate(posVectorTo);
        Pos posTranslate3 = new Pos(carPos.carRect.c).translate(posVectorTo);
        Pos posTranslate4 = new Pos(carPos.carRect.f5821d).translate(posVectorTo);
        double d3 = d2 - carPos.degree;
        if (d3 != 0.0d) {
            double dCos = Math.cos(Math.toRadians(d3));
            double dSin = Math.sin(Math.toRadians(d3));
            posTranslate.rotate(pos, dCos, dSin);
            posTranslate2.rotate(pos, dCos, dSin);
            posTranslate3.rotate(pos, dCos, dSin);
            posTranslate4.rotate(pos, dCos, dSin);
        }
        return new c(posTranslate, posTranslate2, posTranslate3, posTranslate4);
    }

    private static a c(Pos pos, Pos pos2, double d2, CarPos carPos, String str, boolean z) {
        return d(pos, pos2, d2, carPos, str, z, true);
    }

    private static a d(Pos pos, Pos pos2, double d2, CarPos carPos, String str, boolean z, boolean z2) {
        c cVarB = b(pos, d2, carPos);
        NormalVariable normalVariable = new NormalVariable();
        normalVariable.setWidth(100);
        normalVariable.setPos(pos, pos2);
        f.o("生成纠正轨迹教学点:" + str + "," + pos + "," + pos2);
        return new a(normalVariable, str, cVarB, z, z2);
    }
}
