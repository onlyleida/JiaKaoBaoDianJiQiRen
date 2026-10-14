package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.util.TypeUtils;
import com.mobile.auth.BuildConfig;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ListSerializer implements ObjectSerializer {
    public static final ListSerializer instance = new ListSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        int i2;
        boolean zIsEnabled = jSONSerializer.out.isEnabled(SerializerFeature.WriteClassName);
        SerializeWriter serializeWriter = jSONSerializer.out;
        Type collectionItemType = zIsEnabled ? TypeUtils.getCollectionItemType(type) : null;
        if (obj == null) {
            serializeWriter.writeNull(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        List list = (List) obj;
        if (list.size() == 0) {
            serializeWriter.append((CharSequence) "[]");
            return;
        }
        SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            char c = ',';
            if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                serializeWriter.append('[');
                jSONSerializer.incrementIndent();
                int i3 = 0;
                for (Object obj3 : list) {
                    if (i3 != 0) {
                        serializeWriter.append(c);
                    }
                    jSONSerializer.println();
                    if (obj3 == null) {
                        jSONSerializer.out.writeNull();
                    } else if (jSONSerializer.containsReference(obj3)) {
                        jSONSerializer.writeReference(obj3);
                    } else {
                        ObjectSerializer objectWriter = jSONSerializer.getObjectWriter(obj3.getClass());
                        jSONSerializer.context = new SerialContext(serialContext, obj, obj2, 0, 0);
                        objectWriter.write(jSONSerializer, obj3, Integer.valueOf(i3), collectionItemType, 0);
                    }
                    i3++;
                    c = ',';
                }
                jSONSerializer.decrementIdent();
                jSONSerializer.println();
                serializeWriter.append(']');
                return;
            }
            serializeWriter.append('[');
            int size = list.size();
            int i4 = 0;
            while (i4 < size) {
                Object obj4 = list.get(i4);
                if (i4 != 0) {
                    serializeWriter.append(',');
                }
                if (obj4 == null) {
                    serializeWriter.append((CharSequence) BuildConfig.COMMON_MODULE_COMMIT_ID);
                } else {
                    Class<?> cls = obj4.getClass();
                    if (cls == Integer.class) {
                        serializeWriter.writeInt(((Integer) obj4).intValue());
                    } else {
                        if (cls == Long.class) {
                            long jLongValue = ((Long) obj4).longValue();
                            if (zIsEnabled) {
                                serializeWriter.writeLong(jLongValue);
                                serializeWriter.write(76);
                            } else {
                                serializeWriter.writeLong(jLongValue);
                            }
                        } else if ((SerializerFeature.DisableCircularReferenceDetect.mask & i) != 0) {
                            i2 = i4;
                            jSONSerializer.getObjectWriter(obj4.getClass()).write(jSONSerializer, obj4, Integer.valueOf(i4), collectionItemType, i);
                        } else {
                            i2 = i4;
                            if (!serializeWriter.disableCircularReferenceDetect) {
                                jSONSerializer.context = new SerialContext(serialContext, obj, obj2, 0, 0);
                            }
                            if (jSONSerializer.containsReference(obj4)) {
                                jSONSerializer.writeReference(obj4);
                            } else {
                                jSONSerializer.getObjectWriter(obj4.getClass()).write(jSONSerializer, obj4, Integer.valueOf(i2), collectionItemType, 0);
                            }
                        }
                        i4 = i2 + 1;
                    }
                }
                i2 = i4;
                i4 = i2 + 1;
            }
            serializeWriter.append(']');
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
