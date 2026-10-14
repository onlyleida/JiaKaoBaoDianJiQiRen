package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public class JSONSerializer extends SerializeFilterable {
    protected final SerializeConfig config;
    protected SerialContext context;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private String indent;
    private int indentCount;
    protected Locale locale;
    public final SerializeWriter out;
    protected IdentityHashMap<Object, SerialContext> references;
    protected TimeZone timeZone;

    public JSONSerializer() {
        this(new SerializeWriter(), SerializeConfig.getGlobalInstance());
    }

    public static void write(Writer writer, Object obj) {
        SerializeWriter serializeWriter = new SerializeWriter();
        try {
            try {
                new JSONSerializer(serializeWriter).write(obj);
                serializeWriter.writeTo(writer);
                serializeWriter.close();
            } catch (IOException e2) {
                throw new JSONException(e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            serializeWriter.close();
            throw th;
        }
    }

    public boolean checkValue(SerializeFilterable serializeFilterable) {
        List<ContextValueFilter> list;
        List<ValueFilter> list2;
        List<ContextValueFilter> list3;
        List<ValueFilter> list4 = this.valueFilters;
        return (list4 != null && list4.size() > 0) || ((list = this.contextValueFilters) != null && list.size() > 0) || (((list2 = serializeFilterable.valueFilters) != null && list2.size() > 0) || (((list3 = serializeFilterable.contextValueFilters) != null && list3.size() > 0) || this.out.writeNonStringValueAsString));
    }

    public void close() {
        this.out.close();
    }

    public void config(SerializerFeature serializerFeature, boolean z) {
        this.out.config(serializerFeature, z);
    }

    public boolean containsReference(Object obj) {
        SerialContext serialContext;
        IdentityHashMap<Object, SerialContext> identityHashMap = this.references;
        if (identityHashMap == null || (serialContext = identityHashMap.get(obj)) == null) {
            return false;
        }
        Object obj2 = serialContext.fieldName;
        return obj2 == null || (obj2 instanceof Integer) || (obj2 instanceof String);
    }

    public void decrementIdent() {
        this.indentCount--;
    }

    public SerialContext getContext() {
        return this.context;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null && this.dateFormatPattern != null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.dateFormatPattern, this.locale);
            this.dateFormat = simpleDateFormat;
            simpleDateFormat.setTimeZone(this.timeZone);
        }
        return this.dateFormat;
    }

    public String getDateFormatPattern() {
        DateFormat dateFormat = this.dateFormat;
        return dateFormat instanceof SimpleDateFormat ? ((SimpleDateFormat) dateFormat).toPattern() : this.dateFormatPattern;
    }

    public int getIndentCount() {
        return this.indentCount;
    }

    public SerializeConfig getMapping() {
        return this.config;
    }

    public ObjectSerializer getObjectWriter(Class<?> cls) {
        return this.config.getObjectWriter(cls);
    }

    public SerializeWriter getWriter() {
        return this.out;
    }

    public boolean hasNameFilters(SerializeFilterable serializeFilterable) {
        List<NameFilter> list;
        List<NameFilter> list2 = this.nameFilters;
        return (list2 != null && list2.size() > 0) || ((list = serializeFilterable.nameFilters) != null && list.size() > 0);
    }

    public void incrementIndent() {
        this.indentCount++;
    }

    public boolean isEnabled(SerializerFeature serializerFeature) {
        return this.out.isEnabled(serializerFeature);
    }

    public final boolean isWriteClassName(Type type, Object obj) {
        return this.out.isEnabled(SerializerFeature.WriteClassName) && !(type == null && this.out.isEnabled(SerializerFeature.NotWriteRootClassName) && this.context.parent == null);
    }

    public void popContext() {
        SerialContext serialContext = this.context;
        if (serialContext != null) {
            this.context = serialContext.parent;
        }
    }

    public void println() {
        this.out.write(10);
        for (int i = 0; i < this.indentCount; i++) {
            this.out.write(this.indent);
        }
    }

    public void setContext(SerialContext serialContext) {
        this.context = serialContext;
    }

    public void setDateFormat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
        if (this.dateFormatPattern != null) {
            this.dateFormatPattern = null;
        }
    }

    public String toString() {
        return this.out.toString();
    }

    protected final void writeKeyValue(char c, String str, Object obj) {
        if (c != 0) {
            this.out.write(c);
        }
        this.out.writeFieldName(str);
        write(obj);
    }

    public void writeNull() {
        this.out.writeNull();
    }

    public void writeReference(Object obj) {
        SerialContext serialContext = this.context;
        if (obj == serialContext.object) {
            this.out.write("{\"$ref\":\"@\"}");
            return;
        }
        SerialContext serialContext2 = serialContext.parent;
        if (serialContext2 != null && obj == serialContext2.object) {
            this.out.write("{\"$ref\":\"..\"}");
            return;
        }
        while (true) {
            SerialContext serialContext3 = serialContext.parent;
            if (serialContext3 == null) {
                break;
            } else {
                serialContext = serialContext3;
            }
        }
        if (obj == serialContext.object) {
            this.out.write("{\"$ref\":\"$\"}");
            return;
        }
        this.out.write("{\"$ref\":\"");
        this.out.write(this.references.get(obj).toString());
        this.out.write("\"}");
    }

    public final void writeWithFieldName(Object obj, Object obj2) {
        writeWithFieldName(obj, obj2, null, 0);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0078 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeWithFormat(java.lang.Object r4, java.lang.String r5) {
        /*
            r3 = this;
            boolean r0 = r4 instanceof java.util.Date
            if (r0 == 0) goto L22
            java.text.DateFormat r0 = r3.getDateFormat()
            if (r0 != 0) goto L16
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat
            java.util.Locale r1 = r3.locale
            r0.<init>(r5, r1)
            java.util.TimeZone r5 = r3.timeZone
            r0.setTimeZone(r5)
        L16:
            java.util.Date r4 = (java.util.Date) r4
            java.lang.String r4 = r0.format(r4)
            com.alibaba.fastjson.serializer.SerializeWriter r5 = r3.out
            r5.writeString(r4)
            return
        L22:
            boolean r0 = r4 instanceof byte[]
            if (r0 == 0) goto L87
            byte[] r4 = (byte[]) r4
            java.lang.String r0 = "gzip"
            boolean r0 = r0.equals(r5)
            if (r0 != 0) goto L4d
            java.lang.String r0 = "gzip,base64"
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L39
            goto L4d
        L39:
            java.lang.String r0 = "hex"
            boolean r5 = r0.equals(r5)
            if (r5 == 0) goto L47
            com.alibaba.fastjson.serializer.SerializeWriter r5 = r3.out
            r5.writeHex(r4)
            goto L77
        L47:
            com.alibaba.fastjson.serializer.SerializeWriter r5 = r3.out
            r5.writeByteArray(r4)
            goto L77
        L4d:
            r5 = 0
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r0.<init>()     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            int r1 = r4.length     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r2 = 512(0x200, float:7.17E-43)
            if (r1 >= r2) goto L5f
            java.util.zip.GZIPOutputStream r1 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            int r2 = r4.length     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r1.<init>(r0, r2)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            goto L64
        L5f:
            java.util.zip.GZIPOutputStream r1 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
        L64:
            r5 = r1
            r5.write(r4)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r5.finish()     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            com.alibaba.fastjson.serializer.SerializeWriter r4 = r3.out     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            byte[] r0 = r0.toByteArray()     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r4.writeByteArray(r0)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            com.alibaba.fastjson.util.IOUtils.close(r5)
        L77:
            return
        L78:
            r4 = move-exception
            goto L83
        L7a:
            r4 = move-exception
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch: java.lang.Throwable -> L78
            java.lang.String r1 = "write gzipBytes error"
            r0.<init>(r1, r4)     // Catch: java.lang.Throwable -> L78
            throw r0     // Catch: java.lang.Throwable -> L78
        L83:
            com.alibaba.fastjson.util.IOUtils.close(r5)
            throw r4
        L87:
            r3.write(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JSONSerializer.writeWithFormat(java.lang.Object, java.lang.String):void");
    }

    public JSONSerializer(SerializeWriter serializeWriter) {
        this(serializeWriter, SerializeConfig.getGlobalInstance());
    }

    public void setContext(SerialContext serialContext, Object obj, Object obj2, int i) {
        setContext(serialContext, obj, obj2, i, 0);
    }

    public final void writeWithFieldName(Object obj, Object obj2, Type type, int i) {
        try {
            if (obj == null) {
                this.out.writeNull();
            } else {
                getObjectWriter(obj.getClass()).write(this, obj, obj2, type, i);
            }
        } catch (IOException e2) {
            throw new JSONException(e2.getMessage(), e2);
        }
    }

    public JSONSerializer(SerializeConfig serializeConfig) {
        this(new SerializeWriter(), serializeConfig);
    }

    public void setContext(SerialContext serialContext, Object obj, Object obj2, int i, int i2) {
        if (this.out.disableCircularReferenceDetect) {
            return;
        }
        this.context = new SerialContext(serialContext, obj, obj2, i, i2);
        if (this.references == null) {
            this.references = new IdentityHashMap<>();
        }
        this.references.put(obj, this.context);
    }

    public JSONSerializer(SerializeWriter serializeWriter, SerializeConfig serializeConfig) {
        this.indentCount = 0;
        this.indent = "\t";
        this.references = null;
        this.timeZone = JSON.defaultTimeZone;
        this.locale = JSON.defaultLocale;
        this.out = serializeWriter;
        this.config = serializeConfig;
    }

    public void setDateFormat(String str) {
        this.dateFormatPattern = str;
        if (this.dateFormat != null) {
            this.dateFormat = null;
        }
    }

    public static void write(SerializeWriter serializeWriter, Object obj) {
        new JSONSerializer(serializeWriter).write(obj);
    }

    public void setContext(Object obj, Object obj2) {
        setContext(this.context, obj, obj2, 0);
    }

    public final void write(Object obj) {
        if (obj == null) {
            this.out.writeNull();
            return;
        }
        try {
            getObjectWriter(obj.getClass()).write(this, obj, null, null, 0);
        } catch (IOException e2) {
            throw new JSONException(e2.getMessage(), e2);
        }
    }

    public final void write(String str) {
        StringCodec.instance.write(this, str);
    }
}
