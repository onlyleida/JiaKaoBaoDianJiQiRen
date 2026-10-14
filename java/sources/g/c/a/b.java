package g.c.a;

import cn.mucang.sundial.android.tcp.Constant;
import com.autonavi.base.amap.mapcore.tools.GLMapStaticValue;
import io.agora.rtc.internal.RtcEngineEvent;
import org.opencv.ml.DTrees;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long[] f14562a;

    static {
        long[] jArr = {d.a(RtcEngineEvent.EvtType.EVT_STOP_PUBLISHER, 83), d.a(1137, 1642), d.a(1161, 57344), d.a(1161, 57347), d.a(1861, 4096), d.a(2118, 4352), d.a(2278, 21761), d.a(GLMapStaticValue.AM_PARAMETERNAME_MAXFPS, 10), d.a(3053, 4352), d.a(3053, 4353), d.a(4047, 4099), d.a(4047, 4100), d.a(4047, 4102), d.a(4062, 51717), d.a(4262, 43558), d.a(4267, 4293), d.a(4277, 44144), d.a(4292, 3985), d.a(4292, 4353), d.a(4292, 5633), d.a(4292, 32778), d.a(4292, 32827), d.a(4292, 32836), d.a(4292, 32846), d.a(4292, 32851), d.a(4292, 32852), d.a(4292, 32870), d.a(4292, 32879), d.a(4292, 32890), d.a(4292, 32964), d.a(4292, 32970), d.a(4292, 32989), d.a(4292, 33014), d.a(4292, 33045), d.a(4292, 33085), d.a(4292, 33087), d.a(4292, 33098), d.a(4292, 33099), d.a(9221, 3), d.a(4292, 33110), d.a(4292, 33118), d.a(4292, 33119), d.a(4292, 33163), d.a(4292, 33183), d.a(4292, 33190), d.a(4292, 33193), d.a(4292, 33196), d.a(4292, 33197), d.a(4292, 33224), d.a(4292, 33250), d.a(4292, 33255), d.a(4292, 33256), d.a(4292, 33266), d.a(4292, 33304), d.a(4292, 33323), d.a(4292, 33387), d.a(4292, 33409), d.a(4292, 33427), d.a(4292, 33529), d.a(4292, 33601), d.a(4292, 33666), d.a(4292, 33704), d.a(4292, 33752), d.a(4292, 33809), d.a(4292, 33816), d.a(4292, 33902), d.a(4292, 33911), d.a(4292, 34282), d.a(4292, 34283), d.a(4292, 34296), d.a(4292, 34404), d.a(4292, 34405), d.a(4292, 34652), d.a(4292, 34980), d.a(4292, 34981), d.a(4292, Constant.ONE_MINUTE), d.a(4292, 60001), d.a(4292, 60003), d.a(4292, 60016), d.a(4292, 60017), d.a(4292, 60026), d.a(4292, 60027), d.a(4292, 60032), d.a(4292, 61441), d.a(4292, 61442), d.a(4292, 61443), d.a(4292, 61444), d.a(4293, 60001), d.a(4302, 60010), d.a(5037, 39321), d.a(5461, 4), d.a(5738, 513), d.a(5738, 769), d.a(5738, 771), d.a(5738, 772), d.a(5738, 773), d.a(5738, 1025), d.a(5738, 257), d.a(5846, 1), d.a(5852, 16), d.a(5852, 17), d.a(5852, 18), d.a(5852, 21), d.a(6056, 1), d.a(6056, 5), d.a(6132, 43690), d.a(6211, 512), d.a(6383, 57359), d.a(6875, 1), d.a(7139, 1958), d.a(7721, 258), d.a(7721, 1281), d.a(8121, 256), d.a(8121, 512), d.a(8121, 513), d.a(8121, Videoio.CAP_PROP_XI_LENS_FOCUS_MOVE), d.a(8121, Videoio.CAP_PROP_XI_LENS_FOCUS_DISTANCE), d.a(8121, DTrees.PREDICT_MASK), d.a(8121, 769), d.a(8121, 770), d.a(8121, 771), d.a(8121, 1024), d.a(8121, 1025), d.a(8121, 1026), d.a(8121, 1027), d.a(8121, 1028), d.a(8121, 1536), d.a(8121, 1537), d.a(8121, 1538), d.a(8121, 1792), d.a(8121, 1793), d.a(12693, 61840), d.a(12693, 62080), d.a(12693, 62081), d.a(16700, 38144), d.a(6408, 8977)};
        d.b(jArr);
        f14562a = jArr;
    }

    public static boolean a(int i, int i2) {
        return d.c(f14562a, i, i2);
    }
}
