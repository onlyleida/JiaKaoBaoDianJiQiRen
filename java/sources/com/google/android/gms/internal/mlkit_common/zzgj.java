package com.google.android.gms.internal.mlkit_common;

import com.amap.api.maps.model.MyLocationStyle;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.iflytek.cloud.SpeechConstant;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzgj implements ObjectEncoder {
    static final zzgj zza = new zzgj();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder(SpeechConstant.LANGUAGE);
        zzbf zzbfVar = new zzbf();
        zzbfVar.zza(1);
        zzb = builder.withProperty(zzbfVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder(MyLocationStyle.ERROR_CODE);
        zzbf zzbfVar2 = new zzbf();
        zzbfVar2.zza(2);
        zzc = builder2.withProperty(zzbfVar2.zzb()).build();
    }

    private zzgj() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder, com.google.firebase.encoders.Encoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
        throw null;
    }
}
