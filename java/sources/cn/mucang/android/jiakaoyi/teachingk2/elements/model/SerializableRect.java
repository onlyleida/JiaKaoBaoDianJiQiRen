package cn.mucang.android.jiakaoyi.teachingk2.elements.model;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import com.alibaba.fastjson.annotation.JSONField;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B'\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\fH\u0007J&\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004R\u0012\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;", "Ljava/io/Serializable;", "()V", TtmlNode.LEFT, "", "top", TtmlNode.RIGHT, "bottom", "(IIII)V", "getRangeDesc", "", "isValid", "", "set", "", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SerializableRect implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public int bottom;
    public int left;
    public int right;
    public int top;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.elements.model.SerializableRect$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\n¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect$Companion;", "", "()V", "createDefaultRect", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;", "step", "", "subStep", "inputStringToRect", "input", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final SerializableRect a(int i, int i2) {
            if (i == Step.K2_DaoCheRuKu.type) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 != 4) {
                                return null;
                            }
                        }
                    }
                    return new SerializableRect(25, 20, 25, 20);
                }
                return new SerializableRect(25, 100, 25, 100);
            }
            if (i != Step.K2_CeFangTingChe.type) {
                return null;
            }
            if (i2 == 1) {
                return new SerializableRect(30, 100, 30, 100);
            }
            if (i2 != 2) {
                return null;
            }
            return new SerializableRect(25, 100, 25, 50);
        }

        public final SerializableRect b(String str) {
            SerializableRect serializableRect = new SerializableRect();
            if (n0.e(str)) {
                return serializableRect;
            }
            List listP0 = str == null ? null : StringsKt__StringsKt.p0(str, new String[]{","}, false, 0, 6, null);
            if (listP0 == null) {
                return serializableRect;
            }
            int[] iArr = {0, 0, 0, 0};
            int size = listP0.size() - 1;
            if (size >= 0) {
                int i = 0;
                int i2 = 0;
                while (true) {
                    int i3 = i + 1;
                    String str2 = (String) listP0.get(i);
                    if (!n0.e(str2) && i2 < 4) {
                        int i4 = Integer.parseInt(str2);
                        if (i4 < 0 || i4 > 500) {
                            break;
                        }
                        iArr[i2] = i4;
                        i2++;
                    }
                    if (i3 <= size) {
                        i = i3;
                    }
                }
                throw new IllegalArgumentException("请输入0-500的整数");
            }
            serializableRect.set(iArr[0], iArr[1], iArr[2], iArr[3]);
            return serializableRect;
        }
    }

    public SerializableRect() {
    }

    @JSONField(serialize = false)
    public final String getRangeDesc() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.left);
        sb.append(',');
        sb.append(this.top);
        sb.append(',');
        sb.append(this.right);
        sb.append(',');
        sb.append(this.bottom);
        return sb.toString();
    }

    @JSONField(serialize = false)
    public final boolean isValid() {
        return (this.left == 0 && this.top == 0 && this.right == 0 && this.bottom == 0) ? false : true;
    }

    public final void set(int left, int top, int right, int bottom) {
        this.left = left;
        this.top = top;
        this.right = right;
        this.bottom = bottom;
    }

    public SerializableRect(int i, int i2, int i3, int i4) {
        this.left = i;
        this.top = i2;
        this.right = i3;
        this.bottom = i4;
    }
}
