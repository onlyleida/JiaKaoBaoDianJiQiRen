package cn.mucang.android.jiakaoyi.signal.ai;

/* JADX INFO: loaded from: classes3.dex */
public class AIFaceCoverModel extends AIRecognitionModel {
    public final int result;

    public AIFaceCoverModel(int i) {
        this.result = i;
    }

    public boolean isMask() {
        return this.result == 1;
    }

    public boolean isOtherCover() {
        return this.result == 4;
    }

    public boolean isSideFace() {
        return this.result == 2;
    }

    public boolean isSunglasses() {
        return this.result == 3;
    }

    public boolean noCover() {
        return this.result == 0;
    }
}
