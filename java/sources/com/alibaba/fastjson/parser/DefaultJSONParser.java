package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.PropertyProcessable;
import com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer;
import com.alibaba.fastjson.serializer.BeanContext;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.mobile.auth.BuildConfig;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    private static final Set<Class<?>> primitiveClasses = new HashSet();
    private String[] autoTypeAccept;
    private boolean autoTypeEnable;
    protected ParserConfig config;
    protected ParseContext context;
    private ParseContext[] contextArray;
    private int contextArrayIndex;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private List<ExtraProcessor> extraProcessors;
    private List<ExtraTypeProvider> extraTypeProviders;
    protected FieldTypeResolver fieldTypeResolver;
    public final Object input;
    protected transient BeanContext lastBeanContext;
    public final JSONLexer lexer;
    public int resolveStatus;
    private List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    public static class ResolveTask {
        public final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        public final String referenceValue;

        public ResolveTask(ParseContext parseContext, String str) {
            this.context = parseContext;
            this.referenceValue = str;
        }
    }

    static {
        Class<?>[] clsArr = {Boolean.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class, BigInteger.class, BigDecimal.class, String.class};
        for (int i = 0; i < 17; i++) {
            primitiveClasses.add(clsArr[i]);
        }
    }

    public DefaultJSONParser(String str) {
        this(str, ParserConfig.getGlobalInstance(), JSON.DEFAULT_PARSER_FEATURE);
    }

    private void addContext(ParseContext parseContext) {
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        ParseContext[] parseContextArr = this.contextArray;
        if (parseContextArr == null) {
            this.contextArray = new ParseContext[8];
        } else if (i >= parseContextArr.length) {
            ParseContext[] parseContextArr2 = new ParseContext[(parseContextArr.length * 3) / 2];
            System.arraycopy(parseContextArr, 0, parseContextArr2, 0, parseContextArr.length);
            this.contextArray = parseContextArr2;
        }
        this.contextArray[i] = parseContext;
    }

    public final void accept(int i) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken();
            return;
        }
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(jSONLexer.token()));
    }

    public void acceptType(String str) {
        JSONLexer jSONLexer = this.lexer;
        jSONLexer.nextTokenWithColon();
        if (jSONLexer.token() != 4) {
            throw new JSONException("type not match error");
        }
        if (!str.equals(jSONLexer.stringVal())) {
            throw new JSONException("type not match error");
        }
        jSONLexer.nextToken();
        if (jSONLexer.token() == 16) {
            jSONLexer.nextToken();
        }
    }

    public void addResolveTask(ResolveTask resolveTask) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(resolveTask);
    }

    public void checkListResolve(Collection collection) {
        if (this.resolveStatus == 1) {
            if (!(collection instanceof List)) {
                ResolveTask lastResolveTask = getLastResolveTask();
                lastResolveTask.fieldDeserializer = new ResolveFieldDeserializer(collection);
                lastResolveTask.ownerContext = this.context;
                setResolveStatus(0);
                return;
            }
            int size = collection.size() - 1;
            ResolveTask lastResolveTask2 = getLastResolveTask();
            lastResolveTask2.fieldDeserializer = new ResolveFieldDeserializer(this, (List) collection, size);
            lastResolveTask2.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    public void checkMapResolve(Map map, Object obj) {
        if (this.resolveStatus == 1) {
            ResolveFieldDeserializer resolveFieldDeserializer = new ResolveFieldDeserializer(map, obj);
            ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = resolveFieldDeserializer;
            lastResolveTask.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        JSONLexer jSONLexer = this.lexer;
        try {
            if (jSONLexer.isEnabled(Feature.AutoCloseSource) && jSONLexer.token() != 20) {
                throw new JSONException("not close json text, token : " + JSONToken.name(jSONLexer.token()));
            }
            jSONLexer.close();
        } catch (Throwable th) {
            jSONLexer.close();
            throw th;
        }
    }

    public void config(Feature feature, boolean z) {
        this.lexer.config(feature, z);
    }

    public ParserConfig getConfig() {
        return this.config;
    }

    public ParseContext getContext() {
        return this.context;
    }

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.getLocale());
            this.dateFormat = simpleDateFormat;
            simpleDateFormat.setTimeZone(this.lexer.getTimeZone());
        }
        return this.dateFormat;
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public FieldTypeResolver getFieldTypeResolver() {
        return this.fieldTypeResolver;
    }

    public String getInput() {
        Object obj = this.input;
        return obj instanceof char[] ? new String((char[]) this.input) : obj.toString();
    }

    public ResolveTask getLastResolveTask() {
        List<ResolveTask> list = this.resolveTaskList;
        return list.get(list.size() - 1);
    }

    public JSONLexer getLexer() {
        return this.lexer;
    }

    public Object getObject(String str) {
        for (int i = 0; i < this.contextArrayIndex; i++) {
            if (str.equals(this.contextArray[i].toString())) {
                return this.contextArray[i].object;
            }
        }
        return null;
    }

    public int getResolveStatus() {
        return this.resolveStatus;
    }

    public List<ResolveTask> getResolveTaskList() {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        return this.resolveTaskList;
    }

    public SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public void handleResovleTask(Object obj) {
        FieldInfo fieldInfo;
        List<ResolveTask> list = this.resolveTaskList;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ResolveTask resolveTask = this.resolveTaskList.get(i);
            String str = resolveTask.referenceValue;
            ParseContext parseContext = resolveTask.ownerContext;
            Object obj2 = parseContext != null ? parseContext.object : null;
            Object object = str.startsWith("$") ? getObject(str) : resolveTask.context.object;
            FieldDeserializer fieldDeserializer = resolveTask.fieldDeserializer;
            if (fieldDeserializer != null) {
                if (object != null && object.getClass() == JSONObject.class && (fieldInfo = fieldDeserializer.fieldInfo) != null && !Map.class.isAssignableFrom(fieldInfo.fieldClass)) {
                    object = JSONPath.eval(this.contextArray[0].object, str);
                }
                fieldDeserializer.setValue(obj2, object);
            }
        }
    }

    public boolean isEnabled(Feature feature) {
        return this.lexer.isEnabled(feature);
    }

    public Object parse() {
        return parse(null);
    }

    public <T> List<T> parseArray(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        parseArray((Class<?>) cls, (Collection) arrayList);
        return arrayList;
    }

    public Object parseArrayWithType(Type type) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        if (actualTypeArguments.length != 1) {
            throw new JSONException("not support type " + type);
        }
        Type type2 = actualTypeArguments[0];
        if (type2 instanceof Class) {
            ArrayList arrayList = new ArrayList();
            parseArray((Class<?>) type2, (Collection) arrayList);
            return arrayList;
        }
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type2;
            Type type3 = wildcardType.getUpperBounds()[0];
            if (!Object.class.equals(type3)) {
                ArrayList arrayList2 = new ArrayList();
                parseArray((Class<?>) type3, (Collection) arrayList2);
                return arrayList2;
            }
            if (wildcardType.getLowerBounds().length == 0) {
                return parse();
            }
            throw new JSONException("not support type : " + type);
        }
        if (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length != 1) {
                throw new JSONException("not support : " + typeVariable);
            }
            Type type4 = bounds[0];
            if (type4 instanceof Class) {
                ArrayList arrayList3 = new ArrayList();
                parseArray((Class<?>) type4, (Collection) arrayList3);
                return arrayList3;
            }
        }
        if (type2 instanceof ParameterizedType) {
            ArrayList arrayList4 = new ArrayList();
            parseArray((ParameterizedType) type2, arrayList4);
            return arrayList4;
        }
        throw new JSONException("TODO : " + type);
    }

    public void parseExtra(Object obj, String str) {
        this.lexer.nextTokenWithColon();
        List<ExtraTypeProvider> list = this.extraTypeProviders;
        Type extraType = null;
        if (list != null) {
            Iterator<ExtraTypeProvider> it = list.iterator();
            while (it.hasNext()) {
                extraType = it.next().getExtraType(obj, str);
            }
        }
        Object object = extraType == null ? parse() : parseObject(extraType);
        if (obj instanceof ExtraProcessable) {
            ((ExtraProcessable) obj).processExtra(str, object);
            return;
        }
        List<ExtraProcessor> list2 = this.extraProcessors;
        if (list2 != null) {
            Iterator<ExtraProcessor> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().processExtra(obj, str, object);
            }
        }
        if (this.resolveStatus == 1) {
            this.resolveStatus = 0;
        }
    }

    public Object parseKey() {
        if (this.lexer.token() != 18) {
            return parse(null);
        }
        String strStringVal = this.lexer.stringVal();
        this.lexer.nextToken(16);
        return strStringVal;
    }

    /* JADX WARN: Code duplicated, block: B:139:0x028f  */
    /* JADX WARN: Code duplicated, block: B:142:0x0294 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:163:0x02db A[PHI: r2
      0x02db: PHI (r2v32 java.lang.Object) = (r2v30 java.lang.Object), (r2v34 java.lang.Object), (r2v34 java.lang.Object) binds: [B:162:0x02d9, B:152:0x02c1, B:155:0x02c7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:176:0x0315  */
    /* JADX WARN: Code duplicated, block: B:187:0x034e A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:189:0x0352 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:194:0x035c A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:196:0x0362  */
    /* JADX WARN: Code duplicated, block: B:200:0x036c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:201:0x036e  */
    /* JADX WARN: Code duplicated, block: B:202:0x0371 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:206:0x037a A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:208:0x0389 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:210:0x0394 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:213:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:215:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:217:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:226:0x03d6 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:229:0x03e1 A[Catch: all -> 0x0568, TRY_LEAVE, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:232:0x03f1 A[Catch: all -> 0x0568, TRY_ENTER, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:236:0x0416 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:238:0x0420 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:240:0x0426 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:243:0x0434 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:249:0x044a A[Catch: all -> 0x0568, TRY_ENTER, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:251:0x0452  */
    /* JADX WARN: Code duplicated, block: B:254:0x0459  */
    /* JADX WARN: Code duplicated, block: B:256:0x045d A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:258:0x0462 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:261:0x046a  */
    /* JADX WARN: Code duplicated, block: B:264:0x0478 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:265:0x047d  */
    /* JADX WARN: Code duplicated, block: B:268:0x0482 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:269:0x0484 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:270:0x0489  */
    /* JADX WARN: Code duplicated, block: B:273:0x0492 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:274:0x049d  */
    /* JADX WARN: Code duplicated, block: B:276:0x04a1 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:278:0x04a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:282:0x04ba A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:283:0x04c2 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:285:0x04c7 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:291:0x04dc A[Catch: all -> 0x0568, TRY_ENTER, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:293:0x04e4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:294:0x04e6 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:295:0x04eb A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:298:0x050b A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:300:0x051a A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:306:0x0530 A[Catch: all -> 0x0568, TRY_ENTER, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:324:0x04d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:325:0x04f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:326:0x0529 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:329:0x053b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:337:0x03df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:338:0x0443 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:339:0x0453 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x01d7 A[Catch: all -> 0x0568, TryCatch #1 {all -> 0x0568, blocks: (B:18:0x0060, B:21:0x0073, B:25:0x008d, B:95:0x01d7, B:96:0x01dd, B:98:0x01e8, B:100:0x01f0, B:102:0x0201, B:104:0x020d, B:106:0x021a, B:107:0x021d, B:109:0x0227, B:114:0x0235, B:115:0x023b, B:117:0x0243, B:118:0x0248, B:122:0x0251, B:123:0x0258, B:124:0x0259, B:126:0x0261, B:128:0x0265, B:130:0x026b, B:131:0x026e, B:133:0x0274, B:136:0x0281, B:143:0x0296, B:145:0x029e, B:147:0x02a8, B:149:0x02b9, B:151:0x02bd, B:153:0x02c3, B:156:0x02c8, B:158:0x02cc, B:177:0x0316, B:179:0x031e, B:182:0x0327, B:183:0x032c, B:159:0x02cf, B:161:0x02d7, B:164:0x02dd, B:165:0x02e9, B:168:0x02f2, B:171:0x02f8, B:174:0x02fe, B:175:0x030a, B:184:0x032d, B:185:0x034b, B:187:0x034e, B:189:0x0352, B:191:0x0356, B:194:0x035c, B:198:0x0364, B:202:0x0371, B:206:0x037a, B:208:0x0389, B:210:0x0394, B:211:0x039c, B:212:0x039f, B:224:0x03cb, B:226:0x03d6, B:229:0x03e1, B:232:0x03f1, B:233:0x0411, B:219:0x03af, B:221:0x03b9, B:223:0x03c8, B:222:0x03be, B:236:0x0416, B:238:0x0420, B:240:0x0426, B:241:0x0429, B:243:0x0434, B:244:0x0438, B:246:0x0443, B:249:0x044a, B:252:0x0453, B:253:0x0458, B:256:0x045d, B:258:0x0462, B:262:0x046b, B:264:0x0478, B:266:0x047e, B:269:0x0484, B:271:0x048a, B:273:0x0492, B:276:0x04a1, B:279:0x04a9, B:280:0x04ab, B:282:0x04ba, B:285:0x04c7, B:286:0x04ca, B:288:0x04d2, B:291:0x04dc, B:294:0x04e6, B:295:0x04eb, B:296:0x04f0, B:297:0x050a, B:283:0x04c2, B:298:0x050b, B:300:0x051a, B:301:0x051e, B:303:0x0529, B:306:0x0530, B:309:0x053b, B:310:0x055b, B:28:0x009f, B:29:0x00bd, B:31:0x00c0, B:33:0x00cb, B:35:0x00cf, B:37:0x00d3, B:40:0x00d9, B:47:0x00e8, B:49:0x00f0, B:52:0x0100, B:53:0x0118, B:54:0x0119, B:55:0x011e, B:66:0x0133, B:67:0x0139, B:69:0x0140, B:72:0x014a, B:75:0x0152, B:76:0x016a, B:70:0x0145, B:77:0x016b, B:78:0x0183, B:84:0x018d, B:86:0x0195, B:89:0x01a6, B:90:0x01c6, B:91:0x01c7, B:92:0x01cc, B:93:0x01cd, B:311:0x055c, B:312:0x0561, B:313:0x0562, B:314:0x0567), top: B:319:0x0060, inners: #0, #2 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:232:0x03f1, please report this as an issue */
    public final Object parseObject(Map map, Object obj) {
        Object objScanSymbolUnQuoted;
        boolean z;
        char current;
        boolean z2;
        Map jSONObject;
        ParseContext context;
        Object object;
        String string;
        Type typeResolve;
        JSONArray jSONArray;
        JSONArray array;
        Object obj2;
        char current2;
        String strStringVal;
        Object obj3;
        JSONScanner jSONScanner;
        Object time;
        Object string2;
        ParseContext parseContext;
        ParseContext context2;
        Object obj4;
        Object obj5;
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        }
        if (jSONLexer.token() == 13) {
            jSONLexer.nextToken();
            return map;
        }
        if (jSONLexer.token() != 12 && jSONLexer.token() != 16) {
            throw new JSONException("syntax error, expect {, actual " + jSONLexer.tokenName() + ", " + jSONLexer.info());
        }
        ParseContext parseContext2 = this.context;
        boolean z3 = false;
        while (true) {
            try {
                jSONLexer.skipWhitespace();
                char current3 = jSONLexer.getCurrent();
                if (jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (current3 == ',') {
                        jSONLexer.next();
                        jSONLexer.skipWhitespace();
                        current3 = jSONLexer.getCurrent();
                    }
                }
                boolean z4 = true;
                if (current3 == '\"') {
                    objScanSymbolUnQuoted = jSONLexer.scanSymbol(this.symbolTable, '\"');
                    jSONLexer.skipWhitespace();
                    if (jSONLexer.getCurrent() != ':') {
                        throw new JSONException("expect ':' at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                    }
                } else {
                    if (current3 == '}') {
                        jSONLexer.next();
                        jSONLexer.resetStringPosition();
                        jSONLexer.nextToken();
                        if (!z3) {
                            ParseContext parseContext3 = this.context;
                            if (parseContext3 != null && obj == parseContext3.fieldName && map == parseContext3.object) {
                                parseContext2 = parseContext3;
                            } else {
                                ParseContext context3 = setContext(map, obj);
                                if (parseContext2 == null) {
                                    parseContext2 = context3;
                                }
                            }
                        }
                        setContext(parseContext2);
                        return map;
                    }
                    if (current3 == '\'') {
                        if (!jSONLexer.isEnabled(Feature.AllowSingleQuotes)) {
                            throw new JSONException("syntax error");
                        }
                        objScanSymbolUnQuoted = jSONLexer.scanSymbol(this.symbolTable, '\'');
                        jSONLexer.skipWhitespace();
                        if (jSONLexer.getCurrent() != ':') {
                            throw new JSONException("expect ':' at " + jSONLexer.pos());
                        }
                    } else {
                        if (current3 == 26) {
                            throw new JSONException("syntax error");
                        }
                        if (current3 == ',') {
                            throw new JSONException("syntax error");
                        }
                        if ((current3 < '0' || current3 > '9') && current3 != '-') {
                            if (current3 == '{' || current3 == '[') {
                                jSONLexer.nextToken();
                                objScanSymbolUnQuoted = parse();
                                z = true;
                            } else {
                                if (!jSONLexer.isEnabled(Feature.AllowUnQuotedFieldNames)) {
                                    throw new JSONException("syntax error");
                                }
                                objScanSymbolUnQuoted = jSONLexer.scanSymbolUnQuoted(this.symbolTable);
                                jSONLexer.skipWhitespace();
                                char current4 = jSONLexer.getCurrent();
                                if (current4 != ':') {
                                    throw new JSONException("expect ':' at " + jSONLexer.pos() + ", actual " + current4);
                                }
                            }
                            if (!z) {
                                jSONLexer.next();
                                jSONLexer.skipWhitespace();
                            }
                            current = jSONLexer.getCurrent();
                            jSONLexer.resetStringPosition();
                            if (objScanSymbolUnQuoted != JSON.DEFAULT_TYPE_KEY && !jSONLexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                                String strScanSymbol = jSONLexer.scanSymbol(this.symbolTable, '\"');
                                Class<?> clsCheckAutoType = this.config.checkAutoType(strScanSymbol, null);
                                if (clsCheckAutoType != null) {
                                    jSONLexer.nextToken(16);
                                    if (jSONLexer.token() == 13) {
                                        jSONLexer.nextToken(16);
                                        try {
                                            ObjectDeserializer deserializer = this.config.getDeserializer(clsCheckAutoType);
                                            Object objCreateInstance = deserializer instanceof JavaBeanDeserializer ? ((JavaBeanDeserializer) deserializer).createInstance(this, clsCheckAutoType) : null;
                                            if (objCreateInstance == null) {
                                                if (clsCheckAutoType == Cloneable.class) {
                                                    objCreateInstance = new HashMap();
                                                } else {
                                                    objCreateInstance = "java.util.Collections$EmptyMap".equals(strScanSymbol) ? Collections.emptyMap() : clsCheckAutoType.newInstance();
                                                }
                                            }
                                            setContext(parseContext2);
                                            return objCreateInstance;
                                        } catch (Exception e2) {
                                            throw new JSONException("create instance error", e2);
                                        }
                                    }
                                    setResolveStatus(2);
                                    ParseContext parseContext4 = this.context;
                                    if (parseContext4 != null && !(obj instanceof Integer) && !(parseContext4.fieldName instanceof Integer)) {
                                        popContext();
                                    }
                                    if (map.size() <= 0) {
                                        Object objDeserialze = this.config.getDeserializer(clsCheckAutoType).deserialze(this, clsCheckAutoType, obj);
                                        setContext(parseContext2);
                                        return objDeserialze;
                                    }
                                    Object objCast = TypeUtils.cast((Object) map, (Class<Object>) clsCheckAutoType, this.config);
                                    parseObject(objCast);
                                    setContext(parseContext2);
                                    return objCast;
                                }
                                map.put(JSON.DEFAULT_TYPE_KEY, strScanSymbol);
                            } else {
                                if (objScanSymbolUnQuoted != "$ref" && parseContext2 != null && !jSONLexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                                    jSONLexer.nextToken(4);
                                    if (jSONLexer.token() != 4) {
                                        throw new JSONException("illegal ref, " + JSONToken.name(jSONLexer.token()));
                                    }
                                    String strStringVal2 = jSONLexer.stringVal();
                                    jSONLexer.nextToken(13);
                                    if ("@".equals(strStringVal2)) {
                                        ParseContext parseContext5 = this.context;
                                        if (parseContext5 != null) {
                                            obj5 = parseContext5.object;
                                            if ((obj5 instanceof Object[]) || (obj5 instanceof Collection)) {
                                                obj4 = obj5;
                                            } else {
                                                ParseContext parseContext6 = parseContext5.parent;
                                                if (parseContext6 != null) {
                                                    obj4 = parseContext6.object;
                                                } else {
                                                    obj4 = null;
                                                }
                                            }
                                        } else {
                                            obj4 = null;
                                        }
                                    } else {
                                        if ("..".equals(strStringVal2)) {
                                            obj5 = parseContext2.object;
                                            if (obj5 != null) {
                                                obj4 = obj5;
                                            } else {
                                                addResolveTask(new ResolveTask(parseContext2, strStringVal2));
                                                setResolveStatus(1);
                                            }
                                        } else if ("$".equals(strStringVal2)) {
                                            ParseContext parseContext7 = parseContext2;
                                            while (true) {
                                                ParseContext parseContext8 = parseContext7.parent;
                                                if (parseContext8 == null) {
                                                    break;
                                                }
                                                parseContext7 = parseContext8;
                                            }
                                            Object obj6 = parseContext7.object;
                                            if (obj6 != null) {
                                                obj4 = obj6;
                                            } else {
                                                addResolveTask(new ResolveTask(parseContext7, strStringVal2));
                                                setResolveStatus(1);
                                            }
                                        } else {
                                            addResolveTask(new ResolveTask(parseContext2, strStringVal2));
                                            setResolveStatus(1);
                                        }
                                        obj4 = null;
                                    }
                                    if (jSONLexer.token() != 13) {
                                        throw new JSONException("syntax error");
                                    }
                                    jSONLexer.nextToken(16);
                                    setContext(parseContext2);
                                    return obj4;
                                }
                                if (!z3) {
                                    parseContext = this.context;
                                    if (parseContext == null && obj == parseContext.fieldName && map == parseContext.object) {
                                        parseContext2 = parseContext;
                                    } else {
                                        context2 = setContext(map, obj);
                                        if (parseContext2 == null) {
                                            parseContext2 = context2;
                                        }
                                        z3 = true;
                                    }
                                }
                                if (map.getClass() == JSONObject.class) {
                                    if (objScanSymbolUnQuoted == null) {
                                        string2 = BuildConfig.COMMON_MODULE_COMMIT_ID;
                                    } else {
                                        string2 = objScanSymbolUnQuoted.toString();
                                    }
                                    objScanSymbolUnQuoted = string2;
                                }
                                if (current == '\"') {
                                    jSONLexer.scanString();
                                    strStringVal = jSONLexer.stringVal();
                                    if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                                        jSONScanner = new JSONScanner(strStringVal);
                                        if (jSONScanner.scanISO8601DateIfMatch()) {
                                            obj3 = strStringVal;
                                            time = strStringVal;
                                            time = jSONScanner.getCalendar().getTime();
                                        }
                                        obj3 = strStringVal;
                                        time = strStringVal;
                                        jSONScanner.close();
                                        obj3 = time;
                                    }
                                    obj3 = strStringVal;
                                    map.put(objScanSymbolUnQuoted, obj3);
                                    obj2 = obj3;
                                } else if ((current < '0' && current <= '9') || current == '-') {
                                    jSONLexer.scanNumber();
                                    Number numberIntegerValue = jSONLexer.token() == 2 ? jSONLexer.integerValue() : jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
                                    map.put(objScanSymbolUnQuoted, numberIntegerValue);
                                    obj2 = numberIntegerValue;
                                } else if (current == '[') {
                                    jSONLexer.nextToken();
                                    jSONArray = new JSONArray();
                                    if (obj != null) {
                                        obj.getClass();
                                    }
                                    if (obj == null) {
                                        setContext(parseContext2);
                                    }
                                    parseArray(jSONArray, objScanSymbolUnQuoted);
                                    array = jSONArray;
                                    if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                        array = jSONArray.toArray();
                                    }
                                    map.put(objScanSymbolUnQuoted, array);
                                    if (jSONLexer.token() == 13) {
                                        jSONLexer.nextToken();
                                        setContext(parseContext2);
                                        return map;
                                    }
                                    if (jSONLexer.token() != 16) {
                                        throw new JSONException("syntax error");
                                    }
                                } else if (current == '{') {
                                    jSONLexer.nextToken();
                                    if (obj == null && obj.getClass() == Integer.class) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                                    if (z2) {
                                        context = null;
                                    } else {
                                        context = setContext(parseContext2, jSONObject, objScanSymbolUnQuoted);
                                    }
                                    if (this.fieldTypeResolver == null) {
                                        object = null;
                                        z4 = false;
                                    } else {
                                        if (objScanSymbolUnQuoted != null) {
                                            string = objScanSymbolUnQuoted.toString();
                                        } else {
                                            string = null;
                                        }
                                        typeResolve = this.fieldTypeResolver.resolve(map, string);
                                        if (typeResolve != null) {
                                            object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                                        } else {
                                            object = null;
                                            z4 = false;
                                        }
                                    }
                                    if (!z4) {
                                        object = parseObject(jSONObject, objScanSymbolUnQuoted);
                                    }
                                    if (context != null && jSONObject != object) {
                                        context.object = map;
                                    }
                                    checkMapResolve(map, objScanSymbolUnQuoted.toString());
                                    if (map.getClass() == JSONObject.class) {
                                        map.put(objScanSymbolUnQuoted.toString(), object);
                                    } else {
                                        map.put(objScanSymbolUnQuoted, object);
                                    }
                                    if (z2) {
                                        setContext(object, objScanSymbolUnQuoted);
                                    }
                                    if (jSONLexer.token() == 13) {
                                        jSONLexer.nextToken();
                                        setContext(parseContext2);
                                        setContext(parseContext2);
                                        return map;
                                    }
                                    if (jSONLexer.token() != 16) {
                                        throw new JSONException("syntax error, " + jSONLexer.tokenName());
                                    }
                                    if (z2) {
                                        popContext();
                                    } else {
                                        setContext(parseContext2);
                                    }
                                } else {
                                    jSONLexer.nextToken();
                                    Object obj7 = parse();
                                    if (map.getClass() == JSONObject.class) {
                                        objScanSymbolUnQuoted = objScanSymbolUnQuoted.toString();
                                    }
                                    map.put(objScanSymbolUnQuoted, obj7);
                                    if (jSONLexer.token() == 13) {
                                        jSONLexer.nextToken();
                                        setContext(parseContext2);
                                        return map;
                                    }
                                    if (jSONLexer.token() != 16) {
                                        throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                                    }
                                }
                                jSONLexer.skipWhitespace();
                                current2 = jSONLexer.getCurrent();
                                if (current2 != ',') {
                                    if (current2 == '}') {
                                        jSONLexer.next();
                                        jSONLexer.resetStringPosition();
                                        jSONLexer.nextToken();
                                        setContext(obj2, objScanSymbolUnQuoted);
                                        setContext(parseContext2);
                                        return map;
                                    }
                                    throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                                }
                                jSONLexer.next();
                            }
                        } else {
                            jSONLexer.resetStringPosition();
                            jSONLexer.scanNumber();
                            try {
                                objScanSymbolUnQuoted = jSONLexer.token() == 2 ? jSONLexer.integerValue() : jSONLexer.decimalValue(true);
                                if (jSONLexer.getCurrent() != ':') {
                                    throw new JSONException("parse number key error" + jSONLexer.info());
                                }
                            } catch (NumberFormatException unused) {
                                throw new JSONException("parse number key error" + jSONLexer.info());
                            }
                        }
                    }
                }
                z = false;
                if (!z) {
                    jSONLexer.next();
                    jSONLexer.skipWhitespace();
                }
                current = jSONLexer.getCurrent();
                jSONLexer.resetStringPosition();
                if (objScanSymbolUnQuoted != JSON.DEFAULT_TYPE_KEY) {
                    if (objScanSymbolUnQuoted != "$ref") {
                    }
                    if (!z3) {
                        parseContext = this.context;
                        if (parseContext == null) {
                            context2 = setContext(map, obj);
                            if (parseContext2 == null) {
                                parseContext2 = context2;
                            }
                            z3 = true;
                        } else {
                            context2 = setContext(map, obj);
                            if (parseContext2 == null) {
                                parseContext2 = context2;
                            }
                            z3 = true;
                        }
                    }
                    if (map.getClass() == JSONObject.class) {
                        if (objScanSymbolUnQuoted == null) {
                            string2 = BuildConfig.COMMON_MODULE_COMMIT_ID;
                        } else {
                            string2 = objScanSymbolUnQuoted.toString();
                        }
                        objScanSymbolUnQuoted = string2;
                    }
                    if (current == '\"') {
                        jSONLexer.scanString();
                        strStringVal = jSONLexer.stringVal();
                        if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                            jSONScanner = new JSONScanner(strStringVal);
                            if (jSONScanner.scanISO8601DateIfMatch()) {
                                obj3 = strStringVal;
                                time = strStringVal;
                                time = jSONScanner.getCalendar().getTime();
                            }
                            obj3 = strStringVal;
                            time = strStringVal;
                            jSONScanner.close();
                            obj3 = time;
                        }
                        obj3 = strStringVal;
                        map.put(objScanSymbolUnQuoted, obj3);
                        obj2 = obj3;
                    } else if (current < '0') {
                        if (current == '[') {
                            jSONLexer.nextToken();
                            jSONArray = new JSONArray();
                            if (obj != null) {
                                obj.getClass();
                            }
                            if (obj == null) {
                                setContext(parseContext2);
                            }
                            parseArray(jSONArray, objScanSymbolUnQuoted);
                            array = jSONArray;
                            if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                array = jSONArray.toArray();
                            }
                            map.put(objScanSymbolUnQuoted, array);
                            if (jSONLexer.token() == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext2);
                                return map;
                            }
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error");
                            }
                        } else if (current == '{') {
                            jSONLexer.nextToken();
                            if (obj == null) {
                                z2 = false;
                            } else {
                                z2 = false;
                            }
                            jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                            if (z2) {
                                context = setContext(parseContext2, jSONObject, objScanSymbolUnQuoted);
                            } else {
                                context = null;
                            }
                            if (this.fieldTypeResolver == null) {
                                object = null;
                                z4 = false;
                            } else {
                                if (objScanSymbolUnQuoted != null) {
                                    string = objScanSymbolUnQuoted.toString();
                                } else {
                                    string = null;
                                }
                                typeResolve = this.fieldTypeResolver.resolve(map, string);
                                if (typeResolve != null) {
                                    object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                                } else {
                                    object = null;
                                    z4 = false;
                                }
                            }
                            if (!z4) {
                                object = parseObject(jSONObject, objScanSymbolUnQuoted);
                            }
                            if (context != null) {
                                context.object = map;
                            }
                            checkMapResolve(map, objScanSymbolUnQuoted.toString());
                            if (map.getClass() == JSONObject.class) {
                                map.put(objScanSymbolUnQuoted.toString(), object);
                            } else {
                                map.put(objScanSymbolUnQuoted, object);
                            }
                            if (z2) {
                                setContext(object, objScanSymbolUnQuoted);
                            }
                            if (jSONLexer.token() == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext2);
                                setContext(parseContext2);
                                return map;
                            }
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error, " + jSONLexer.tokenName());
                            }
                            if (z2) {
                                popContext();
                            } else {
                                setContext(parseContext2);
                            }
                        } else {
                            jSONLexer.nextToken();
                            Object obj8 = parse();
                            if (map.getClass() == JSONObject.class) {
                                objScanSymbolUnQuoted = objScanSymbolUnQuoted.toString();
                            }
                            map.put(objScanSymbolUnQuoted, obj8);
                            if (jSONLexer.token() == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext2);
                                return map;
                            }
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                            }
                        }
                    } else if (current == '[') {
                        jSONLexer.nextToken();
                        jSONArray = new JSONArray();
                        if (obj != null) {
                            obj.getClass();
                        }
                        if (obj == null) {
                            setContext(parseContext2);
                        }
                        parseArray(jSONArray, objScanSymbolUnQuoted);
                        array = jSONArray;
                        if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                            array = jSONArray.toArray();
                        }
                        map.put(objScanSymbolUnQuoted, array);
                        if (jSONLexer.token() == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext2);
                            return map;
                        }
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error");
                        }
                    } else if (current == '{') {
                        jSONLexer.nextToken();
                        if (obj == null) {
                            z2 = false;
                        } else {
                            z2 = false;
                        }
                        jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                        if (z2) {
                            context = setContext(parseContext2, jSONObject, objScanSymbolUnQuoted);
                        } else {
                            context = null;
                        }
                        if (this.fieldTypeResolver == null) {
                            object = null;
                            z4 = false;
                        } else {
                            if (objScanSymbolUnQuoted != null) {
                                string = objScanSymbolUnQuoted.toString();
                            } else {
                                string = null;
                            }
                            typeResolve = this.fieldTypeResolver.resolve(map, string);
                            if (typeResolve != null) {
                                object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                            } else {
                                object = null;
                                z4 = false;
                            }
                        }
                        if (!z4) {
                            object = parseObject(jSONObject, objScanSymbolUnQuoted);
                        }
                        if (context != null) {
                            context.object = map;
                        }
                        checkMapResolve(map, objScanSymbolUnQuoted.toString());
                        if (map.getClass() == JSONObject.class) {
                            map.put(objScanSymbolUnQuoted.toString(), object);
                        } else {
                            map.put(objScanSymbolUnQuoted, object);
                        }
                        if (z2) {
                            setContext(object, objScanSymbolUnQuoted);
                        }
                        if (jSONLexer.token() == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext2);
                            setContext(parseContext2);
                            return map;
                        }
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error, " + jSONLexer.tokenName());
                        }
                        if (z2) {
                            popContext();
                        } else {
                            setContext(parseContext2);
                        }
                    } else {
                        jSONLexer.nextToken();
                        Object obj9 = parse();
                        if (map.getClass() == JSONObject.class) {
                            objScanSymbolUnQuoted = objScanSymbolUnQuoted.toString();
                        }
                        map.put(objScanSymbolUnQuoted, obj9);
                        if (jSONLexer.token() == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext2);
                            return map;
                        }
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                        }
                    }
                    jSONLexer.skipWhitespace();
                    current2 = jSONLexer.getCurrent();
                    if (current2 != ',') {
                        if (current2 == '}') {
                            jSONLexer.next();
                            jSONLexer.resetStringPosition();
                            jSONLexer.nextToken();
                            setContext(obj2, objScanSymbolUnQuoted);
                            setContext(parseContext2);
                            return map;
                        }
                        throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                    }
                    jSONLexer.next();
                } else {
                    if (objScanSymbolUnQuoted != "$ref") {
                    }
                    if (!z3) {
                        parseContext = this.context;
                        if (parseContext == null) {
                            context2 = setContext(map, obj);
                            if (parseContext2 == null) {
                                parseContext2 = context2;
                            }
                            z3 = true;
                        } else {
                            context2 = setContext(map, obj);
                            if (parseContext2 == null) {
                                parseContext2 = context2;
                            }
                            z3 = true;
                        }
                    }
                    if (map.getClass() == JSONObject.class) {
                        if (objScanSymbolUnQuoted == null) {
                            string2 = BuildConfig.COMMON_MODULE_COMMIT_ID;
                        } else {
                            string2 = objScanSymbolUnQuoted.toString();
                        }
                        objScanSymbolUnQuoted = string2;
                    }
                    if (current == '\"') {
                        jSONLexer.scanString();
                        strStringVal = jSONLexer.stringVal();
                        if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                            jSONScanner = new JSONScanner(strStringVal);
                            if (jSONScanner.scanISO8601DateIfMatch()) {
                                obj3 = strStringVal;
                                time = strStringVal;
                                time = jSONScanner.getCalendar().getTime();
                            }
                            obj3 = strStringVal;
                            time = strStringVal;
                            jSONScanner.close();
                            obj3 = time;
                        }
                        obj3 = strStringVal;
                        map.put(objScanSymbolUnQuoted, obj3);
                        obj2 = obj3;
                    } else if (current < '0') {
                        if (current == '[') {
                            jSONLexer.nextToken();
                            jSONArray = new JSONArray();
                            if (obj != null) {
                                obj.getClass();
                            }
                            if (obj == null) {
                                setContext(parseContext2);
                            }
                            parseArray(jSONArray, objScanSymbolUnQuoted);
                            array = jSONArray;
                            if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                array = jSONArray.toArray();
                            }
                            map.put(objScanSymbolUnQuoted, array);
                            if (jSONLexer.token() == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext2);
                                return map;
                            }
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error");
                            }
                        } else if (current == '{') {
                            jSONLexer.nextToken();
                            if (obj == null) {
                                z2 = false;
                            } else {
                                z2 = false;
                            }
                            jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                            if (z2) {
                                context = setContext(parseContext2, jSONObject, objScanSymbolUnQuoted);
                            } else {
                                context = null;
                            }
                            if (this.fieldTypeResolver == null) {
                                object = null;
                                z4 = false;
                            } else {
                                if (objScanSymbolUnQuoted != null) {
                                    string = objScanSymbolUnQuoted.toString();
                                } else {
                                    string = null;
                                }
                                typeResolve = this.fieldTypeResolver.resolve(map, string);
                                if (typeResolve != null) {
                                    object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                                } else {
                                    object = null;
                                    z4 = false;
                                }
                            }
                            if (!z4) {
                                object = parseObject(jSONObject, objScanSymbolUnQuoted);
                            }
                            if (context != null) {
                                context.object = map;
                            }
                            checkMapResolve(map, objScanSymbolUnQuoted.toString());
                            if (map.getClass() == JSONObject.class) {
                                map.put(objScanSymbolUnQuoted.toString(), object);
                            } else {
                                map.put(objScanSymbolUnQuoted, object);
                            }
                            if (z2) {
                                setContext(object, objScanSymbolUnQuoted);
                            }
                            if (jSONLexer.token() == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext2);
                                setContext(parseContext2);
                                return map;
                            }
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error, " + jSONLexer.tokenName());
                            }
                            if (z2) {
                                popContext();
                            } else {
                                setContext(parseContext2);
                            }
                        } else {
                            jSONLexer.nextToken();
                            Object obj10 = parse();
                            if (map.getClass() == JSONObject.class) {
                                objScanSymbolUnQuoted = objScanSymbolUnQuoted.toString();
                            }
                            map.put(objScanSymbolUnQuoted, obj10);
                            if (jSONLexer.token() == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext2);
                                return map;
                            }
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                            }
                        }
                    } else if (current == '[') {
                        jSONLexer.nextToken();
                        jSONArray = new JSONArray();
                        if (obj != null) {
                            obj.getClass();
                        }
                        if (obj == null) {
                            setContext(parseContext2);
                        }
                        parseArray(jSONArray, objScanSymbolUnQuoted);
                        array = jSONArray;
                        if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                            array = jSONArray.toArray();
                        }
                        map.put(objScanSymbolUnQuoted, array);
                        if (jSONLexer.token() == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext2);
                            return map;
                        }
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error");
                        }
                    } else if (current == '{') {
                        jSONLexer.nextToken();
                        if (obj == null) {
                            z2 = false;
                        } else {
                            z2 = false;
                        }
                        jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                        if (z2) {
                            context = setContext(parseContext2, jSONObject, objScanSymbolUnQuoted);
                        } else {
                            context = null;
                        }
                        if (this.fieldTypeResolver == null) {
                            object = null;
                            z4 = false;
                        } else {
                            if (objScanSymbolUnQuoted != null) {
                                string = objScanSymbolUnQuoted.toString();
                            } else {
                                string = null;
                            }
                            typeResolve = this.fieldTypeResolver.resolve(map, string);
                            if (typeResolve != null) {
                                object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                            } else {
                                object = null;
                                z4 = false;
                            }
                        }
                        if (!z4) {
                            object = parseObject(jSONObject, objScanSymbolUnQuoted);
                        }
                        if (context != null) {
                            context.object = map;
                        }
                        checkMapResolve(map, objScanSymbolUnQuoted.toString());
                        if (map.getClass() == JSONObject.class) {
                            map.put(objScanSymbolUnQuoted.toString(), object);
                        } else {
                            map.put(objScanSymbolUnQuoted, object);
                        }
                        if (z2) {
                            setContext(object, objScanSymbolUnQuoted);
                        }
                        if (jSONLexer.token() == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext2);
                            setContext(parseContext2);
                            return map;
                        }
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error, " + jSONLexer.tokenName());
                        }
                        if (z2) {
                            popContext();
                        } else {
                            setContext(parseContext2);
                        }
                    } else {
                        jSONLexer.nextToken();
                        Object obj11 = parse();
                        if (map.getClass() == JSONObject.class) {
                            objScanSymbolUnQuoted = objScanSymbolUnQuoted.toString();
                        }
                        map.put(objScanSymbolUnQuoted, obj11);
                        if (jSONLexer.token() == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext2);
                            return map;
                        }
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                        }
                    }
                    jSONLexer.skipWhitespace();
                    current2 = jSONLexer.getCurrent();
                    if (current2 != ',') {
                        if (current2 == '}') {
                            jSONLexer.next();
                            jSONLexer.resetStringPosition();
                            jSONLexer.nextToken();
                            setContext(obj2, objScanSymbolUnQuoted);
                            setContext(parseContext2);
                            return map;
                        }
                        throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                    }
                    jSONLexer.next();
                }
            } catch (Throwable th) {
                setContext(parseContext2);
                throw th;
            }
        }
    }

    public void popContext() {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = this.context.parent;
        int i = this.contextArrayIndex;
        if (i <= 0) {
            return;
        }
        int i2 = i - 1;
        this.contextArrayIndex = i2;
        this.contextArray[i2] = null;
    }

    public void setConfig(ParserConfig parserConfig) {
        this.config = parserConfig;
    }

    public void setContext(ParseContext parseContext) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = parseContext;
    }

    public void setDateFomrat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public void setDateFormat(String str) {
        this.dateFormatPattern = str;
        this.dateFormat = null;
    }

    public void setFieldTypeResolver(FieldTypeResolver fieldTypeResolver) {
        this.fieldTypeResolver = fieldTypeResolver;
    }

    public void setResolveStatus(int i) {
        this.resolveStatus = i;
    }

    public void throwException(int i) {
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(this.lexer.token()));
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig) {
        this(str, new JSONScanner(str, JSON.DEFAULT_PARSER_FEATURE), parserConfig);
    }

    public Object parse(Object obj) {
        JSONLexer jSONLexer = this.lexer;
        int i = jSONLexer.token();
        if (i == 2) {
            Number numberIntegerValue = jSONLexer.integerValue();
            jSONLexer.nextToken();
            return numberIntegerValue;
        }
        if (i == 3) {
            Number numberDecimalValue = jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
            jSONLexer.nextToken();
            return numberDecimalValue;
        }
        if (i == 4) {
            String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                JSONScanner jSONScanner = new JSONScanner(strStringVal);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        return jSONScanner.getCalendar().getTime();
                    }
                } finally {
                    jSONScanner.close();
                }
            }
            return strStringVal;
        }
        if (i == 12) {
            return parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), obj);
        }
        if (i == 14) {
            JSONArray jSONArray = new JSONArray();
            parseArray(jSONArray, obj);
            return jSONLexer.isEnabled(Feature.UseObjectArray) ? jSONArray.toArray() : jSONArray;
        }
        if (i == 26) {
            byte[] bArrBytesValue = jSONLexer.bytesValue();
            jSONLexer.nextToken();
            return bArrBytesValue;
        }
        switch (i) {
            case 6:
                jSONLexer.nextToken();
                return Boolean.TRUE;
            case 7:
                jSONLexer.nextToken();
                return Boolean.FALSE;
            case 8:
                jSONLexer.nextToken();
                return null;
            case 9:
                jSONLexer.nextToken(18);
                if (jSONLexer.token() != 18) {
                    throw new JSONException("syntax error");
                }
                jSONLexer.nextToken(10);
                accept(10);
                long jLongValue = jSONLexer.integerValue().longValue();
                accept(2);
                accept(11);
                return new Date(jLongValue);
            default:
                switch (i) {
                    case 20:
                        if (jSONLexer.isBlankInput()) {
                            return null;
                        }
                        throw new JSONException("unterminated json string, " + jSONLexer.info());
                    case 21:
                        jSONLexer.nextToken();
                        HashSet hashSet = new HashSet();
                        parseArray(hashSet, obj);
                        return hashSet;
                    case 22:
                        jSONLexer.nextToken();
                        TreeSet treeSet = new TreeSet();
                        parseArray(treeSet, obj);
                        return treeSet;
                    case 23:
                        jSONLexer.nextToken();
                        return null;
                    default:
                        throw new JSONException("syntax error, " + jSONLexer.info());
                }
        }
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig, int i) {
        this(str, new JSONScanner(str, i), parserConfig);
    }

    public void parseArray(Class<?> cls, Collection collection) {
        parseArray((Type) cls, collection);
    }

    public ParseContext setContext(Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        return setContext(this.context, obj, obj2);
    }

    public DefaultJSONParser(char[] cArr, int i, ParserConfig parserConfig, int i2) {
        this(cArr, new JSONScanner(cArr, i, i2), parserConfig);
    }

    public void parseArray(Type type, Collection collection) {
        parseArray(type, collection, null);
    }

    public DefaultJSONParser(JSONLexer jSONLexer) {
        this(jSONLexer, ParserConfig.getGlobalInstance());
    }

    public void parseArray(Type type, Collection collection, Object obj) {
        ObjectDeserializer deserializer;
        int i = this.lexer.token();
        if (i == 21 || i == 22) {
            this.lexer.nextToken();
            i = this.lexer.token();
        }
        if (i == 14) {
            if (Integer.TYPE != type) {
                if (String.class == type) {
                    deserializer = StringCodec.instance;
                    this.lexer.nextToken(4);
                } else {
                    deserializer = this.config.getDeserializer(type);
                    this.lexer.nextToken(deserializer.getFastMatchToken());
                }
            } else {
                deserializer = IntegerCodec.instance;
                this.lexer.nextToken(2);
            }
            ParseContext parseContext = this.context;
            setContext(collection, obj);
            int i2 = 0;
            while (true) {
                try {
                    if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                        while (this.lexer.token() == 16) {
                            this.lexer.nextToken();
                        }
                    }
                    if (this.lexer.token() == 15) {
                        setContext(parseContext);
                        this.lexer.nextToken(16);
                        return;
                    }
                    Object objDeserialze = null;
                    if (Integer.TYPE != type) {
                        if (String.class == type) {
                            if (this.lexer.token() == 4) {
                                objDeserialze = this.lexer.stringVal();
                                this.lexer.nextToken(16);
                            } else {
                                Object obj2 = parse();
                                if (obj2 != null) {
                                    objDeserialze = obj2.toString();
                                }
                            }
                            collection.add(objDeserialze);
                        } else {
                            if (this.lexer.token() == 8) {
                                this.lexer.nextToken();
                            } else {
                                objDeserialze = deserializer.deserialze(this, type, Integer.valueOf(i2));
                            }
                            collection.add(objDeserialze);
                            checkListResolve(collection);
                        }
                    } else {
                        collection.add(IntegerCodec.instance.deserialze(this, null, null));
                    }
                    if (this.lexer.token() == 16) {
                        this.lexer.nextToken(deserializer.getFastMatchToken());
                    }
                    i2++;
                } catch (Throwable th) {
                    setContext(parseContext);
                    throw th;
                }
            }
        } else {
            throw new JSONException("exepct '[', but " + JSONToken.name(i) + ", " + this.lexer.info());
        }
    }

    public ParseContext setContext(ParseContext parseContext, Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        ParseContext parseContext2 = new ParseContext(parseContext, obj, obj2);
        this.context = parseContext2;
        addContext(parseContext2);
        return this.context;
    }

    public DefaultJSONParser(JSONLexer jSONLexer, ParserConfig parserConfig) {
        this((Object) null, jSONLexer, parserConfig);
    }

    public final void accept(int i, int i2) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken(i2);
        } else {
            throwException(i);
        }
    }

    public DefaultJSONParser(Object obj, JSONLexer jSONLexer, ParserConfig parserConfig) {
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.autoTypeAccept = null;
        this.lexer = jSONLexer;
        this.input = obj;
        this.config = parserConfig;
        this.symbolTable = parserConfig.symbolTable;
        char current = jSONLexer.getCurrent();
        if (current == '{') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 12;
        } else if (current == '[') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 14;
        } else {
            jSONLexer.nextToken();
        }
    }

    public Object[] parseArray(Type[] typeArr) {
        Object objCast;
        Class<?> componentType;
        boolean zIsArray;
        int i = 8;
        if (this.lexer.token() == 8) {
            this.lexer.nextToken(16);
            return null;
        }
        int i2 = 14;
        if (this.lexer.token() == 14) {
            Object[] objArr = new Object[typeArr.length];
            if (typeArr.length == 0) {
                this.lexer.nextToken(15);
                if (this.lexer.token() == 15) {
                    this.lexer.nextToken(16);
                    return new Object[0];
                }
                throw new JSONException("syntax error");
            }
            this.lexer.nextToken(2);
            int i3 = 0;
            while (i3 < typeArr.length) {
                if (this.lexer.token() == i) {
                    this.lexer.nextToken(16);
                    objCast = null;
                } else {
                    Type type = typeArr[i3];
                    if (type != Integer.TYPE && type != Integer.class) {
                        if (type == String.class) {
                            if (this.lexer.token() == 4) {
                                objCast = this.lexer.stringVal();
                                this.lexer.nextToken(16);
                            } else {
                                objCast = TypeUtils.cast(parse(), type, this.config);
                            }
                        } else {
                            if (i3 == typeArr.length - 1 && (type instanceof Class)) {
                                Class cls = (Class) type;
                                zIsArray = cls.isArray();
                                componentType = cls.getComponentType();
                            } else {
                                componentType = null;
                                zIsArray = false;
                            }
                            if (zIsArray && this.lexer.token() != i2) {
                                ArrayList arrayList = new ArrayList();
                                ObjectDeserializer deserializer = this.config.getDeserializer(componentType);
                                int fastMatchToken = deserializer.getFastMatchToken();
                                if (this.lexer.token() != 15) {
                                    while (true) {
                                        arrayList.add(deserializer.deserialze(this, type, null));
                                        if (this.lexer.token() != 16) {
                                            break;
                                        }
                                        this.lexer.nextToken(fastMatchToken);
                                    }
                                    if (this.lexer.token() != 15) {
                                        throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                                    }
                                }
                                objCast = TypeUtils.cast(arrayList, type, this.config);
                            } else {
                                objCast = this.config.getDeserializer(type).deserialze(this, type, null);
                            }
                        }
                    } else if (this.lexer.token() == 2) {
                        objCast = Integer.valueOf(this.lexer.intValue());
                        this.lexer.nextToken(16);
                    } else {
                        objCast = TypeUtils.cast(parse(), type, this.config);
                    }
                }
                objArr[i3] = objCast;
                if (this.lexer.token() == 15) {
                    break;
                }
                if (this.lexer.token() == 16) {
                    if (i3 == typeArr.length - 1) {
                        this.lexer.nextToken(15);
                    } else {
                        this.lexer.nextToken(2);
                    }
                    i3++;
                    i = 8;
                    i2 = 14;
                } else {
                    throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                }
            }
            if (this.lexer.token() == 15) {
                this.lexer.nextToken(16);
                return objArr;
            }
            throw new JSONException("syntax error");
        }
        throw new JSONException("syntax error : " + this.lexer.tokenName());
    }

    public Object parse(PropertyProcessable propertyProcessable, Object obj) {
        String strScanSymbolUnQuoted;
        int i = 0;
        if (this.lexer.token() != 12) {
            String str = "syntax error, expect {, actual " + this.lexer.tokenName();
            if (obj instanceof String) {
                str = (str + ", fieldName ") + obj;
            }
            String str2 = (str + ", ") + this.lexer.info();
            JSONArray jSONArray = new JSONArray();
            parseArray(jSONArray, obj);
            if (jSONArray.size() == 1) {
                Object obj2 = jSONArray.get(0);
                if (obj2 instanceof JSONObject) {
                    return (JSONObject) obj2;
                }
            }
            throw new JSONException(str2);
        }
        ParseContext parseContext = this.context;
        while (true) {
            try {
                this.lexer.skipWhitespace();
                char current = this.lexer.getCurrent();
                if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (current == ',') {
                        this.lexer.next();
                        this.lexer.skipWhitespace();
                        current = this.lexer.getCurrent();
                    }
                }
                if (current == '\"') {
                    strScanSymbolUnQuoted = this.lexer.scanSymbol(this.symbolTable, '\"');
                    this.lexer.skipWhitespace();
                    if (this.lexer.getCurrent() != ':') {
                        throw new JSONException("expect ':' at " + this.lexer.pos());
                    }
                } else {
                    if (current == '}') {
                        this.lexer.next();
                        this.lexer.resetStringPosition();
                        this.lexer.nextToken(16);
                        setContext(parseContext);
                        return propertyProcessable;
                    }
                    if (current == '\'') {
                        if (this.lexer.isEnabled(Feature.AllowSingleQuotes)) {
                            strScanSymbolUnQuoted = this.lexer.scanSymbol(this.symbolTable, '\'');
                            this.lexer.skipWhitespace();
                            if (this.lexer.getCurrent() != ':') {
                                throw new JSONException("expect ':' at " + this.lexer.pos());
                            }
                        } else {
                            throw new JSONException("syntax error");
                        }
                    } else if (this.lexer.isEnabled(Feature.AllowUnQuotedFieldNames)) {
                        strScanSymbolUnQuoted = this.lexer.scanSymbolUnQuoted(this.symbolTable);
                        this.lexer.skipWhitespace();
                        char current2 = this.lexer.getCurrent();
                        if (current2 != ':') {
                            throw new JSONException("expect ':' at " + this.lexer.pos() + ", actual " + current2);
                        }
                    } else {
                        throw new JSONException("syntax error");
                    }
                }
                this.lexer.next();
                this.lexer.skipWhitespace();
                this.lexer.getCurrent();
                this.lexer.resetStringPosition();
                Object object = null;
                if (strScanSymbolUnQuoted == JSON.DEFAULT_TYPE_KEY && !this.lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                    Class<?> clsCheckAutoType = this.config.checkAutoType(this.lexer.scanSymbol(this.symbolTable, '\"'), null);
                    if (Map.class.isAssignableFrom(clsCheckAutoType)) {
                        this.lexer.nextToken(16);
                        if (this.lexer.token() == 13) {
                            this.lexer.nextToken(16);
                            setContext(parseContext);
                            return propertyProcessable;
                        }
                    } else {
                        ObjectDeserializer deserializer = this.config.getDeserializer(clsCheckAutoType);
                        this.lexer.nextToken(16);
                        setResolveStatus(2);
                        if (parseContext != null && !(obj instanceof Integer)) {
                            popContext();
                        }
                        Map map = (Map) deserializer.deserialze(this, clsCheckAutoType, obj);
                        setContext(parseContext);
                        return map;
                    }
                } else {
                    this.lexer.nextToken();
                    if (i != 0) {
                        setContext(parseContext);
                    }
                    Type type = propertyProcessable.getType(strScanSymbolUnQuoted);
                    if (this.lexer.token() == 8) {
                        this.lexer.nextToken();
                    } else {
                        object = parseObject(type, strScanSymbolUnQuoted);
                    }
                    propertyProcessable.apply(strScanSymbolUnQuoted, object);
                    setContext(parseContext, object, strScanSymbolUnQuoted);
                    setContext(parseContext);
                    int i2 = this.lexer.token();
                    if (i2 == 20 || i2 == 15) {
                        break;
                        break;
                    }
                    if (i2 == 13) {
                        this.lexer.nextToken();
                        setContext(parseContext);
                        return propertyProcessable;
                    }
                }
                i++;
            } catch (Throwable th) {
                setContext(parseContext);
                throw th;
            }
        }
        setContext(parseContext);
        return propertyProcessable;
    }

    public final void parseArray(Collection collection) {
        parseArray(collection, (Object) null);
    }

    public final void parseArray(Collection collection, Object obj) {
        Number numberDecimalValue;
        String strStringVal;
        Object time;
        JSONArray jSONArray;
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == 21 || jSONLexer.token() == 22) {
            jSONLexer.nextToken();
        }
        if (jSONLexer.token() == 14) {
            jSONLexer.nextToken(4);
            ParseContext parseContext = this.context;
            setContext(collection, obj);
            int i = 0;
            while (true) {
                try {
                    if (jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                        while (jSONLexer.token() == 16) {
                            jSONLexer.nextToken();
                        }
                    }
                    int i2 = jSONLexer.token();
                    Object object = null;
                    object = null;
                    if (i2 == 2) {
                        Number numberIntegerValue = jSONLexer.integerValue();
                        jSONLexer.nextToken(16);
                        object = numberIntegerValue;
                    } else if (i2 == 3) {
                        if (jSONLexer.isEnabled(Feature.UseBigDecimal)) {
                            numberDecimalValue = jSONLexer.decimalValue(true);
                        } else {
                            numberDecimalValue = jSONLexer.decimalValue(false);
                        }
                        object = numberDecimalValue;
                        jSONLexer.nextToken(16);
                    } else if (i2 == 4) {
                        strStringVal = jSONLexer.stringVal();
                        jSONLexer.nextToken(16);
                        if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                            JSONScanner jSONScanner = new JSONScanner(strStringVal);
                            if (jSONScanner.scanISO8601DateIfMatch()) {
                                object = strStringVal;
                                time = strStringVal;
                                time = jSONScanner.getCalendar().getTime();
                            }
                            object = strStringVal;
                            time = strStringVal;
                            jSONScanner.close();
                            object = time;
                        }
                    } else if (i2 == 6) {
                        Boolean bool = Boolean.TRUE;
                        jSONLexer.nextToken(16);
                        object = bool;
                    } else if (i2 == 7) {
                        Boolean bool2 = Boolean.FALSE;
                        jSONLexer.nextToken(16);
                        object = bool2;
                    } else if (i2 == 8) {
                        jSONLexer.nextToken(4);
                    } else if (i2 == 12) {
                        object = parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), Integer.valueOf(i));
                    } else {
                        if (i2 == 20) {
                            throw new JSONException("unclosed jsonArray");
                        }
                        if (i2 == 23) {
                            jSONLexer.nextToken(4);
                        } else if (i2 == 14) {
                            jSONArray = new JSONArray();
                            parseArray(jSONArray, Integer.valueOf(i));
                            if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                object = jSONArray;
                                object = jSONArray.toArray();
                            }
                        } else if (i2 != 15) {
                            object = parse();
                        } else {
                            jSONLexer.nextToken(16);
                            setContext(parseContext);
                            return;
                        }
                    }
                    object = strStringVal;
                    object = jSONArray;
                    collection.add(object);
                    checkListResolve(collection);
                    if (jSONLexer.token() == 16) {
                        jSONLexer.nextToken(4);
                    }
                    i++;
                } catch (Throwable th) {
                    setContext(parseContext);
                    throw th;
                }
            }
        } else {
            throw new JSONException("syntax error, expect [, actual " + JSONToken.name(jSONLexer.token()) + ", pos " + jSONLexer.pos());
        }
    }

    public <T> T parseObject(Class<T> cls) {
        return (T) parseObject(cls, (Object) null);
    }

    public <T> T parseObject(Type type) {
        return (T) parseObject(type, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T parseObject(Type type, Object obj) {
        int i = this.lexer.token();
        if (i == 8) {
            this.lexer.nextToken();
            return null;
        }
        if (i == 4) {
            if (type == byte[].class) {
                T t = (T) this.lexer.bytesValue();
                this.lexer.nextToken();
                return t;
            }
            if (type == char[].class) {
                String strStringVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return (T) strStringVal.toCharArray();
            }
        }
        try {
            return (T) this.config.getDeserializer(type).deserialze(this, type, obj);
        } catch (JSONException e2) {
            throw e2;
        } catch (Throwable th) {
            throw new JSONException(th.getMessage(), th);
        }
    }

    public void parseObject(Object obj) {
        Object objDeserialze;
        Class<?> cls = obj.getClass();
        ObjectDeserializer deserializer = this.config.getDeserializer(cls);
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (this.lexer.token() != 12 && this.lexer.token() != 16) {
            throw new JSONException("syntax error, expect {, actual " + this.lexer.tokenName());
        }
        while (true) {
            String strScanSymbol = this.lexer.scanSymbol(this.symbolTable);
            if (strScanSymbol == null) {
                if (this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                } else if (this.lexer.token() != 16 || !this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                }
            }
            FieldDeserializer fieldDeserializer = javaBeanDeserializer != null ? javaBeanDeserializer.getFieldDeserializer(strScanSymbol) : null;
            if (fieldDeserializer == null) {
                if (this.lexer.isEnabled(Feature.IgnoreNotMatch)) {
                    this.lexer.nextTokenWithColon();
                    parse();
                    if (this.lexer.token() == 13) {
                        this.lexer.nextToken();
                        return;
                    }
                } else {
                    throw new JSONException("setter not found, class " + cls.getName() + ", property " + strScanSymbol);
                }
            } else {
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                Class<?> cls2 = fieldInfo.fieldClass;
                Type type = fieldInfo.fieldType;
                if (cls2 == Integer.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = IntegerCodec.instance.deserialze(this, type, null);
                } else if (cls2 == String.class) {
                    this.lexer.nextTokenWithColon(4);
                    objDeserialze = StringCodec.deserialze(this);
                } else if (cls2 == Long.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = LongCodec.instance.deserialze(this, type, null);
                } else {
                    ObjectDeserializer deserializer2 = this.config.getDeserializer(cls2, type);
                    this.lexer.nextTokenWithColon(deserializer2.getFastMatchToken());
                    objDeserialze = deserializer2.deserialze(this, type, null);
                }
                fieldDeserializer.setValue(obj, objDeserialze);
                if (this.lexer.token() != 16 && this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                }
            }
        }
    }

    public Object parseObject(Map map) {
        return parseObject(map, (Object) null);
    }

    public JSONObject parseObject() {
        return (JSONObject) parseObject((Map) new JSONObject(this.lexer.isEnabled(Feature.OrderedField)));
    }
}
