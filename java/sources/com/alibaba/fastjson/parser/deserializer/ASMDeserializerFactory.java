package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.asm.ClassWriter;
import com.alibaba.fastjson.asm.FieldWriter;
import com.alibaba.fastjson.asm.Label;
import com.alibaba.fastjson.asm.MethodVisitor;
import com.alibaba.fastjson.asm.MethodWriter;
import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.fastjson.asm.Type;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.SymbolTable;
import com.alibaba.fastjson.util.ASMClassLoader;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public class ASMDeserializerFactory implements Opcodes {
    static final String DefaultJSONParser = ASMUtils.type(DefaultJSONParser.class);
    static final String JSONLexerBase = ASMUtils.type(JSONLexerBase.class);
    public final ASMClassLoader classLoader;
    protected final AtomicLong seed = new AtomicLong();

    public ASMDeserializerFactory(ClassLoader classLoader) {
        this.classLoader = classLoader instanceof ASMClassLoader ? (ASMClassLoader) classLoader : new ASMClassLoader(classLoader);
    }

    private void _batchSet(Context context, MethodVisitor methodVisitor) {
        _batchSet(context, methodVisitor, true);
    }

    private void _createInstance(Context context, MethodVisitor methodVisitor) {
        Constructor<?> constructor = context.beanInfo.defaultConstructor;
        if (Modifier.isPublic(constructor.getModifiers())) {
            methodVisitor.visitTypeInsn(Opcodes.NEW, ASMUtils.type(context.getInstClass()));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(constructor.getDeclaringClass()), "<init>", "()V");
            methodVisitor.visitVarInsn(58, context.var("instance"));
            return;
        }
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, ASMUtils.type(JavaBeanDeserializer.class), "clazz", "Ljava/lang/Class;");
        methodVisitor.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(JavaBeanDeserializer.class), "createInstance", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;)Ljava/lang/Object;");
        methodVisitor.visitTypeInsn(192, ASMUtils.type(context.getInstClass()));
        methodVisitor.visitVarInsn(58, context.var("instance"));
    }

    private void _deserObject(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo, Class<?> cls, int i) {
        _getFieldDeser(context, methodVisitor, fieldInfo);
        Label label = new Label();
        Label label2 = new Label();
        if ((fieldInfo.parserFeatures & Feature.SupportArrayToBean.mask) != 0) {
            methodVisitor.visitInsn(89);
            methodVisitor.visitTypeInsn(193, ASMUtils.type(JavaBeanDeserializer.class));
            methodVisitor.visitJumpInsn(153, label);
            methodVisitor.visitTypeInsn(192, ASMUtils.type(JavaBeanDeserializer.class));
            methodVisitor.visitVarInsn(25, 1);
            if (fieldInfo.fieldType instanceof Class) {
                methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
            } else {
                methodVisitor.visitVarInsn(25, 0);
                methodVisitor.visitLdcInsn(Integer.valueOf(i));
                methodVisitor.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            }
            methodVisitor.visitLdcInsn(fieldInfo.name);
            methodVisitor.visitLdcInsn(Integer.valueOf(fieldInfo.parserFeatures));
            methodVisitor.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "deserialze", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
            methodVisitor.visitTypeInsn(192, ASMUtils.type(cls));
            methodVisitor.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
            methodVisitor.visitJumpInsn(167, label2);
            methodVisitor.visitLabel(label);
        }
        methodVisitor.visitVarInsn(25, 1);
        if (fieldInfo.fieldType instanceof Class) {
            methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitLdcInsn(Integer.valueOf(i));
            methodVisitor.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
        }
        methodVisitor.visitLdcInsn(fieldInfo.name);
        methodVisitor.visitMethodInsn(185, ASMUtils.type(ObjectDeserializer.class), "deserialze", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        methodVisitor.visitTypeInsn(192, ASMUtils.type(cls));
        methodVisitor.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
        methodVisitor.visitLabel(label2);
    }

    private void _deserialize_endCheck(Context context, MethodVisitor methodVisitor, Label label) {
        methodVisitor.visitIntInsn(21, context.var("matchedCount"));
        methodVisitor.visitJumpInsn(Opcodes.IFLE, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(13);
        methodVisitor.visitJumpInsn(160, label);
        _quickNextTokenComma(context, methodVisitor);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0933  */
    private void _deserialze(ClassWriter classWriter, Context context) {
        String str;
        String str2;
        Label label;
        String str3;
        String str4;
        int i;
        MethodWriter methodWriter;
        Label label2;
        String str5;
        String str6;
        String str7;
        String str8;
        Label label3;
        if (context.fieldInfoList.length == 0) {
            return;
        }
        for (FieldInfo fieldInfo : context.fieldInfoList) {
            Class<?> cls = fieldInfo.fieldClass;
            java.lang.reflect.Type type = fieldInfo.fieldType;
            if (cls == Character.TYPE) {
                return;
            }
            if (Collection.class.isAssignableFrom(cls) && (!(type instanceof ParameterizedType) || !(((ParameterizedType) type).getActualTypeArguments()[0] instanceof Class))) {
                return;
            }
        }
        JavaBeanInfo javaBeanInfo = context.beanInfo;
        context.fieldInfoList = javaBeanInfo.sortedFields;
        StringBuilder sb = new StringBuilder();
        String str9 = "(L";
        sb.append("(L");
        String str10 = DefaultJSONParser;
        sb.append(str10);
        sb.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
        MethodWriter methodWriter2 = new MethodWriter(classWriter, 1, "deserialze", sb.toString(), null, null);
        Label label4 = new Label();
        Label label5 = new Label();
        Label label6 = new Label();
        Label label7 = new Label();
        defineVarLexer(context, methodWriter2);
        Label label8 = new Label();
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        String str11 = JSONLexerBase;
        Label label9 = label7;
        methodWriter2.visitMethodInsn(182, str11, "token", "()I");
        methodWriter2.visitLdcInsn(14);
        methodWriter2.visitJumpInsn(160, label8);
        int i2 = javaBeanInfo.parserFeatures;
        Feature feature = Feature.SupportArrayToBean;
        if ((i2 & feature.mask) == 0) {
            methodWriter2.visitVarInsn(25, context.var("lexer"));
            methodWriter2.visitVarInsn(21, 4);
            methodWriter2.visitLdcInsn(Integer.valueOf(feature.mask));
            methodWriter2.visitMethodInsn(182, str11, "isEnabled", "(II)Z");
            methodWriter2.visitJumpInsn(153, label8);
        }
        methodWriter2.visitVarInsn(25, 0);
        methodWriter2.visitVarInsn(25, 1);
        methodWriter2.visitVarInsn(25, 2);
        methodWriter2.visitVarInsn(25, 3);
        methodWriter2.visitInsn(1);
        methodWriter2.visitMethodInsn(Opcodes.INVOKESPECIAL, context.className, "deserialzeArrayMapping", "(L" + str10 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
        methodWriter2.visitInsn(176);
        methodWriter2.visitLabel(label8);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitLdcInsn(Integer.valueOf(Feature.SortFeidFastMatch.mask));
        methodWriter2.visitMethodInsn(182, str11, "isEnabled", "(I)Z");
        methodWriter2.visitJumpInsn(153, label5);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitLdcInsn(context.clazz.getName());
        methodWriter2.visitMethodInsn(182, str11, "scanType", "(Ljava/lang/String;)I");
        methodWriter2.visitLdcInsn(-1);
        methodWriter2.visitJumpInsn(Opcodes.IF_ICMPEQ, label5);
        methodWriter2.visitVarInsn(25, 1);
        methodWriter2.visitMethodInsn(182, str10, "getContext", "()" + ASMUtils.desc((Class<?>) ParseContext.class));
        methodWriter2.visitVarInsn(58, context.var("mark_context"));
        methodWriter2.visitInsn(3);
        methodWriter2.visitVarInsn(54, context.var("matchedCount"));
        _createInstance(context, methodWriter2);
        methodWriter2.visitVarInsn(25, 1);
        methodWriter2.visitMethodInsn(182, str10, "getContext", "()" + ASMUtils.desc((Class<?>) ParseContext.class));
        methodWriter2.visitVarInsn(58, context.var("context"));
        methodWriter2.visitVarInsn(25, 1);
        methodWriter2.visitVarInsn(25, context.var("context"));
        methodWriter2.visitVarInsn(25, context.var("instance"));
        methodWriter2.visitVarInsn(25, 3);
        methodWriter2.visitMethodInsn(182, str10, "setContext", "(" + ASMUtils.desc((Class<?>) ParseContext.class) + "Ljava/lang/Object;Ljava/lang/Object;)" + ASMUtils.desc((Class<?>) ParseContext.class));
        methodWriter2.visitVarInsn(58, context.var("childContext"));
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        String str12 = "matchStat";
        String str13 = "I";
        methodWriter2.visitFieldInsn(180, str11, "matchStat", "I");
        methodWriter2.visitLdcInsn(4);
        methodWriter2.visitJumpInsn(Opcodes.IF_ICMPEQ, label6);
        int i3 = 3;
        methodWriter2.visitInsn(3);
        methodWriter2.visitIntInsn(54, context.var("matchStat"));
        int length = context.fieldInfoList.length;
        int i4 = 0;
        while (i4 < length) {
            methodWriter2.visitInsn(i3);
            methodWriter2.visitVarInsn(54, context.var("_asm_flag_" + (i4 / 32)));
            i4 += 32;
            i3 = 3;
        }
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitLdcInsn(Integer.valueOf(Feature.InitStringFieldAsEmpty.mask));
        methodWriter2.visitMethodInsn(182, JSONLexerBase, "isEnabled", "(I)Z");
        methodWriter2.visitIntInsn(54, context.var("initStringFieldAsEmpty"));
        int i5 = 0;
        while (true) {
            str = "_asm";
            if (i5 >= length) {
                break;
            }
            FieldInfo fieldInfo2 = context.fieldInfoList[i5];
            Class<?> cls2 = fieldInfo2.fieldClass;
            if (cls2 == Boolean.TYPE || cls2 == Byte.TYPE || cls2 == Short.TYPE || cls2 == Integer.TYPE) {
                str13 = str13;
                str12 = str12;
                label5 = label5;
                label6 = label6;
                methodWriter2.visitInsn(3);
                methodWriter2.visitVarInsn(54, context.var(fieldInfo2.name + "_asm"));
            } else {
                if (cls2 == Long.TYPE) {
                    methodWriter2.visitInsn(9);
                    methodWriter2.visitVarInsn(55, context.var(fieldInfo2.name + "_asm", 2));
                } else if (cls2 == Float.TYPE) {
                    methodWriter2.visitInsn(11);
                    methodWriter2.visitVarInsn(56, context.var(fieldInfo2.name + "_asm"));
                } else if (cls2 == Double.TYPE) {
                    methodWriter2.visitInsn(14);
                    methodWriter2.visitVarInsn(57, context.var(fieldInfo2.name + "_asm", 2));
                } else {
                    if (cls2 == String.class) {
                        Label label10 = new Label();
                        Label label11 = new Label();
                        methodWriter2.visitVarInsn(21, context.var("initStringFieldAsEmpty"));
                        methodWriter2.visitJumpInsn(153, label11);
                        _setFlag(methodWriter2, context, i5);
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitMethodInsn(182, JSONLexerBase, "stringDefaultValue", "()Ljava/lang/String;");
                        methodWriter2.visitJumpInsn(167, label10);
                        methodWriter2.visitLabel(label11);
                        methodWriter2.visitInsn(1);
                        methodWriter2.visitLabel(label10);
                    } else {
                        methodWriter2.visitInsn(1);
                    }
                    methodWriter2.visitTypeInsn(192, ASMUtils.type(cls2));
                    methodWriter2.visitVarInsn(58, context.var(fieldInfo2.name + "_asm"));
                }
                str13 = str13;
                str12 = str12;
                label5 = label5;
                label6 = label6;
            }
            i5++;
            label5 = label5;
            label6 = label6;
            str13 = str13;
            str12 = str12;
        }
        String str14 = str13;
        String str15 = str12;
        Label label12 = label5;
        Label label13 = label6;
        int i6 = 0;
        while (i6 < length) {
            FieldInfo fieldInfo3 = context.fieldInfoList[i6];
            Class<?> cls3 = fieldInfo3.fieldClass;
            java.lang.reflect.Type type2 = fieldInfo3.fieldType;
            Label label14 = new Label();
            if (cls3 == Boolean.TYPE) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldBoolean", "([C)Z");
                methodWriter2.visitVarInsn(54, context.var(fieldInfo3.name + str));
            } else if (cls3 == Byte.TYPE) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldInt", "([C)I");
                methodWriter2.visitVarInsn(54, context.var(fieldInfo3.name + str));
            } else if (cls3 == Short.TYPE) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldInt", "([C)I");
                methodWriter2.visitVarInsn(54, context.var(fieldInfo3.name + str));
            } else if (cls3 == Integer.TYPE) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldInt", "([C)I");
                methodWriter2.visitVarInsn(54, context.var(fieldInfo3.name + str));
            } else if (cls3 == Long.TYPE) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldLong", "([C)J");
                methodWriter2.visitVarInsn(55, context.var(fieldInfo3.name + str, 2));
            } else if (cls3 == Float.TYPE) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldFloat", "([C)F");
                methodWriter2.visitVarInsn(56, context.var(fieldInfo3.name + str));
            } else if (cls3 == Double.TYPE) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldDouble", "([C)D");
                methodWriter2.visitVarInsn(57, context.var(fieldInfo3.name + str, 2));
            } else if (cls3 == String.class) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldString", "([C)Ljava/lang/String;");
                methodWriter2.visitVarInsn(58, context.var(fieldInfo3.name + str));
            } else if (cls3 == int[].class) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldIntArray", "([C)[I");
                methodWriter2.visitVarInsn(58, context.var(fieldInfo3.name + str));
            } else if (cls3 == float[].class) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldFloatArray", "([C)[F");
                methodWriter2.visitVarInsn(58, context.var(fieldInfo3.name + str));
            } else if (cls3 == float[][].class) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitVarInsn(25, 0);
                methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldFloatArray2", "([C)[[F");
                methodWriter2.visitVarInsn(58, context.var(fieldInfo3.name + str));
            } else {
                if (cls3.isEnum()) {
                    methodWriter2.visitVarInsn(25, 0);
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(25, 0);
                    methodWriter2.visitFieldInsn(180, context.className, fieldInfo3.name + "_asm_prefix__", "[C");
                    _getFieldDeser(context, methodWriter2, fieldInfo3);
                    methodWriter2.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "scanEnum", str9 + JSONLexerBase + ";[C" + ASMUtils.desc((Class<?>) ObjectDeserializer.class) + ")Ljava/lang/Enum;");
                    methodWriter2.visitTypeInsn(192, ASMUtils.type(cls3));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(fieldInfo3.name);
                    sb2.append(str);
                    methodWriter2.visitVarInsn(58, context.var(sb2.toString()));
                } else if (Collection.class.isAssignableFrom(cls3)) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(25, 0);
                    String str16 = context.className;
                    StringBuilder sb3 = new StringBuilder();
                    str6 = str9;
                    sb3.append(fieldInfo3.name);
                    sb3.append("_asm_prefix__");
                    methodWriter2.visitFieldInsn(180, str16, sb3.toString(), "[C");
                    Class<?> collectionItemClass = TypeUtils.getCollectionItemClass(type2);
                    if (collectionItemClass == String.class) {
                        methodWriter2.visitLdcInsn(Type.getType(ASMUtils.desc(cls3)));
                        methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFieldStringArray", "([CLjava/lang/Class;)" + ASMUtils.desc((Class<?>) Collection.class));
                        methodWriter2.visitVarInsn(58, context.var(fieldInfo3.name + str));
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        str7 = JSONLexerBase;
                        str8 = str14;
                        str4 = str15;
                        methodWriter2.visitFieldInsn(180, str7, str4, str8);
                        Label label15 = new Label();
                        methodWriter2.visitJumpInsn(Opcodes.IFLE, label15);
                        _setFlag(methodWriter2, context, i6);
                        methodWriter2.visitLabel(label15);
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(180, str7, str4, str8);
                        methodWriter2.visitInsn(89);
                        methodWriter2.visitVarInsn(54, context.var(str4));
                        methodWriter2.visitLdcInsn(-1);
                        label3 = label4;
                        methodWriter2.visitJumpInsn(Opcodes.IF_ICMPEQ, label3);
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(180, str7, str4, str8);
                        methodWriter2.visitJumpInsn(Opcodes.IFLE, label14);
                        methodWriter2.visitVarInsn(21, context.var("matchedCount"));
                        methodWriter2.visitInsn(4);
                        methodWriter2.visitInsn(96);
                        methodWriter2.visitVarInsn(54, context.var("matchedCount"));
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitFieldInsn(180, str7, str4, str8);
                        methodWriter2.visitLdcInsn(4);
                        Label label16 = label9;
                        methodWriter2.visitJumpInsn(Opcodes.IF_ICMPEQ, label16);
                        methodWriter2.visitLabel(label14);
                        if (i6 == length - 1) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitFieldInsn(180, str7, str4, str8);
                            methodWriter2.visitLdcInsn(4);
                            methodWriter2.visitJumpInsn(160, label3);
                        }
                        str3 = str8;
                        i = length;
                        str2 = str;
                        label = label16;
                        str5 = str6;
                        methodWriter = methodWriter2;
                        label2 = label3;
                    } else {
                        label = label9;
                        Label label17 = label4;
                        str4 = str15;
                        str2 = str;
                        str3 = str14;
                        i = length;
                        str5 = str6;
                        methodWriter = methodWriter2;
                        _deserialze_list_obj(context, methodWriter2, label17, fieldInfo3, cls3, collectionItemClass, i6);
                        label2 = label17;
                        if (i6 == i - 1) {
                            _deserialize_endCheck(context, methodWriter, label2);
                        }
                    }
                } else {
                    str2 = str;
                    label = label9;
                    str3 = str14;
                    str4 = str15;
                    i = length;
                    methodWriter = methodWriter2;
                    label2 = label4;
                    str5 = str9;
                    _deserialze_obj(context, methodWriter, label2, fieldInfo3, cls3, i6);
                    if (i6 == i - 1) {
                        _deserialize_endCheck(context, methodWriter, label2);
                    }
                }
                i6++;
                label4 = label2;
                methodWriter2 = methodWriter;
                str9 = str5;
                label9 = label;
                str15 = str4;
                str = str2;
                length = i;
                str14 = str3;
            }
            str6 = str9;
            methodWriter2.visitVarInsn(25, context.var("lexer"));
            str7 = JSONLexerBase;
            str8 = str14;
            str4 = str15;
            methodWriter2.visitFieldInsn(180, str7, str4, str8);
            Label label18 = new Label();
            methodWriter2.visitJumpInsn(Opcodes.IFLE, label18);
            _setFlag(methodWriter2, context, i6);
            methodWriter2.visitLabel(label18);
            methodWriter2.visitVarInsn(25, context.var("lexer"));
            methodWriter2.visitFieldInsn(180, str7, str4, str8);
            methodWriter2.visitInsn(89);
            methodWriter2.visitVarInsn(54, context.var(str4));
            methodWriter2.visitLdcInsn(-1);
            label3 = label4;
            methodWriter2.visitJumpInsn(Opcodes.IF_ICMPEQ, label3);
            methodWriter2.visitVarInsn(25, context.var("lexer"));
            methodWriter2.visitFieldInsn(180, str7, str4, str8);
            methodWriter2.visitJumpInsn(Opcodes.IFLE, label14);
            methodWriter2.visitVarInsn(21, context.var("matchedCount"));
            methodWriter2.visitInsn(4);
            methodWriter2.visitInsn(96);
            methodWriter2.visitVarInsn(54, context.var("matchedCount"));
            methodWriter2.visitVarInsn(25, context.var("lexer"));
            methodWriter2.visitFieldInsn(180, str7, str4, str8);
            methodWriter2.visitLdcInsn(4);
            Label label19 = label9;
            methodWriter2.visitJumpInsn(Opcodes.IF_ICMPEQ, label19);
            methodWriter2.visitLabel(label14);
            if (i6 == length - 1) {
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitFieldInsn(180, str7, str4, str8);
                methodWriter2.visitLdcInsn(4);
                methodWriter2.visitJumpInsn(160, label3);
            }
            str3 = str8;
            i = length;
            str2 = str;
            label = label19;
            str5 = str6;
            methodWriter = methodWriter2;
            label2 = label3;
            i6++;
            label4 = label2;
            methodWriter2 = methodWriter;
            str9 = str5;
            label9 = label;
            str15 = str4;
            str = str2;
            length = i;
            str14 = str3;
        }
        int i7 = length;
        String str17 = str9;
        MethodWriter methodWriter3 = methodWriter2;
        Label label20 = label4;
        methodWriter3.visitLabel(label9);
        if (!context.clazz.isInterface() && !Modifier.isAbstract(context.clazz.getModifiers())) {
            _batchSet(context, methodWriter3);
        }
        methodWriter3.visitLabel(label13);
        _setContext(context, methodWriter3);
        methodWriter3.visitVarInsn(25, context.var("instance"));
        Method method = context.beanInfo.buildMethod;
        if (method != null) {
            methodWriter3.visitMethodInsn(182, ASMUtils.type(context.getInstClass()), method.getName(), "()" + ASMUtils.desc(method.getReturnType()));
        }
        methodWriter3.visitInsn(176);
        methodWriter3.visitLabel(label20);
        _batchSet(context, methodWriter3);
        methodWriter3.visitVarInsn(25, 0);
        methodWriter3.visitVarInsn(25, 1);
        methodWriter3.visitVarInsn(25, 2);
        methodWriter3.visitVarInsn(25, 3);
        methodWriter3.visitVarInsn(25, context.var("instance"));
        methodWriter3.visitVarInsn(21, 4);
        int i8 = i7 / 32;
        if (i7 != 0 && i7 % 32 != 0) {
            i8++;
        }
        if (i8 == 1) {
            methodWriter3.visitInsn(4);
        } else {
            methodWriter3.visitIntInsn(16, i8);
        }
        methodWriter3.visitIntInsn(188, 10);
        for (int i9 = 0; i9 < i8; i9++) {
            methodWriter3.visitInsn(89);
            if (i9 == 0) {
                methodWriter3.visitInsn(3);
            } else if (i9 == 1) {
                methodWriter3.visitInsn(4);
            } else {
                methodWriter3.visitIntInsn(16, i9);
            }
            methodWriter3.visitVarInsn(21, context.var("_asm_flag_" + i9));
            methodWriter3.visitInsn(79);
        }
        String strType = ASMUtils.type(JavaBeanDeserializer.class);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(str17);
        String str18 = DefaultJSONParser;
        sb4.append(str18);
        sb4.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;");
        methodWriter3.visitMethodInsn(182, strType, "parseRest", sb4.toString());
        methodWriter3.visitTypeInsn(192, ASMUtils.type(context.clazz));
        methodWriter3.visitInsn(176);
        methodWriter3.visitLabel(label12);
        methodWriter3.visitVarInsn(25, 0);
        methodWriter3.visitVarInsn(25, 1);
        methodWriter3.visitVarInsn(25, 2);
        methodWriter3.visitVarInsn(25, 3);
        methodWriter3.visitVarInsn(21, 4);
        methodWriter3.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(JavaBeanDeserializer.class), "deserialze", str17 + str18 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;");
        methodWriter3.visitInsn(176);
        methodWriter3.visitMaxs(10, context.variantIndex);
        methodWriter3.visitEnd();
    }

    private void _deserialzeArrayMapping(ClassWriter classWriter, Context context) {
        MethodWriter methodWriter;
        Class<JavaBeanDeserializer> cls;
        int i;
        Class<JavaBeanDeserializer> cls2 = JavaBeanDeserializer.class;
        MethodWriter methodWriter2 = new MethodWriter(classWriter, 1, "deserialzeArrayMapping", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", null, null);
        defineVarLexer(context, methodWriter2);
        _createInstance(context, methodWriter2);
        FieldInfo[] fieldInfoArr = context.beanInfo.sortedFields;
        int length = fieldInfoArr.length;
        int i2 = 0;
        while (i2 < length) {
            boolean z = i2 == length + (-1);
            int i3 = z ? 93 : 44;
            FieldInfo fieldInfo = fieldInfoArr[i2];
            FieldInfo[] fieldInfoArr2 = fieldInfoArr;
            Class<?> cls3 = fieldInfo.fieldClass;
            boolean z2 = z;
            java.lang.reflect.Type type = fieldInfo.fieldType;
            if (cls3 == Byte.TYPE || cls3 == Short.TYPE || cls3 == Integer.TYPE) {
                methodWriter = methodWriter2;
                cls = cls2;
                i = i2;
                methodWriter.visitVarInsn(25, context.var("lexer"));
                methodWriter.visitVarInsn(16, i3);
                methodWriter.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                methodWriter.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
            } else {
                if (cls3 == Long.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i3);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanLong", "(C)J");
                    methodWriter2.visitVarInsn(55, context.var(fieldInfo.name + "_asm", 2));
                } else if (cls3 == Boolean.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i3);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanBoolean", "(C)Z");
                    methodWriter2.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
                } else if (cls3 == Float.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i3);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFloat", "(C)F");
                    methodWriter2.visitVarInsn(56, context.var(fieldInfo.name + "_asm"));
                } else if (cls3 == Double.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i3);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanDouble", "(C)D");
                    methodWriter2.visitVarInsn(57, context.var(fieldInfo.name + "_asm", 2));
                } else if (cls3 == Character.TYPE) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i3);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                    methodWriter2.visitInsn(3);
                    methodWriter2.visitMethodInsn(182, "java/lang/String", "charAt", "(I)C");
                    methodWriter2.visitVarInsn(54, context.var(fieldInfo.name + "_asm"));
                } else if (cls3 == String.class) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i3);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                    methodWriter2.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                } else if (cls3.isEnum()) {
                    Label label = new Label();
                    Label label2 = new Label();
                    Label label3 = new Label();
                    int i4 = i2;
                    Label label4 = new Label();
                    cls = cls2;
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    String str = JSONLexerBase;
                    methodWriter2.visitMethodInsn(182, str, "getCurrent", "()C");
                    methodWriter2.visitInsn(89);
                    methodWriter2.visitVarInsn(54, context.var("ch"));
                    methodWriter2.visitLdcInsn(110);
                    methodWriter2.visitJumpInsn(Opcodes.IF_ICMPEQ, label4);
                    methodWriter2.visitVarInsn(21, context.var("ch"));
                    methodWriter2.visitLdcInsn(34);
                    methodWriter2.visitJumpInsn(160, label);
                    methodWriter2.visitLabel(label4);
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitLdcInsn(Type.getType(ASMUtils.desc(cls3)));
                    methodWriter2.visitVarInsn(25, 1);
                    methodWriter2.visitMethodInsn(182, DefaultJSONParser, "getSymbolTable", "()" + ASMUtils.desc((Class<?>) SymbolTable.class));
                    methodWriter2.visitVarInsn(16, i3);
                    methodWriter2.visitMethodInsn(182, str, "scanEnum", "(Ljava/lang/Class;" + ASMUtils.desc((Class<?>) SymbolTable.class) + "C)Ljava/lang/Enum;");
                    methodWriter2.visitJumpInsn(167, label3);
                    methodWriter2.visitLabel(label);
                    methodWriter2.visitVarInsn(21, context.var("ch"));
                    methodWriter2.visitLdcInsn(48);
                    methodWriter2.visitJumpInsn(161, label2);
                    methodWriter2.visitVarInsn(21, context.var("ch"));
                    methodWriter2.visitLdcInsn(57);
                    methodWriter2.visitJumpInsn(Opcodes.IF_ICMPGT, label2);
                    _getFieldDeser(context, methodWriter2, fieldInfo);
                    methodWriter2.visitTypeInsn(192, ASMUtils.type(EnumDeserializer.class));
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i3);
                    methodWriter2.visitMethodInsn(182, str, "scanInt", "(C)I");
                    methodWriter2.visitMethodInsn(182, ASMUtils.type(EnumDeserializer.class), "valueOf", "(I)Ljava/lang/Enum;");
                    methodWriter2.visitJumpInsn(167, label3);
                    methodWriter2.visitLabel(label2);
                    methodWriter2.visitVarInsn(25, 0);
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i3);
                    methodWriter2.visitMethodInsn(182, ASMUtils.type(cls), "scanEnum", "(L" + str + ";C)Ljava/lang/Enum;");
                    methodWriter2.visitLabel(label3);
                    methodWriter2.visitTypeInsn(192, ASMUtils.type(cls3));
                    methodWriter2.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                    methodWriter = methodWriter2;
                    i = i4;
                } else {
                    cls = cls2;
                    int i5 = i2;
                    if (Collection.class.isAssignableFrom(cls3)) {
                        Class<?> collectionItemClass = TypeUtils.getCollectionItemClass(type);
                        if (collectionItemClass == String.class) {
                            if (cls3 == List.class || cls3 == Collections.class || cls3 == ArrayList.class) {
                                methodWriter2.visitTypeInsn(Opcodes.NEW, ASMUtils.type(ArrayList.class));
                                methodWriter2.visitInsn(89);
                                methodWriter2.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(ArrayList.class), "<init>", "()V");
                            } else {
                                methodWriter2.visitLdcInsn(Type.getType(ASMUtils.desc(cls3)));
                                methodWriter2.visitMethodInsn(Opcodes.INVOKESTATIC, ASMUtils.type(TypeUtils.class), "createCollection", "(Ljava/lang/Class;)Ljava/util/Collection;");
                            }
                            methodWriter2.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
                            methodWriter2.visitVarInsn(16, i3);
                            String str2 = JSONLexerBase;
                            methodWriter2.visitMethodInsn(182, str2, "scanStringArray", "(Ljava/util/Collection;C)V");
                            Label label5 = new Label();
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitFieldInsn(180, str2, "matchStat", "I");
                            methodWriter2.visitLdcInsn(5);
                            methodWriter2.visitJumpInsn(160, label5);
                            methodWriter2.visitInsn(1);
                            methodWriter2.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                            methodWriter2.visitLabel(label5);
                            i = i5;
                        } else {
                            Label label6 = new Label();
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            String str3 = JSONLexerBase;
                            methodWriter2.visitMethodInsn(182, str3, "token", "()I");
                            methodWriter2.visitVarInsn(54, context.var("token"));
                            methodWriter2.visitVarInsn(21, context.var("token"));
                            methodWriter2.visitLdcInsn(Integer.valueOf(i5 == 0 ? 14 : 16));
                            methodWriter2.visitJumpInsn(Opcodes.IF_ICMPEQ, label6);
                            methodWriter2.visitVarInsn(25, 1);
                            methodWriter2.visitVarInsn(21, context.var("token"));
                            String str4 = DefaultJSONParser;
                            methodWriter2.visitMethodInsn(182, str4, "throwException", "(I)V");
                            methodWriter2.visitLabel(label6);
                            Label label7 = new Label();
                            Label label8 = new Label();
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitMethodInsn(182, str3, "getCurrent", "()C");
                            methodWriter2.visitVarInsn(16, 91);
                            methodWriter2.visitJumpInsn(160, label7);
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitMethodInsn(182, str3, "next", "()C");
                            methodWriter2.visitInsn(87);
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitLdcInsn(14);
                            methodWriter2.visitMethodInsn(182, str3, "setToken", "(I)V");
                            methodWriter2.visitJumpInsn(167, label8);
                            methodWriter2.visitLabel(label7);
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitLdcInsn(14);
                            methodWriter2.visitMethodInsn(182, str3, "nextToken", "(I)V");
                            methodWriter2.visitLabel(label8);
                            i = i5;
                            _newCollection(methodWriter2, cls3, i, false);
                            methodWriter2.visitInsn(89);
                            methodWriter2.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                            _getCollectionFieldItemDeser(context, methodWriter2, fieldInfo, collectionItemClass);
                            methodWriter2.visitVarInsn(25, 1);
                            methodWriter2.visitLdcInsn(Type.getType(ASMUtils.desc(collectionItemClass)));
                            methodWriter2.visitVarInsn(25, 3);
                            methodWriter2.visitMethodInsn(Opcodes.INVOKESTATIC, ASMUtils.type(cls), "parseArray", "(Ljava/util/Collection;" + ASMUtils.desc((Class<?>) ObjectDeserializer.class) + "L" + str4 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)V");
                        }
                    } else {
                        i = i5;
                        if (cls3.isArray()) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitLdcInsn(14);
                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
                            methodWriter2.visitVarInsn(25, 1);
                            methodWriter2.visitVarInsn(25, 0);
                            methodWriter2.visitLdcInsn(Integer.valueOf(i));
                            methodWriter2.visitMethodInsn(182, ASMUtils.type(cls), "getFieldType", "(I)Ljava/lang/reflect/Type;");
                            methodWriter2.visitMethodInsn(182, DefaultJSONParser, "parseObject", "(Ljava/lang/reflect/Type;)Ljava/lang/Object;");
                            methodWriter2.visitTypeInsn(192, ASMUtils.type(cls3));
                            methodWriter2.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                        } else {
                            Label label9 = new Label();
                            Label label10 = new Label();
                            if (cls3 == Date.class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                String str5 = JSONLexerBase;
                                methodWriter2.visitMethodInsn(182, str5, "getCurrent", "()C");
                                methodWriter2.visitLdcInsn(49);
                                methodWriter2.visitJumpInsn(160, label9);
                                methodWriter2.visitTypeInsn(Opcodes.NEW, ASMUtils.type(Date.class));
                                methodWriter2.visitInsn(89);
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(16, i3);
                                methodWriter2.visitMethodInsn(182, str5, "scanLong", "(C)J");
                                methodWriter2.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(Date.class), "<init>", "(J)V");
                                methodWriter2.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
                                methodWriter2.visitJumpInsn(167, label10);
                            }
                            methodWriter2.visitLabel(label9);
                            _quickNextToken(context, methodWriter2, 14);
                            methodWriter = methodWriter2;
                            _deserObject(context, methodWriter2, fieldInfo, cls3, i);
                            methodWriter.visitVarInsn(25, 0);
                            methodWriter.visitVarInsn(25, context.var("lexer"));
                            if (z2) {
                                methodWriter.visitLdcInsn(15);
                            } else {
                                methodWriter.visitLdcInsn(16);
                            }
                            methodWriter.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(cls), "check", "(" + ASMUtils.desc((Class<?>) JSONLexer.class) + "I)V");
                            methodWriter.visitLabel(label10);
                        }
                    }
                    methodWriter = methodWriter2;
                }
                methodWriter = methodWriter2;
                cls = cls2;
                i = i2;
            }
            i2 = i + 1;
            methodWriter2 = methodWriter;
            length = length;
            fieldInfoArr = fieldInfoArr2;
            cls2 = cls;
        }
        MethodWriter methodWriter3 = methodWriter2;
        _batchSet(context, methodWriter3, false);
        Label label11 = new Label();
        Label label12 = new Label();
        Label label13 = new Label();
        Label label14 = new Label();
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        String str6 = JSONLexerBase;
        methodWriter3.visitMethodInsn(182, str6, "getCurrent", "()C");
        methodWriter3.visitInsn(89);
        methodWriter3.visitVarInsn(54, context.var("ch"));
        methodWriter3.visitVarInsn(16, 44);
        methodWriter3.visitJumpInsn(160, label12);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, str6, "next", "()C");
        methodWriter3.visitInsn(87);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(16);
        methodWriter3.visitMethodInsn(182, str6, "setToken", "(I)V");
        methodWriter3.visitJumpInsn(167, label14);
        methodWriter3.visitLabel(label12);
        methodWriter3.visitVarInsn(21, context.var("ch"));
        methodWriter3.visitVarInsn(16, 93);
        methodWriter3.visitJumpInsn(160, label13);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, str6, "next", "()C");
        methodWriter3.visitInsn(87);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(15);
        methodWriter3.visitMethodInsn(182, str6, "setToken", "(I)V");
        methodWriter3.visitJumpInsn(167, label14);
        methodWriter3.visitLabel(label13);
        methodWriter3.visitVarInsn(21, context.var("ch"));
        methodWriter3.visitVarInsn(16, 26);
        methodWriter3.visitJumpInsn(160, label11);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, str6, "next", "()C");
        methodWriter3.visitInsn(87);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(20);
        methodWriter3.visitMethodInsn(182, str6, "setToken", "(I)V");
        methodWriter3.visitJumpInsn(167, label14);
        methodWriter3.visitLabel(label11);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(16);
        methodWriter3.visitMethodInsn(182, str6, "nextToken", "(I)V");
        methodWriter3.visitLabel(label14);
        methodWriter3.visitVarInsn(25, context.var("instance"));
        methodWriter3.visitInsn(176);
        methodWriter3.visitMaxs(5, context.variantIndex);
        methodWriter3.visitEnd();
    }

    private void _deserialze_list_obj(Context context, MethodVisitor methodVisitor, Label label, FieldInfo fieldInfo, Class<?> cls, Class<?> cls2, int i) {
        String str;
        String str2;
        String str3;
        int i2;
        Label label2 = new Label();
        String str4 = JSONLexerBase;
        methodVisitor.visitMethodInsn(182, str4, "matchField", "([C)Z");
        methodVisitor.visitJumpInsn(153, label2);
        _setFlag(methodVisitor, context, i);
        Label label3 = new Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str4, "token", "()I");
        methodVisitor.visitLdcInsn(8);
        methodVisitor.visitJumpInsn(160, label3);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitMethodInsn(182, str4, "nextToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label3);
        Label label4 = new Label();
        Label label5 = new Label();
        Label label6 = new Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str4, "token", "()I");
        methodVisitor.visitLdcInsn(21);
        methodVisitor.visitJumpInsn(160, label5);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(14);
        methodVisitor.visitMethodInsn(182, str4, "nextToken", "(I)V");
        _newCollection(methodVisitor, cls, i, true);
        methodVisitor.visitJumpInsn(167, label4);
        methodVisitor.visitLabel(label5);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str4, "token", "()I");
        methodVisitor.visitLdcInsn(14);
        methodVisitor.visitJumpInsn(Opcodes.IF_ICMPEQ, label6);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str4, "token", "()I");
        methodVisitor.visitLdcInsn(12);
        methodVisitor.visitJumpInsn(160, label);
        _newCollection(methodVisitor, cls, i, false);
        methodVisitor.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
        _getCollectionFieldItemDeser(context, methodVisitor, fieldInfo, cls2);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(cls2)));
        methodVisitor.visitInsn(3);
        methodVisitor.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        String strType = ASMUtils.type(ObjectDeserializer.class);
        StringBuilder sb = new StringBuilder();
        sb.append("(L");
        String str5 = DefaultJSONParser;
        sb.append(str5);
        sb.append(";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        methodVisitor.visitMethodInsn(185, strType, "deserialze", sb.toString());
        methodVisitor.visitVarInsn(58, context.var("list_item_value"));
        methodVisitor.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
        methodVisitor.visitVarInsn(25, context.var("list_item_value"));
        if (cls.isInterface()) {
            methodVisitor.visitMethodInsn(185, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        } else {
            methodVisitor.visitMethodInsn(182, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        }
        methodVisitor.visitInsn(87);
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label6);
        _newCollection(methodVisitor, cls, i, false);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
        boolean zIsPrimitive2 = ParserConfig.isPrimitive2(fieldInfo.fieldClass);
        _getCollectionFieldItemDeser(context, methodVisitor, fieldInfo, cls2);
        if (zIsPrimitive2) {
            methodVisitor.visitMethodInsn(185, ASMUtils.type(ObjectDeserializer.class), "getFastMatchToken", "()I");
            methodVisitor.visitVarInsn(54, context.var("fastMatchToken"));
            methodVisitor.visitVarInsn(25, context.var("lexer"));
            methodVisitor.visitVarInsn(21, context.var("fastMatchToken"));
            str = "nextToken";
            str2 = str4;
            str3 = "(I)V";
            methodVisitor.visitMethodInsn(182, str2, str, str3);
        } else {
            str = "nextToken";
            str2 = str4;
            str3 = "(I)V";
            methodVisitor.visitInsn(87);
            methodVisitor.visitLdcInsn(12);
            methodVisitor.visitVarInsn(54, context.var("fastMatchToken"));
            _quickNextToken(context, methodVisitor, 12);
        }
        methodVisitor.visitVarInsn(25, 1);
        String str6 = str3;
        methodVisitor.visitMethodInsn(182, str5, "getContext", "()" + ASMUtils.desc((Class<?>) ParseContext.class));
        methodVisitor.visitVarInsn(58, context.var("listContext"));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
        methodVisitor.visitLdcInsn(fieldInfo.name);
        methodVisitor.visitMethodInsn(182, str5, "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)" + ASMUtils.desc((Class<?>) ParseContext.class));
        methodVisitor.visitInsn(87);
        Label label7 = new Label();
        Label label8 = new Label();
        methodVisitor.visitInsn(3);
        String str7 = str;
        methodVisitor.visitVarInsn(54, context.var("i"));
        methodVisitor.visitLabel(label7);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str2, "token", "()I");
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitJumpInsn(Opcodes.IF_ICMPEQ, label8);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, fieldInfo.name + "_asm_list_item_deser__", ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(cls2)));
        methodVisitor.visitVarInsn(21, context.var("i"));
        methodVisitor.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        methodVisitor.visitMethodInsn(185, ASMUtils.type(ObjectDeserializer.class), "deserialze", "(L" + str5 + ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        methodVisitor.visitVarInsn(58, context.var("list_item_value"));
        methodVisitor.visitIincInsn(context.var("i"), 1);
        methodVisitor.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
        methodVisitor.visitVarInsn(25, context.var("list_item_value"));
        if (cls.isInterface()) {
            methodVisitor.visitMethodInsn(185, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        } else {
            methodVisitor.visitMethodInsn(182, ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        }
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
        methodVisitor.visitMethodInsn(182, str5, "checkListResolve", "(Ljava/util/Collection;)V");
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str2, "token", "()I");
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitJumpInsn(160, label7);
        if (zIsPrimitive2) {
            methodVisitor.visitVarInsn(25, context.var("lexer"));
            methodVisitor.visitVarInsn(21, context.var("fastMatchToken"));
            methodVisitor.visitMethodInsn(182, str2, str7, str6);
            i2 = 167;
        } else {
            _quickNextToken(context, methodVisitor, 12);
            i2 = 167;
        }
        methodVisitor.visitJumpInsn(i2, label7);
        methodVisitor.visitLabel(label8);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var("listContext"));
        methodVisitor.visitMethodInsn(182, str5, "setContext", "(" + ASMUtils.desc((Class<?>) ParseContext.class) + ")V");
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str2, "token", "()I");
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitJumpInsn(160, label);
        _quickNextTokenComma(context, methodVisitor);
        methodVisitor.visitLabel(label2);
    }

    private void _deserialze_obj(Context context, MethodVisitor methodVisitor, Label label, FieldInfo fieldInfo, Class<?> cls, int i) {
        Label label2 = new Label();
        Label label3 = new Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, fieldInfo.name + "_asm_prefix__", "[C");
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "matchField", "([C)Z");
        methodVisitor.visitJumpInsn(154, label2);
        methodVisitor.visitInsn(1);
        methodVisitor.visitVarInsn(58, context.var(fieldInfo.name + "_asm"));
        methodVisitor.visitJumpInsn(167, label3);
        methodVisitor.visitLabel(label2);
        _setFlag(methodVisitor, context, i);
        methodVisitor.visitVarInsn(21, context.var("matchedCount"));
        methodVisitor.visitInsn(4);
        methodVisitor.visitInsn(96);
        methodVisitor.visitVarInsn(54, context.var("matchedCount"));
        _deserObject(context, methodVisitor, fieldInfo, cls, i);
        methodVisitor.visitVarInsn(25, 1);
        String str = DefaultJSONParser;
        methodVisitor.visitMethodInsn(182, str, "getResolveStatus", "()I");
        methodVisitor.visitLdcInsn(1);
        methodVisitor.visitJumpInsn(160, label3);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(182, str, "getLastResolveTask", "()" + ASMUtils.desc((Class<?>) DefaultJSONParser.ResolveTask.class));
        methodVisitor.visitVarInsn(58, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(182, str, "getContext", "()" + ASMUtils.desc((Class<?>) ParseContext.class));
        methodVisitor.visitFieldInsn(181, ASMUtils.type(DefaultJSONParser.ResolveTask.class), "ownerContext", ASMUtils.desc((Class<?>) ParseContext.class));
        methodVisitor.visitVarInsn(25, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitLdcInsn(fieldInfo.name);
        methodVisitor.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "getFieldDeserializer", "(Ljava/lang/String;)" + ASMUtils.desc((Class<?>) FieldDeserializer.class));
        methodVisitor.visitFieldInsn(181, ASMUtils.type(DefaultJSONParser.ResolveTask.class), "fieldDeserializer", ASMUtils.desc((Class<?>) FieldDeserializer.class));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(0);
        methodVisitor.visitMethodInsn(182, str, "setResolveStatus", "(I)V");
        methodVisitor.visitLabel(label3);
    }

    private void _getCollectionFieldItemDeser(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo, Class<?> cls) {
        Label label = new Label();
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, fieldInfo.name + "_asm_list_item_deser__", ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitJumpInsn(Opcodes.IFNONNULL, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(182, DefaultJSONParser, "getConfig", "()" + ASMUtils.desc((Class<?>) ParserConfig.class));
        methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(cls)));
        methodVisitor.visitMethodInsn(182, ASMUtils.type(ParserConfig.class), "getDeserializer", "(Ljava/lang/reflect/Type;)" + ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitFieldInsn(181, context.className, fieldInfo.name + "_asm_list_item_deser__", ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, fieldInfo.name + "_asm_list_item_deser__", ASMUtils.desc((Class<?>) ObjectDeserializer.class));
    }

    private void _getFieldDeser(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo) {
        Label label = new Label();
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, fieldInfo.name + "_asm_deser__", ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitJumpInsn(Opcodes.IFNONNULL, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(182, DefaultJSONParser, "getConfig", "()" + ASMUtils.desc((Class<?>) ParserConfig.class));
        methodVisitor.visitLdcInsn(Type.getType(ASMUtils.desc(fieldInfo.fieldClass)));
        methodVisitor.visitMethodInsn(182, ASMUtils.type(ParserConfig.class), "getDeserializer", "(Ljava/lang/reflect/Type;)" + ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitFieldInsn(181, context.className, fieldInfo.name + "_asm_deser__", ASMUtils.desc((Class<?>) ObjectDeserializer.class));
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, fieldInfo.name + "_asm_deser__", ASMUtils.desc((Class<?>) ObjectDeserializer.class));
    }

    private void _init(ClassWriter classWriter, Context context) {
        int length = context.fieldInfoList.length;
        for (int i = 0; i < length; i++) {
            new FieldWriter(classWriter, 1, context.fieldInfoList[i].name + "_asm_prefix__", "[C").visitEnd();
        }
        int length2 = context.fieldInfoList.length;
        for (int i2 = 0; i2 < length2; i2++) {
            FieldInfo fieldInfo = context.fieldInfoList[i2];
            Class<?> cls = fieldInfo.fieldClass;
            if (!cls.isPrimitive()) {
                if (Collection.class.isAssignableFrom(cls)) {
                    new FieldWriter(classWriter, 1, fieldInfo.name + "_asm_list_item_deser__", ASMUtils.desc((Class<?>) ObjectDeserializer.class)).visitEnd();
                } else {
                    new FieldWriter(classWriter, 1, fieldInfo.name + "_asm_deser__", ASMUtils.desc((Class<?>) ObjectDeserializer.class)).visitEnd();
                }
            }
        }
        MethodWriter methodWriter = new MethodWriter(classWriter, 1, "<init>", "(" + ASMUtils.desc((Class<?>) ParserConfig.class) + ASMUtils.desc((Class<?>) JavaBeanInfo.class) + ")V", null, null);
        methodWriter.visitVarInsn(25, 0);
        methodWriter.visitVarInsn(25, 1);
        methodWriter.visitVarInsn(25, 2);
        methodWriter.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(JavaBeanDeserializer.class), "<init>", "(" + ASMUtils.desc((Class<?>) ParserConfig.class) + ASMUtils.desc((Class<?>) JavaBeanInfo.class) + ")V");
        int length3 = context.fieldInfoList.length;
        for (int i3 = 0; i3 < length3; i3++) {
            FieldInfo fieldInfo2 = context.fieldInfoList[i3];
            methodWriter.visitVarInsn(25, 0);
            methodWriter.visitLdcInsn("\"" + fieldInfo2.name + "\":");
            methodWriter.visitMethodInsn(182, "java/lang/String", "toCharArray", "()[C");
            methodWriter.visitFieldInsn(181, context.className, fieldInfo2.name + "_asm_prefix__", "[C");
        }
        methodWriter.visitInsn(177);
        methodWriter.visitMaxs(4, 4);
        methodWriter.visitEnd();
    }

    private void _isFlag(MethodVisitor methodVisitor, Context context, int i, Label label) {
        methodVisitor.visitVarInsn(21, context.var("_asm_flag_" + (i / 32)));
        methodVisitor.visitLdcInsn(Integer.valueOf(1 << i));
        methodVisitor.visitInsn(126);
        methodVisitor.visitJumpInsn(153, label);
    }

    private void _loadAndSet(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo) {
        Class<?> cls = fieldInfo.fieldClass;
        java.lang.reflect.Type type = fieldInfo.fieldType;
        if (cls == Boolean.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(21, context.var(fieldInfo.name + "_asm"));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == Byte.TYPE || cls == Short.TYPE || cls == Integer.TYPE || cls == Character.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(21, context.var(fieldInfo.name + "_asm"));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == Long.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(22, context.var(fieldInfo.name + "_asm", 2));
            if (fieldInfo.method == null) {
                methodVisitor.visitFieldInsn(181, ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), ASMUtils.desc(fieldInfo.fieldClass));
                return;
            }
            methodVisitor.visitMethodInsn(182, ASMUtils.type(context.getInstClass()), fieldInfo.method.getName(), ASMUtils.desc(fieldInfo.method));
            if (fieldInfo.method.getReturnType().equals(Void.TYPE)) {
                return;
            }
            methodVisitor.visitInsn(87);
            return;
        }
        if (cls == Float.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(23, context.var(fieldInfo.name + "_asm"));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == Double.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(24, context.var(fieldInfo.name + "_asm", 2));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls == String.class) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (cls.isEnum()) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        if (!Collection.class.isAssignableFrom(cls)) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
            _set(context, methodVisitor, fieldInfo);
            return;
        }
        methodVisitor.visitVarInsn(25, context.var("instance"));
        if (TypeUtils.getCollectionItemClass(type) == String.class) {
            methodVisitor.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
            methodVisitor.visitTypeInsn(192, ASMUtils.type(cls));
        } else {
            methodVisitor.visitVarInsn(25, context.var(fieldInfo.name + "_asm"));
        }
        _set(context, methodVisitor, fieldInfo);
    }

    private void _newCollection(MethodVisitor methodVisitor, Class<?> cls, int i, boolean z) {
        if (cls.isAssignableFrom(ArrayList.class) && !z) {
            methodVisitor.visitTypeInsn(Opcodes.NEW, "java/util/ArrayList");
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(Opcodes.INVOKESPECIAL, "java/util/ArrayList", "<init>", "()V");
        } else if (cls.isAssignableFrom(LinkedList.class) && !z) {
            methodVisitor.visitTypeInsn(Opcodes.NEW, ASMUtils.type(LinkedList.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(LinkedList.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(HashSet.class)) {
            methodVisitor.visitTypeInsn(Opcodes.NEW, ASMUtils.type(HashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(HashSet.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(TreeSet.class)) {
            methodVisitor.visitTypeInsn(Opcodes.NEW, ASMUtils.type(TreeSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(TreeSet.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(LinkedHashSet.class)) {
            methodVisitor.visitTypeInsn(Opcodes.NEW, ASMUtils.type(LinkedHashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(LinkedHashSet.class), "<init>", "()V");
        } else if (z) {
            methodVisitor.visitTypeInsn(Opcodes.NEW, ASMUtils.type(HashSet.class));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(HashSet.class), "<init>", "()V");
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitLdcInsn(Integer.valueOf(i));
            methodVisitor.visitMethodInsn(182, ASMUtils.type(JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            methodVisitor.visitMethodInsn(Opcodes.INVOKESTATIC, ASMUtils.type(TypeUtils.class), "createCollection", "(Ljava/lang/reflect/Type;)Ljava/util/Collection;");
        }
        methodVisitor.visitTypeInsn(192, ASMUtils.type(cls));
    }

    private void _quickNextToken(Context context, MethodVisitor methodVisitor, int i) {
        Label label = new Label();
        Label label2 = new Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        String str = JSONLexerBase;
        methodVisitor.visitMethodInsn(182, str, "getCurrent", "()C");
        if (i == 12) {
            methodVisitor.visitVarInsn(16, 123);
        } else {
            if (i != 14) {
                throw new IllegalStateException();
            }
            methodVisitor.visitVarInsn(16, 91);
        }
        methodVisitor.visitJumpInsn(160, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(Integer.valueOf(i));
        methodVisitor.visitMethodInsn(182, str, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(Integer.valueOf(i));
        methodVisitor.visitMethodInsn(182, str, "nextToken", "(I)V");
        methodVisitor.visitLabel(label2);
    }

    private void _quickNextTokenComma(Context context, MethodVisitor methodVisitor) {
        Label label = new Label();
        Label label2 = new Label();
        Label label3 = new Label();
        Label label4 = new Label();
        Label label5 = new Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        String str = JSONLexerBase;
        methodVisitor.visitMethodInsn(182, str, "getCurrent", "()C");
        methodVisitor.visitInsn(89);
        methodVisitor.visitVarInsn(54, context.var("ch"));
        methodVisitor.visitVarInsn(16, 44);
        methodVisitor.visitJumpInsn(160, label2);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitMethodInsn(182, str, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label2);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 125);
        methodVisitor.visitJumpInsn(160, label3);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(13);
        methodVisitor.visitMethodInsn(182, str, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 93);
        methodVisitor.visitJumpInsn(160, label4);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitMethodInsn(182, str, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 26);
        methodVisitor.visitJumpInsn(160, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(20);
        methodVisitor.visitMethodInsn(182, str, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, str, "nextToken", "()V");
        methodVisitor.visitLabel(label5);
    }

    private void _set(Context context, MethodVisitor methodVisitor, FieldInfo fieldInfo) {
        Method method = fieldInfo.method;
        if (method == null) {
            methodVisitor.visitFieldInsn(181, ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), ASMUtils.desc(fieldInfo.fieldClass));
            return;
        }
        methodVisitor.visitMethodInsn(method.getDeclaringClass().isInterface() ? 185 : 182, ASMUtils.type(fieldInfo.declaringClass), method.getName(), ASMUtils.desc(method));
        if (fieldInfo.method.getReturnType().equals(Void.TYPE)) {
            return;
        }
        methodVisitor.visitInsn(87);
    }

    private void _setContext(Context context, MethodVisitor methodVisitor) {
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var("context"));
        methodVisitor.visitMethodInsn(182, DefaultJSONParser, "setContext", "(" + ASMUtils.desc((Class<?>) ParseContext.class) + ")V");
        Label label = new Label();
        methodVisitor.visitVarInsn(25, context.var("childContext"));
        methodVisitor.visitJumpInsn(Opcodes.IFNULL, label);
        methodVisitor.visitVarInsn(25, context.var("childContext"));
        methodVisitor.visitVarInsn(25, context.var("instance"));
        methodVisitor.visitFieldInsn(181, ASMUtils.type(ParseContext.class), "object", "Ljava/lang/Object;");
        methodVisitor.visitLabel(label);
    }

    private void _setFlag(MethodVisitor methodVisitor, Context context, int i) {
        String str = "_asm_flag_" + (i / 32);
        methodVisitor.visitVarInsn(21, context.var(str));
        methodVisitor.visitLdcInsn(Integer.valueOf(1 << i));
        methodVisitor.visitInsn(128);
        methodVisitor.visitVarInsn(54, context.var(str));
    }

    private Class<?> defineClassPublic(String str, byte[] bArr, int i, int i2) {
        return this.classLoader.defineClassPublic(str, bArr, i, i2);
    }

    private void defineVarLexer(Context context, MethodVisitor methodVisitor) {
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitFieldInsn(180, DefaultJSONParser, "lexer", ASMUtils.desc((Class<?>) JSONLexer.class));
        methodVisitor.visitTypeInsn(192, JSONLexerBase);
        methodVisitor.visitVarInsn(58, context.var("lexer"));
    }

    public ObjectDeserializer createJavaBeanDeserializer(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo) throws Exception {
        Class<?> cls = javaBeanInfo.clazz;
        if (cls.isPrimitive()) {
            throw new IllegalArgumentException("not support type :" + cls.getName());
        }
        String str = "FastjsonASMDeserializer_" + this.seed.incrementAndGet() + "_" + cls.getSimpleName();
        String name = ASMDeserializerFactory.class.getPackage().getName();
        String str2 = name.replace('.', '/') + "/" + str;
        String str3 = name + "." + str;
        ClassWriter classWriter = new ClassWriter();
        classWriter.visit(49, 33, str2, ASMUtils.type(JavaBeanDeserializer.class), null);
        _init(classWriter, new Context(str2, parserConfig, javaBeanInfo, 3));
        _createInstance(classWriter, new Context(str2, parserConfig, javaBeanInfo, 3));
        _deserialze(classWriter, new Context(str2, parserConfig, javaBeanInfo, 5));
        _deserialzeArrayMapping(classWriter, new Context(str2, parserConfig, javaBeanInfo, 4));
        byte[] byteArray = classWriter.toByteArray();
        return (ObjectDeserializer) defineClassPublic(str3, byteArray, 0, byteArray.length).getConstructor(ParserConfig.class, JavaBeanInfo.class).newInstance(parserConfig, javaBeanInfo);
    }

    private void _batchSet(Context context, MethodVisitor methodVisitor, boolean z) {
        int length = context.fieldInfoList.length;
        for (int i = 0; i < length; i++) {
            Label label = new Label();
            if (z) {
                _isFlag(methodVisitor, context, i, label);
            }
            _loadAndSet(context, methodVisitor, context.fieldInfoList[i]);
            if (z) {
                methodVisitor.visitLabel(label);
            }
        }
    }

    static class Context {
        static final int fieldName = 3;
        static final int parser = 1;
        static final int type = 2;
        private final JavaBeanInfo beanInfo;
        private final String className;
        private final Class<?> clazz;
        private FieldInfo[] fieldInfoList;
        private int variantIndex;
        private final Map<String, Integer> variants = new HashMap();

        public Context(String str, ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, int i) {
            this.variantIndex = -1;
            this.className = str;
            this.clazz = javaBeanInfo.clazz;
            this.variantIndex = i;
            this.beanInfo = javaBeanInfo;
            this.fieldInfoList = javaBeanInfo.fields;
        }

        public Class<?> getInstClass() {
            Class<?> cls = this.beanInfo.builderClass;
            return cls == null ? this.clazz : cls;
        }

        public int var(String str, int i) {
            if (this.variants.get(str) == null) {
                this.variants.put(str, Integer.valueOf(this.variantIndex));
                this.variantIndex += i;
            }
            return this.variants.get(str).intValue();
        }

        public int var(String str) {
            if (this.variants.get(str) == null) {
                Map<String, Integer> map = this.variants;
                int i = this.variantIndex;
                this.variantIndex = i + 1;
                map.put(str, Integer.valueOf(i));
            }
            return this.variants.get(str).intValue();
        }
    }

    private void _createInstance(ClassWriter classWriter, Context context) {
        if (Modifier.isPublic(context.beanInfo.defaultConstructor.getModifiers())) {
            MethodWriter methodWriter = new MethodWriter(classWriter, 1, "createInstance", "(L" + DefaultJSONParser + ";Ljava/lang/reflect/Type;)Ljava/lang/Object;", null, null);
            methodWriter.visitTypeInsn(Opcodes.NEW, ASMUtils.type(context.getInstClass()));
            methodWriter.visitInsn(89);
            methodWriter.visitMethodInsn(Opcodes.INVOKESPECIAL, ASMUtils.type(context.getInstClass()), "<init>", "()V");
            methodWriter.visitInsn(176);
            methodWriter.visitMaxs(3, 3);
            methodWriter.visitEnd();
        }
    }
}
