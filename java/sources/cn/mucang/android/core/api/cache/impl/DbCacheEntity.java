package cn.mucang.android.core.api.cache.impl;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.db.IdEntity;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class DbCacheEntity extends IdEntity {
    private String cacheKey;

    @cn.mucang.android.core.db.a.d("cacheTime")
    private long cacheTimestampMs;
    private String cacheValue;

    @cn.mucang.android.core.db.a.d("checkTime")
    private long checkTimestampMs;

    public DbCacheEntity() {
    }

    public static String getCacheValue(cn.mucang.android.core.api.cache.a aVar) {
        return aVar.a() != null ? aVar.a().getRawString() : "";
    }

    public String getCacheKey() {
        return this.cacheKey;
    }

    @Deprecated
    public long getCacheTime() {
        return this.cacheTimestampMs;
    }

    public long getCacheTimestampMs() {
        return this.cacheTimestampMs;
    }

    @Deprecated
    public long getCheckTime() {
        return this.checkTimestampMs;
    }

    public long getCheckTimestampMs() {
        return this.checkTimestampMs;
    }

    public void setCacheKey(String str) {
        this.cacheKey = str;
    }

    @Deprecated
    public void setCacheTime(long j) {
        this.cacheTimestampMs = j;
    }

    public void setCacheTimestampMs(long j) {
        this.cacheTimestampMs = j;
    }

    public void setCacheValue(String str) {
        this.cacheValue = str;
    }

    @Deprecated
    public void setCheckTime(long j) {
        this.checkTimestampMs = j;
    }

    public void setCheckTimestampMs(long j) {
        this.checkTimestampMs = j;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0017  */
    public cn.mucang.android.core.api.cache.a toCacheApiResponse() {
        ApiResponse apiResponse;
        String str = this.cacheValue;
        if (str != null) {
            try {
                JSONObject object = JSON.parseObject(str);
                if (object != null) {
                    apiResponse = new ApiResponse(object);
                } else {
                    apiResponse = null;
                }
            } catch (InternalException e2) {
                t.c("默认替换", e2);
            }
        } else {
            apiResponse = null;
        }
        if (apiResponse == null) {
            try {
                apiResponse = new ApiResponse(null, this.cacheValue);
            } catch (InternalException e3) {
                e3.printStackTrace();
            }
        } else {
            apiResponse.setRawString(this.cacheValue);
        }
        if (apiResponse == null || n0.e(apiResponse.getRawString())) {
            return null;
        }
        cn.mucang.android.core.api.cache.a aVar = new cn.mucang.android.core.api.cache.a();
        aVar.f(this.cacheTimestampMs);
        aVar.g(this.checkTimestampMs);
        aVar.e(apiResponse);
        return aVar;
    }

    public DbCacheEntity(String str, cn.mucang.android.core.api.cache.a aVar) {
        this.cacheKey = str;
        this.cacheTimestampMs = aVar.b();
        this.checkTimestampMs = aVar.c();
        this.cacheValue = getCacheValue(aVar);
    }

    public String getCacheValue() {
        return this.cacheValue;
    }
}
