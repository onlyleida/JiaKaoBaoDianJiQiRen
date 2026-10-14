package cn.mucang.android.core.db;

import cn.mucang.android.core.utils.MiscUtils;
import io.agora.rtc.Constants;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class IdEntity implements Serializable {
    private static final long serialVersionUID = 20140710;
    protected Long _id;

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            return MiscUtils.j(this._id, ((IdEntity) obj)._id);
        }
        return false;
    }

    public Long getId() {
        return this._id;
    }

    public int hashCode() {
        Long l = this._id;
        return l != null ? Constants.ERR_PUBLISH_STREAM_NOT_FOUND + l.hashCode() : super.hashCode();
    }

    public void setId(Long l) {
        this._id = l;
    }
}
