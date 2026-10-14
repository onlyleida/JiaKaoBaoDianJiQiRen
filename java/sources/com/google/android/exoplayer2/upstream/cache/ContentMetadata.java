package com.google.android.exoplayer2.upstream.cache;

/* JADX INFO: loaded from: classes5.dex */
public interface ContentMetadata {
    public static final String KEY_CONTENT_LENGTH = "exo_len";
    public static final String KEY_CUSTOM_PREFIX = "custom_";
    public static final String KEY_REDIRECTED_URI = "exo_redir";

    boolean contains(String str);

    long get(String str, long j);

    String get(String str, String str2);

    byte[] get(String str, byte[] bArr);
}
