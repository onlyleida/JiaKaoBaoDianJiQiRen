package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.GZIPOutputStream;

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

    public static void write(Writer r2, Object r3) {
        SerializeWriter r0 = new SerializeWriter();
        new JSONSerializer(r0).write(r3);     // Catch: Throwable -> L6 IOException -> L8
        r0.writeTo(r2);     // Catch: Throwable -> L6 IOException -> L8
        r0.close();
        return;
    L6:
        th = move-exception;
        r0.close();
        throw th;
    L8:
        e = move-exception;
        throw new JSONException(e.getMessage(), e);     // Catch: Throwable -> L6
    }

    public boolean checkValue(SerializeFilterable r2) {
        List<ValueFilter> r0 = this.valueFilters;
        if (r0 != null) goto L5;
    L6:
        List<ContextValueFilter> r1 = this.contextValueFilters;
        if (r1 != null) goto L9;
    L10:
        List<ValueFilter> r3 = r2.valueFilters;
        if (r3 != null) goto L13;
    L14:
        List<ContextValueFilter> r4 = r2.contextValueFilters;
        if (r4 == null) goto L19;
        if (r4.size() <= 0) goto L19;
    L20:
        return true;
    L19:
        if (this.out.writeNonStringValueAsString == true) goto L20;
        return false;
    L13:
        if (r3.size() > 0) goto L20;
    L9:
        if (r1.size() > 0) goto L20;
    L5:
        if (r0.size() > 0) goto L20;
        goto L6
    }

    public void close() {
        this.out.close();
    }

    public void config(SerializerFeature r2, boolean r3) {
        this.out.config(r2, r3);
    }

    public boolean containsReference(Object r3) {
        IdentityHashMap<Object, SerialContext> r0 = this.references;
        if (r0 != null) goto L5;
        return false;
    L5:
        SerialContext r4 = r0.get(r3);
        if (r4 != null) goto L8;
        return false;
    L8:
        Object r5 = r4.fieldName;
        if (r5 != null) goto L11;
    L14:
        return true;
    L11:
        if ((r5 instanceof Integer) == true) goto L14;
        if ((r5 instanceof String) == true) goto L14;
        return false;
    }

    public void decrementIdent() {
        this.indentCount--;
    }

    public SerialContext getContext() {
        return this.context;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat != null) goto L8;
        if (this.dateFormatPattern == null) goto L8;
        SimpleDateFormat r0 = new SimpleDateFormat(this.dateFormatPattern, this.locale);
        this.dateFormat = r0;
        r0.setTimeZone(this.timeZone);
    L8:
        return this.dateFormat;
    }

    public String getDateFormatPattern() {
        DateFormat r0 = this.dateFormat;
        if ((r0 instanceof SimpleDateFormat) == false) goto L7;
        return ((SimpleDateFormat) r0).toPattern();
    L7:
        return this.dateFormatPattern;
    }

    public int getIndentCount() {
        return this.indentCount;
    }

    public SerializeConfig getMapping() {
        return this.config;
    }

    public ObjectSerializer getObjectWriter(Class<?> r2) {
        return this.config.getObjectWriter(r2);
    }

    public SerializeWriter getWriter() {
        return this.out;
    }

    public boolean hasNameFilters(SerializeFilterable r2) {
        List<NameFilter> r0 = this.nameFilters;
        if (r0 != null) goto L5;
    L6:
        List<NameFilter> r3 = r2.nameFilters;
        if (r3 != null) goto L9;
    L11:
        return false;
    L9:
        if (r3.size() <= 0) goto L11;
    L10:
        return true;
    L5:
        if (r0.size() > 0) goto L10;
        goto L6
    }

    public void incrementIndent() {
        this.indentCount++;
    }

    public boolean isEnabled(SerializerFeature r2) {
        return this.out.isEnabled(r2);
    }

    public final boolean isWriteClassName(Type r2, Object r3) {
        if (this.out.isEnabled(SerializerFeature.WriteClassName) == false) goto L10;
        if (r2 == null) goto L6;
    L9:
        return true;
    L6:
        if (this.out.isEnabled(SerializerFeature.NotWriteRootClassName) == false) goto L9;
        if (this.context.parent != null) goto L9;
    L10:
        return false;
    }

    public void popContext() {
        SerialContext r0 = this.context;
        if (r0 == null) goto L6;
        this.context = r0.parent;
        return;
    }

    public void println() {
        this.out.write(10);
        int r0 = 0;
    L4:
        if (r0 >= this.indentCount) goto L6;
        this.out.write(this.indent);
        r0 = r0 + 1;
        goto L4
    }

    public void setContext(SerialContext r1) {
        this.context = r1;
    }

    public void setDateFormat(DateFormat r1) {
        this.dateFormat = r1;
        if (this.dateFormatPattern == null) goto L6;
        this.dateFormatPattern = null;
        return;
    }

    public String toString() {
        return this.out.toString();
    }

    protected final void writeKeyValue(char r2, String r3, Object r4) {
        if (r2 == 0) goto L4;
        this.out.write(r2);
    L4:
        this.out.writeFieldName(r3);
        write(r4);
    }

    public void writeNull() {
        this.out.writeNull();
    }

    public void writeReference(Object r3) {
        SerialContext r0 = this.context;
        if (r3 != r0.object) goto L6;
        this.out.write("{\"$ref\":\"@\"}");
        return;
    L6:
        SerialContext r1 = r0.parent;
        if (r1 == null) goto L12;
        if (r3 != r1.object) goto L12;
        this.out.write("{\"$ref\":\"..\"}");
        return;
    L12:
        SerialContext r2 = r0.parent;
        if (r2 == null) goto L15;
        r0 = r2;
        goto L12
    L15:
        if (r3 != r0.object) goto L17;
        this.out.write("{\"$ref\":\"$\"}");
        return;
    L17:
        this.out.write("{\"$ref\":\"");
        this.out.write(this.references.get(r3).toString());
        this.out.write("\"}");
    }

    public final void writeWithFieldName(Object r3, Object r4) {
        writeWithFieldName(r3, r4, null, 0);
    }

    public final void writeWithFormat(Object r4, String r5) {
        if ((r4 instanceof Date) == false) goto L10;
        DateFormat r0 = getDateFormat();
        if (r0 != null) goto L7;
        r0 = new SimpleDateFormat(r5, this.locale);
        r0.setTimeZone(this.timeZone);
    L7:
        String r6 = r0.format((Date) r4);
        this.out.writeString(r6);
        return;
    L10:
        if ((r4 instanceof byte[]) == false) goto L35;
        byte[] r7 = (byte[]) r4;
        if ("gzip".equals(r5) == false) goto L14;
    L20:
        GZIPOutputStream r8 = null;
        ByteArrayOutputStream r1 = new ByteArrayOutputStream();     // Catch: Throwable -> L28 IOException -> L30
        if (r7.length >= 512) goto L24;
        GZIPOutputStream r2 = new GZIPOutputStream(r1, r7.length);     // Catch: Throwable -> L28 IOException -> L30
    L25:
        r8 = r2;
        r8.write(r7);     // Catch: Throwable -> L28 IOException -> L30
        r8.finish();     // Catch: Throwable -> L28 IOException -> L30
        this.out.writeByteArray(r1.toByteArray());     // Catch: Throwable -> L28 IOException -> L30
        IOUtils.close(r8);
        return;
    L24:
        r2 = new GZIPOutputStream(r1);     // Catch: Throwable -> L28 IOException -> L30
    L30:
        e = move-exception;
        throw new JSONException("write gzipBytes error", e);     // Catch: Throwable -> L28
    L28:
        th = move-exception;
        IOUtils.close(r8);
        throw th;
    L14:
        if ("gzip,base64".equals(r5) == true) goto L20;
        if ("hex".equals(r5) == false) goto L19;
        this.out.writeHex(r7);
        return;
    L19:
        this.out.writeByteArray(r7);
        return;
    L35:
        write(r4);
    }

    public JSONSerializer(SerializeWriter r2) {
        this(r2, SerializeConfig.getGlobalInstance());
    }

    public void setContext(SerialContext r7, Object r8, Object r9, int r10) {
        setContext(r7, r8, r9, r10, 0);
    }

    public final void writeWithFieldName(Object r8, Object r9, Type r10, int r11) {
        if (r8 != null) goto L5;
        this.out.writeNull();     // Catch: IOException -> L7
        return;
    L5:
        getObjectWriter(r8.getClass()).write(this, r8, r9, r10, r11);     // Catch: IOException -> L7
        return;
    L7:
        e = move-exception;
        throw new JSONException(e.getMessage(), e);
    }

    public JSONSerializer(SerializeConfig r2) {
        this(new SerializeWriter(), r2);
    }

    public void setContext(SerialContext r8, Object r9, Object r10, int r11, int r12) {
        if (this.out.disableCircularReferenceDetect == false) goto L5;
        return;
    L5:
        this.context = new SerialContext(r8, r9, r10, r11, r12);
        if (this.references != null) goto L8;
        this.references = new IdentityHashMap();
    L8:
        this.references.put(r9, this.context);
    }

    public JSONSerializer(SerializeWriter r2, SerializeConfig r3) {
        this.indentCount = 0;
        this.indent = "\t";
        this.references = null;
        this.timeZone = JSON.defaultTimeZone;
        this.locale = JSON.defaultLocale;
        this.out = r2;
        this.config = r3;
    }

    public void setDateFormat(String r1) {
        this.dateFormatPattern = r1;
        if (this.dateFormat == null) goto L6;
        this.dateFormat = null;
        return;
    }

    public static void write(SerializeWriter r1, Object r2) {
        new JSONSerializer(r1).write(r2);
    }

    public void setContext(Object r3, Object r4) {
        setContext(this.context, r3, r4, 0);
    }

    public final void write(Object r8) {
        if (r8 != null) goto L11;
        this.out.writeNull();
        return;
    L11:
        getObjectWriter(r8.getClass()).write(this, r8, null, null, 0);     // Catch: IOException -> L8
        return;
    L8:
        e = move-exception;
        throw new JSONException(e.getMessage(), e);
    }

    public final void write(String r2) {
        StringCodec.instance.write(this, r2);
    }
}
