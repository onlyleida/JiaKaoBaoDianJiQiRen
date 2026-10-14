package com.google.android.gms.internal.mlkit_vision_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.mobile.auth.gatewayauth.Constant;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzfb implements ObjectEncoder {
    static final zzfb zza = new zzfb();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;
    private static final FieldDescriptor zzd;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder(Constant.PROTOCOL_WEBVIEW_NAME);
        zzad zzadVar = new zzad();
        zzadVar.zza(1);
        zzb = builder.withProperty(zzadVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("stages");
        zzad zzadVar2 = new zzad();
        zzadVar2.zza(2);
        zzc = builder2.withProperty(zzadVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("runMiniBenchmark");
        zzad zzadVar3 = new zzad();
        zzadVar3.zza(3);
        zzd = builder3.withProperty(zzadVar3.zzb()).build();
    }

    private zzfb() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder, com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
        throw null;
    }
}
