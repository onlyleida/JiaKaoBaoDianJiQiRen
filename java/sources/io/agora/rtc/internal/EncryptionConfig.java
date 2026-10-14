package io.agora.rtc.internal;

/* JADX INFO: loaded from: classes6.dex */
public class EncryptionConfig {
    public EncryptionMode encryptionMode = EncryptionMode.AES_128_XTS;
    public String encryptionKey = null;

    public enum EncryptionMode {
        AES_128_XTS(1),
        AES_128_ECB(2),
        AES_256_XTS(3),
        SM4_128_ECB(4),
        MODE_END(5);

        private int value;

        EncryptionMode(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }
}
