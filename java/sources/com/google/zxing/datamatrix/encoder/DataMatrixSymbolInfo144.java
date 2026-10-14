package com.google.zxing.datamatrix.encoder;

import io.agora.rtc.Constants;

/* JADX INFO: loaded from: classes4.dex */
final class DataMatrixSymbolInfo144 extends SymbolInfo {
    DataMatrixSymbolInfo144() {
        super(false, 1558, 620, 22, 22, 36, -1, 62);
    }

    @Override // com.google.zxing.datamatrix.encoder.SymbolInfo
    public int getDataLengthForInterleavedBlock(int i) {
        return i <= 8 ? Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED : Constants.ERR_PUBLISH_STREAM_NOT_FOUND;
    }

    @Override // com.google.zxing.datamatrix.encoder.SymbolInfo
    public int getInterleavedBlockCount() {
        return 10;
    }
}
