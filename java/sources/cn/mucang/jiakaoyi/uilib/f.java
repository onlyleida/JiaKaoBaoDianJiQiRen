package cn.mucang.jiakaoyi.uilib;

import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.FloatValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.RangeValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u001a\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u001a\u0016\u0010\u0002\u001a\u00020\u00012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u001a\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\b2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u001a\u0010\u0010\t\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\f0\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"TAG", "", "parseRouteNote", "", "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;", "spots", "nodes", "parseSpotsList", "", "toEntity", "Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;", "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;", "", "uilib_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public final class f {
    public static final String a(List<? extends RouteNode> list) {
        String jSONString = JSON.toJSONString(b(list));
        r.d(jSONString, "toJSONString(spots)");
        return jSONString;
    }

    public static final List<String> b(List<? extends RouteNode> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (RouteNode routeNode : list) {
                StringBuilder sb = new StringBuilder();
                sb.append(routeNode.getId());
                sb.append(',');
                sb.append(routeNode.getStepId());
                sb.append(',');
                sb.append(routeNode.getLon());
                sb.append(',');
                sb.append(routeNode.getLat());
                sb.append(',');
                sb.append(routeNode.getBearing());
                sb.append(',');
                sb.append(routeNode.getBrakeLon());
                sb.append(',');
                sb.append(routeNode.getBrakeLat());
                sb.append(',');
                sb.append(routeNode.getBrakeBearing());
                sb.append(',');
                sb.append(routeNode.getBrakeDistance());
                sb.append(',');
                sb.append(routeNode.isPlayStartVoice());
                sb.append(',');
                sb.append(routeNode.isJudgeTurnLight());
                sb.append(',');
                sb.append(routeNode.isJudgeBrake());
                sb.append(',');
                sb.append(routeNode.getStepDistance());
                sb.append(',');
                sb.append((Object) routeNode.getAlias());
                sb.append(',');
                sb.append(routeNode.getOrderId());
                sb.append(',');
                sb.append(routeNode.getTeachNum());
                sb.append(',');
                sb.append(routeNode.getRandomGroup());
                sb.append(',');
                sb.append(routeNode.getManualTrigger());
                sb.append(',');
                sb.append((Object) routeNode.getUid());
                arrayList.add(sb.toString());
            }
        }
        return arrayList;
    }

    public static final RuleConfigEntity c(RuleConfig<Object> ruleConfig) {
        String string;
        r.e(ruleConfig, "<this>");
        RuleConfigEntity ruleConfigEntity = new RuleConfigEntity();
        ruleConfigEntity.setRuleId(ruleConfig.ruleId);
        ruleConfigEntity.setStepId(ruleConfig.step.type);
        ruleConfigEntity.setName(ruleConfig.name);
        ruleConfigEntity.setDeductIds(ruleConfig.deductIds);
        Object obj = ruleConfig.value;
        String str = "0";
        if (obj != null && (string = obj.toString()) != null) {
            str = string;
        }
        ruleConfigEntity.setValue(str);
        if (ruleConfig instanceof BooleanValue) {
            ruleConfigEntity.setValueType(3);
        } else if (ruleConfig instanceof IntegerValue) {
            ruleConfigEntity.setValueType(1);
            IntegerValue integerValue = (IntegerValue) ruleConfig;
            ruleConfigEntity.setMinValue(integerValue.minValue);
            ruleConfigEntity.setMaxValue(integerValue.maxValue);
        } else if (ruleConfig instanceof StringValue) {
            ruleConfigEntity.setValueType(2);
        } else if (ruleConfig instanceof RangeValue) {
            ruleConfigEntity.setValueType(5);
            RangeValue rangeValue = (RangeValue) ruleConfig;
            ruleConfigEntity.setValue2(rangeValue.value2);
            ruleConfigEntity.setMinValue(rangeValue.minValue);
            ruleConfigEntity.setMaxValue(rangeValue.maxValue);
            ruleConfigEntity.setMinValue2(rangeValue.minValue2);
            ruleConfigEntity.setMaxValue2(rangeValue.maxValue2);
        } else if (ruleConfig instanceof OptionsValue) {
            ruleConfigEntity.setValueType(4);
            StringBuilder sb = new StringBuilder();
            List<String> options = ((OptionsValue) ruleConfig).options;
            r.d(options, "options");
            int i = 0;
            for (Object obj2 : options) {
                int i2 = i + 1;
                if (i < 0) {
                    s.t();
                    throw null;
                }
                String str2 = (String) obj2;
                if (i != 0) {
                    sb.append(",");
                }
                sb.append(str2);
                i = i2;
            }
            ruleConfigEntity.setOptions(sb.toString());
        } else if (ruleConfig instanceof FloatValue) {
            ruleConfigEntity.setValueType(6);
            FloatValue floatValue = (FloatValue) ruleConfig;
            ruleConfigEntity.setMinValue(floatValue.minValue);
            ruleConfigEntity.setMaxValue(floatValue.maxValue);
        }
        return ruleConfigEntity;
    }
}
