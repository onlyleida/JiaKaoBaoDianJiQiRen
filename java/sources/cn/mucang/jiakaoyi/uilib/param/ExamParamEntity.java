package cn.mucang.jiakaoyi.uilib.param;

import cn.mucang.android.core.db.IdEntity;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.FloatValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.RangeValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public class ExamParamEntity extends IdEntity {
    private String cityCode;
    private String content;
    private long examSiteId;
    private String userId;
    private int valueType;

    public ExamParamEntity() {
    }

    public String getCityCode() {
        return this.cityCode;
    }

    public String getContent() {
        return this.content;
    }

    public long getExamSiteId() {
        return this.examSiteId;
    }

    public String getUserId() {
        return this.userId;
    }

    public int getValueType() {
        return this.valueType;
    }

    public RuleConfig map() {
        Type type;
        try {
            int i = this.valueType;
            if (i == 3) {
                type = BooleanValue.class;
            } else if (i == 1) {
                type = IntegerValue.class;
            } else if (i == 2) {
                type = StringValue.class;
            } else if (i == 5) {
                type = RangeValue.class;
            } else if (i == 4) {
                type = OptionsValue.class;
            } else {
                type = i == 6 ? FloatValue.class : null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
            t.d("TAG", th.getLocalizedMessage() + " : " + toString());
        }
        if (type != null) {
            return (RuleConfig) JSON.parseObject(this.content, type, new Feature[0]);
        }
        return null;
    }

    public void setCityCode(String str) {
        this.cityCode = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setExamSiteId(long j) {
        this.examSiteId = j;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setValueType(int i) {
        this.valueType = i;
    }

    public ExamParamEntity(long j, String str, int i) {
        this.examSiteId = j;
        this.userId = str;
        this.valueType = i;
    }
}
