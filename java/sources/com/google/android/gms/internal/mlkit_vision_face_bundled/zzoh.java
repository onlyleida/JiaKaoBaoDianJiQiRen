package com.google.android.gms.internal.mlkit_vision_face_bundled;

import com.google.android.gms.internal.mlkit_vision_face_bundled.zzoh;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzon;

/* JADX INFO: loaded from: classes2.dex */
public class zzoh<MessageType extends zzon<MessageType, BuilderType>, BuilderType extends zzoh<MessageType, BuilderType>> extends zzms<MessageType, BuilderType> {
    protected zzon zza;
    protected boolean zzb = false;
    private final zzon zzc;

    protected zzoh(MessageType messagetype) {
        this.zzc = messagetype;
        this.zza = (zzon) messagetype.zzf(4, null, null);
    }

    private static final void zza(zzon zzonVar, zzon zzonVar2) {
        zzqb.zza().zzb(zzonVar.getClass()).zzg(zzonVar, zzonVar2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzms
    protected final /* synthetic */ zzms zzm(zzmt zzmtVar) {
        zzp((zzon) zzmtVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzms
    /* JADX INFO: renamed from: zzo, reason: merged with bridge method [inline-methods] */
    public final zzoh clone() {
        zzoh zzohVar = (zzoh) this.zzc.zzf(5, null, null);
        zzohVar.zzp(zzs());
        return zzohVar;
    }

    public final zzoh zzp(zzon zzonVar) {
        if (this.zzb) {
            zzu();
            this.zzb = false;
        }
        zza(this.zza, zzonVar);
        return this;
    }

    public final MessageType zzq() {
        MessageType messagetype = (MessageType) zzs();
        if (messagetype.zzv()) {
            return messagetype;
        }
        throw new zzqu(messagetype);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpr
    /* JADX INFO: renamed from: zzr, reason: merged with bridge method [inline-methods] */
    public MessageType zzs() {
        if (this.zzb) {
            return (MessageType) this.zza;
        }
        zzon zzonVar = this.zza;
        zzqb.zza().zzb(zzonVar.getClass()).zzf(zzonVar);
        this.zzb = true;
        return (MessageType) this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpt
    public final /* synthetic */ zzps zzt() {
        return this.zzc;
    }

    protected void zzu() {
        zzon zzonVar = (zzon) this.zza.zzf(4, null, null);
        zza(zzonVar, this.zza);
        this.zza = zzonVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpt
    public final boolean zzv() {
        return zzon.zzE(this.zza, false);
    }
}
