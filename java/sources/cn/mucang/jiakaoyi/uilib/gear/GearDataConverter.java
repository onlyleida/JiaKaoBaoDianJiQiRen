package cn.mucang.jiakaoyi.uilib.gear;

import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.communicate.v;
import cn.mucang.jiakaoyi.uilib.gear.entity.GearEntity;
import cn.mucang.jiakaoyi.uilib.gear.entity.GearTrack;
import cn.mucang.jiakaoyi.uilib.gear.entity.Point;
import com.iflytek.cloud.SpeechEvent;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.gear.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/gear/GearDataConverter;", "", "()V", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearDataConverter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f9334a = new a(null);

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.gear.e$a */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0007J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/gear/GearDataConverter$Companion;", "", "()V", "TAG", "", "convert2Gear", "Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;", "readBytes", "Lcn/mucang/android/jiakaoyi/signal/communicate/ReadBytes;", SpeechEvent.KEY_EVENT_TTS_BUFFER, "Ljava/nio/ByteBuffer;", "convert2Master", "", "gearEntity", "reserveLittleBigEndian", "byteArray", "isLittleEndian", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int d(GearTrack gearTrack, GearTrack gearTrack2) {
            Integer gear = gearTrack.getGear();
            r.c(gear);
            int iIntValue = gear.intValue();
            Integer gear2 = gearTrack2.getGear();
            r.c(gear2);
            return iIntValue - gear2.intValue();
        }

        public final GearEntity a(cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            if (rVar != null && rVar.c() > 0) {
                try {
                    GearEntity gearEntity = new GearEntity();
                    ArrayList arrayList = new ArrayList();
                    gearEntity.setGearTracks(arrayList);
                    while (rVar.b()) {
                        GearTrack gearTrack = new GearTrack();
                        byte bE = rVar.e();
                        byte bE2 = rVar.e();
                        ArrayList arrayList2 = new ArrayList();
                        if (bE2 > 0) {
                            int i = 0;
                            if (bE2 > 0) {
                                do {
                                    i++;
                                    Point point = new Point();
                                    point.setDr(Float.valueOf(rVar.m() / 100.0f));
                                    point.setDp(Float.valueOf(rVar.m() / 100.0f));
                                    arrayList2.add(point);
                                } while (i < bE2);
                            }
                        }
                        gearTrack.setGear(Integer.valueOf(bE));
                        gearTrack.setPoints(arrayList2);
                        arrayList.add(gearTrack);
                    }
                    return gearEntity;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("GearDataConverter: convert2Gear failed, ", q0.d(e2)));
                }
            }
            return null;
        }

        public final GearEntity b(ByteBuffer byteBuffer) {
            if (byteBuffer != null && byteBuffer.capacity() > 0) {
                try {
                    GearEntity gearEntity = new GearEntity();
                    ArrayList arrayList = new ArrayList();
                    gearEntity.setGearTracks(arrayList);
                    while (byteBuffer.hasRemaining()) {
                        GearTrack gearTrack = new GearTrack();
                        byte b = byteBuffer.get();
                        byte b2 = byteBuffer.get();
                        ArrayList arrayList2 = new ArrayList();
                        if (b2 > 0) {
                            int i = 0;
                            if (b2 > 0) {
                                do {
                                    i++;
                                    Point point = new Point();
                                    point.setDr(Float.valueOf(byteBuffer.getShort() / 100.0f));
                                    point.setDp(Float.valueOf(byteBuffer.getShort() / 100.0f));
                                    arrayList2.add(point);
                                } while (i < b2);
                            }
                        }
                        gearTrack.setGear(Integer.valueOf(b));
                        gearTrack.setPoints(arrayList2);
                        arrayList.add(gearTrack);
                    }
                    return gearEntity;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("GearDataConverter: convert2Gear failed, ", q0.d(e2)));
                }
            }
            return null;
        }

        public final byte[] c(GearEntity gearEntity) {
            if (gearEntity != null) {
                List<GearTrack> gearTracks = gearEntity.getGearTracks();
                if (!(gearTracks == null || gearTracks.isEmpty())) {
                    try {
                        v vVar = new v(true);
                        List<GearTrack> gearTracks2 = gearEntity.getGearTracks();
                        r.c(gearTracks2);
                        Collections.sort(gearTracks2, new Comparator() { // from class: cn.mucang.jiakaoyi.uilib.gear.a
                            @Override // java.util.Comparator
                            public final int compare(Object obj, Object obj2) {
                                return GearDataConverter.a.d((GearTrack) obj, (GearTrack) obj2);
                            }
                        });
                        for (GearTrack gearTrack : gearTracks2) {
                            Integer gear = gearTrack.getGear();
                            if (gear != null && gear.intValue() == 10) {
                                vVar.c((byte) 6);
                            } else {
                                Integer gear2 = gearTrack.getGear();
                                r.c(gear2);
                                vVar.c((byte) gear2.intValue());
                            }
                            List<Point> points = gearTrack.getPoints();
                            r.c(points);
                            vVar.c((byte) points.size());
                            List<Point> points2 = gearTrack.getPoints();
                            r.c(points2);
                            for (Point point : points2) {
                                Float dr = point.getDr();
                                r.c(dr);
                                float f2 = 100;
                                vVar.h((short) (dr.floatValue() * f2));
                                Float dp = point.getDp();
                                r.c(dp);
                                vVar.h((short) (dp.floatValue() * f2));
                            }
                        }
                        return vVar.b();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("GearDataConverter: convert2Master failed, ", q0.d(e2)));
                    }
                }
            }
            return null;
        }

        public final byte[] f(byte[] bArr, boolean z) {
            if (bArr != null) {
                if (!(bArr.length == 0)) {
                    try {
                        ByteOrder byteOrder = z ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
                        ByteOrder byteOrder2 = z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN;
                        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                        byteBufferWrap.order(byteOrder);
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length);
                        byteBufferAllocate.order(byteOrder2);
                        while (byteBufferWrap.hasRemaining()) {
                            byteBufferAllocate.put(byteBufferWrap.get());
                            byte b = byteBufferWrap.get();
                            byteBufferAllocate.put(b);
                            if (b > 0 && b > 0) {
                                int i = 0;
                                do {
                                    i++;
                                    byteBufferAllocate.putShort(byteBufferWrap.getShort());
                                    byteBufferAllocate.putShort(byteBufferWrap.getShort());
                                } while (i < b);
                            }
                        }
                        return byteBufferAllocate.array();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("GearDataConverter: convert2Gear failed, ", q0.d(e2)));
                    }
                }
            }
            return null;
        }
    }

    public static final byte[] a(GearEntity gearEntity) {
        return f9334a.c(gearEntity);
    }
}
