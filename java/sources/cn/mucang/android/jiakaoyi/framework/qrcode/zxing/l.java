package cn.mucang.android.jiakaoyi.framework.qrcode.zxing;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f3509a;
    private final List<g> b;

    public l(f fVar) {
        this.f3509a = fVar;
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        arrayList.add(new g(fVar, new int[]{1}));
    }

    private g a(int i) {
        if (i >= this.b.size()) {
            List<g> list = this.b;
            g gVarG = list.get(list.size() - 1);
            for (int size = this.b.size(); size <= i; size++) {
                f fVar = this.f3509a;
                gVarG = gVarG.g(new g(fVar, new int[]{1, fVar.c((size - 1) + fVar.d())}));
                this.b.add(gVarG);
            }
        }
        return this.b.get(i);
    }

    public void b(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        g gVarA = a(i);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] iArrD = new g(this.f3509a, iArr2).h(i, 1).b(gVarA)[1].d();
        int length2 = i - iArrD.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        System.arraycopy(iArrD, 0, iArr, length + length2, iArrD.length);
    }
}
