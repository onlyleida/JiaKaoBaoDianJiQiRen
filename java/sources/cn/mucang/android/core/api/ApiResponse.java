package cn.mucang.android.core.api;

import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.utils.t;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.amap.api.maps.model.MyLocationStyle;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ApiResponse {
    public static final String TAG = "ApiResponse";
    private int errorCode;
    private JSONObject jsonObject;
    private String message;
    private String rawString;
    private boolean success;

    public ApiResponse(JSONObject jSONObject) throws InternalException {
        this(jSONObject, JSON.toJSONString(jSONObject));
    }

    private <T> T tryGetDataValue(Class<T> cls) throws InternalException {
        try {
            Object obj = this.jsonObject.get("data");
            if (obj instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.containsKey("value")) {
                    return (T) jSONObject.getObject("value", (Class) cls);
                }
            }
            return null;
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public void copyFromOtherResponse(ApiResponse apiResponse) {
        this.jsonObject = apiResponse.jsonObject;
        this.success = apiResponse.success;
        this.errorCode = apiResponse.errorCode;
        this.message = apiResponse.message;
    }

    public <T> T getData(Class<T> cls) throws InternalException {
        return (T) getData("data", cls);
    }

    public <T> List<T> getDataArray(Class<T> cls) throws InternalException {
        return getDataArray("data.itemList", cls);
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    @Deprecated
    public JSONObject getJsonObject() {
        return this.jsonObject;
    }

    public <T> List<T> getList(Class<T> cls) throws InternalException {
        return getDataArray("data", cls);
    }

    public String getMessage() {
        return this.message;
    }

    public String getRawString() {
        return this.rawString;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public <T> cn.mucang.android.core.api.d.b<T> parseFetchMoreResponse(Class<T> cls) throws Exception {
        try {
            cn.mucang.android.core.api.d.b<T> bVar = new cn.mucang.android.core.api.d.b<>();
            JSONObject jSONObject = this.jsonObject.getJSONObject("data");
            Boolean bool = jSONObject.getBoolean("hasMore");
            if (bool == null) {
                bool = Boolean.TRUE;
            }
            bVar.f(getDataArray("data.itemList", cls));
            bVar.g(jSONObject.getIntValue("pageCount"));
            bVar.h(jSONObject.getLongValue("total"));
            bVar.e(bool.booleanValue());
            bVar.d(jSONObject.getString("cursor"));
            return bVar;
        } catch (Exception e2) {
            t.c(TAG, e2);
            if (e2 instanceof InternalException) {
                throw e2;
            }
            throw new InternalException(e2);
        }
    }

    public void setRawString(String str) {
        this.rawString = str;
    }

    public ApiResponse(JSONObject jSONObject, String str) throws InternalException {
        try {
            this.rawString = str;
            if (jSONObject != null) {
                this.jsonObject = jSONObject;
                this.success = jSONObject.getBooleanValue("success");
                this.errorCode = jSONObject.getIntValue(MyLocationStyle.ERROR_CODE);
                this.message = jSONObject.getString(ErrorDialogParams.EXTRA_MESSAGE);
            }
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public byte getData(byte b) throws InternalException {
        try {
            Byte b2 = (Byte) tryGetDataValue(Byte.class);
            if (b2 == null) {
                b2 = this.jsonObject.getByte("data");
            }
            return b2 == null ? b : b2.byteValue();
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public <T> List<T> getDataArray(String str, Class<T> cls) throws InternalException {
        try {
            ArrayList arrayList = new ArrayList();
            String[] strArrSplit = str.split("\\.");
            JSONObject jSONObject = this.jsonObject;
            for (int i = 0; i < strArrSplit.length - 1; i++) {
                jSONObject = jSONObject.getJSONObject(strArrSplit[i]);
            }
            JSONArray jSONArray = jSONObject.getJSONArray(strArrSplit[strArrSplit.length - 1]);
            for (int i2 = 0; i2 < jSONArray.size(); i2++) {
                arrayList.add(jSONArray.getObject(i2, cls));
            }
            return arrayList;
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public short getData(short s) throws InternalException {
        try {
            Short sh = (Short) tryGetDataValue(Short.class);
            if (sh == null) {
                sh = this.jsonObject.getShort("data");
            }
            return sh == null ? s : sh.shortValue();
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public int getData(int i) throws InternalException {
        try {
            Integer integer = (Integer) tryGetDataValue(Integer.class);
            if (integer == null) {
                integer = this.jsonObject.getInteger("data");
            }
            return integer == null ? i : integer.intValue();
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public long getData(long j) throws InternalException {
        try {
            Long l = (Long) tryGetDataValue(Long.class);
            if (l == null) {
                l = this.jsonObject.getLong("data");
            }
            return l == null ? j : l.longValue();
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public double getData(double d2) throws InternalException {
        try {
            Double d3 = (Double) tryGetDataValue(Double.class);
            if (d3 == null) {
                d3 = this.jsonObject.getDouble("data");
            }
            if (d3 != null && !d3.isNaN()) {
                return d3.doubleValue();
            }
            return d2;
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public float getData(float f2) throws InternalException {
        try {
            Float f3 = (Float) tryGetDataValue(Float.class);
            if (f3 == null) {
                f3 = this.jsonObject.getFloat("data");
            }
            return f3 == null ? f2 : f3.floatValue();
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public boolean getData(boolean z) throws InternalException {
        try {
            Boolean bool = (Boolean) tryGetDataValue(Boolean.class);
            if (bool == null) {
                bool = this.jsonObject.getBoolean("data");
            }
            return bool == null ? z : bool.booleanValue();
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public String getData(String str) throws InternalException {
        try {
            String string = (String) tryGetDataValue(String.class);
            if (string == null) {
                string = this.jsonObject.getString("data");
            }
            return string == null ? str : string;
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public <T> T getData(String str, Class<T> cls) throws InternalException {
        try {
            String[] strArrSplit = str.split("\\.");
            JSONObject jSONObject = this.jsonObject;
            for (String str2 : strArrSplit) {
                jSONObject = jSONObject.getJSONObject(str2);
            }
            if (jSONObject == null) {
                return null;
            }
            return (T) JSON.parseObject(jSONObject.toString(), cls);
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }

    public JSONObject getData() throws InternalException {
        try {
            return this.jsonObject.getJSONObject("data");
        } catch (Exception e2) {
            t.c(TAG, e2);
            throw new InternalException(e2);
        }
    }
}
