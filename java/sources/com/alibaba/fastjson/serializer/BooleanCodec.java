package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import com.tencent.bugly.Bugly;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public class BooleanCodec implements ObjectSerializer, ObjectDeserializer {
    public static final BooleanCodec instance = new BooleanCodec();

    /* JADX WARN: Code duplicated, block: B:21:0x0041  */
    /* JADX WARN: Code duplicated, block: B:23:0x004b A[RETURN] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        Object obj2 = (T) Boolean.FALSE;
        Boolean bool = Boolean.TRUE;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() != 6) {
            if (jSONLexer.token() == 7) {
                jSONLexer.nextToken(16);
            } else if (jSONLexer.token() == 2) {
                int iIntValue = jSONLexer.intValue();
                jSONLexer.nextToken(16);
                if (iIntValue == 1) {
                }
            } else {
                Object obj3 = defaultJSONParser.parse();
                if (obj3 == null) {
                    return null;
                }
                obj2 = (T) TypeUtils.castToBoolean(obj3);
            }
            if (type == AtomicBoolean.class) {
                return (T) new AtomicBoolean(((Boolean) obj2).booleanValue());
            }
            return (T) obj2;
        }
        jSONLexer.nextToken(16);
        obj2 = (T) bool;
        if (type == AtomicBoolean.class) {
            return (T) new AtomicBoolean(((Boolean) obj2).booleanValue());
        }
        return (T) obj2;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 6;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            serializeWriter.writeNull(SerializerFeature.WriteNullBooleanAsFalse);
        } else if (bool.booleanValue()) {
            serializeWriter.write("true");
        } else {
            serializeWriter.write(Bugly.SDK_IS_DEV);
        }
    }
}
