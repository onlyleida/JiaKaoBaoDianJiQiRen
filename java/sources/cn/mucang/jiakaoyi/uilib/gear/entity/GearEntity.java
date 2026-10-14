package cn.mucang.jiakaoyi.uilib.gear.entity;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;", "Ljava/io/Serializable;", "()V", "gearTracks", "", "Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;", "getGearTracks", "()Ljava/util/List;", "setGearTracks", "(Ljava/util/List;)V", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearEntity implements Serializable {
    private List<GearTrack> gearTracks;

    public final List<GearTrack> getGearTracks() {
        return this.gearTracks;
    }

    public final void setGearTracks(List<GearTrack> list) {
        this.gearTracks = list;
    }
}
