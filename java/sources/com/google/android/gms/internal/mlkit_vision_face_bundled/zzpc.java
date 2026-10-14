package com.google.android.gms.internal.mlkit_vision_face_bundled;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzpc extends zzpg {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzpc() {
        super(null);
    }

    /* synthetic */ zzpc(zzpb zzpbVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpg
    final void zza(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzrf.zzf(obj, j);
        if (list instanceof zzpa) {
            objUnmodifiableList = ((zzpa) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzqa) && (list instanceof zzos)) {
                zzos zzosVar = (zzos) list;
                if (zzosVar.zzc()) {
                    zzosVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzrf.zzs(obj, j, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpg
    final void zzb(Object obj, Object obj2, long j) {
        List list;
        List list2;
        List listZzd;
        List list3 = (List) zzrf.zzf(obj2, j);
        int size = list3.size();
        List list4 = (List) zzrf.zzf(obj, j);
        if (list4.isEmpty()) {
            if (list4 instanceof zzpa) {
                listZzd = new zzoz(size);
            } else {
                listZzd = ((list4 instanceof zzqa) && (list4 instanceof zzos)) ? ((zzos) list4).zzd(size) : new ArrayList(size);
            }
            zzrf.zzs(obj, j, listZzd);
            list2 = listZzd;
        } else {
            if (zza.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                zzrf.zzs(obj, j, arrayList);
                list = arrayList;
            } else if (list4 instanceof zzra) {
                zzoz zzozVar = new zzoz(list4.size() + size);
                zzozVar.addAll(zzozVar.size(), (zzra) list4);
                zzrf.zzs(obj, j, zzozVar);
                list = zzozVar;
            } else if ((list4 instanceof zzqa) && (list4 instanceof zzos)) {
                zzos zzosVar = (zzos) list4;
                if (!zzosVar.zzc()) {
                    list2 = list4;
                    list2 = list4;
                    list2 = list4;
                    zzos zzosVarZzd = zzosVar.zzd(list4.size() + size);
                    zzrf.zzs(obj, j, zzosVarZzd);
                    list2 = zzosVarZzd;
                }
            }
            list2 = list;
        }
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        zzrf.zzs(obj, j, list3);
    }
}
