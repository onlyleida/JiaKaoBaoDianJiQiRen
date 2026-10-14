package com.alivc.component.player.BGMPlayer;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes5.dex */
class ReflectionUtility {
    private static final String TAG = "ReflectionUtility";

    ReflectionUtility() {
    }

    public static Object callFunc0Param(Object obj, String str, String str2) {
        ReflectionFuncCallContext reflectionFuncCallContext = new ReflectionFuncCallContext();
        reflectionFuncCallContext.fullClassName = str;
        reflectionFuncCallContext.funcName = str2;
        reflectionFuncCallContext.instance = obj;
        return invoke(reflectionFuncCallContext);
    }

    public static Object callFunc1Param(Object obj, String str, String str2, Object obj2, Object obj3) {
        ReflectionFuncCallContext reflectionFuncCallContext = new ReflectionFuncCallContext();
        reflectionFuncCallContext.fullClassName = str;
        reflectionFuncCallContext.funcName = str2;
        reflectionFuncCallContext.formalParameters = new Class[]{(Class) obj2};
        reflectionFuncCallContext.effectiveParameters = new Object[]{obj3};
        reflectionFuncCallContext.instance = obj;
        return invoke(reflectionFuncCallContext);
    }

    public static Object callFuncNParam(Object obj, String str, String str2, Class<?>[] clsArr, Object[] objArr) {
        ReflectionFuncCallContext reflectionFuncCallContext = new ReflectionFuncCallContext();
        reflectionFuncCallContext.fullClassName = str;
        reflectionFuncCallContext.funcName = str2;
        reflectionFuncCallContext.formalParameters = clsArr;
        reflectionFuncCallContext.effectiveParameters = objArr;
        reflectionFuncCallContext.instance = obj;
        return invoke(reflectionFuncCallContext);
    }

    public static Field getClassField(ReflectionGetFieldContext reflectionGetFieldContext) {
        try {
            return Class.forName(reflectionGetFieldContext.fullClassName).getField(reflectionGetFieldContext.fieldName);
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.e(TAG, "getClassField failed, field context=" + reflectionGetFieldContext.toString());
            return null;
        }
    }

    public static int getIntField(Object obj, String str, String str2) {
        StringBuilder sb;
        String message;
        ReflectionGetFieldContext reflectionGetFieldContext = new ReflectionGetFieldContext();
        reflectionGetFieldContext.fullClassName = str;
        reflectionGetFieldContext.fieldName = str2;
        Field classField = getClassField(reflectionGetFieldContext);
        if (classField != null) {
            try {
                return classField.getInt(obj);
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
                sb = new StringBuilder();
                sb.append("getIntField failed, e=");
                message = e2.getMessage();
                sb.append(message);
                Log.e(TAG, sb.toString());
                return 0;
            } catch (IllegalArgumentException e3) {
                e3.printStackTrace();
                sb = new StringBuilder();
                sb.append("getIntField failed, e=");
                message = e3.getMessage();
                sb.append(message);
                Log.e(TAG, sb.toString());
                return 0;
            }
        }
        return 0;
    }

    public static long getLongField(Object obj, String str, String str2) {
        StringBuilder sb;
        String message;
        ReflectionGetFieldContext reflectionGetFieldContext = new ReflectionGetFieldContext();
        reflectionGetFieldContext.fullClassName = str;
        reflectionGetFieldContext.fieldName = str2;
        Field classField = getClassField(reflectionGetFieldContext);
        if (classField != null) {
            try {
                return classField.getLong(obj);
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
                sb = new StringBuilder();
                sb.append("getLongField failed, e=");
                message = e2.getMessage();
                sb.append(message);
                Log.e(TAG, sb.toString());
                return 0L;
            } catch (IllegalArgumentException e3) {
                e3.printStackTrace();
                sb = new StringBuilder();
                sb.append("getLongField failed, e=");
                message = e3.getMessage();
                sb.append(message);
                Log.e(TAG, sb.toString());
                return 0L;
            }
        }
        return 0L;
    }

    public static Object getObjectField(Object obj, String str, String str2) {
        StringBuilder sb;
        String message;
        ReflectionGetFieldContext reflectionGetFieldContext = new ReflectionGetFieldContext();
        reflectionGetFieldContext.fullClassName = str;
        reflectionGetFieldContext.fieldName = str2;
        Field classField = getClassField(reflectionGetFieldContext);
        if (classField != null) {
            try {
                return classField.get(obj);
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
                sb = new StringBuilder();
                sb.append("getObjectField failed, e=");
                message = e2.getMessage();
                sb.append(message);
                Log.e(TAG, sb.toString());
                return null;
            } catch (IllegalArgumentException e3) {
                e3.printStackTrace();
                sb = new StringBuilder();
                sb.append("getObjectField failed, e=");
                message = e3.getMessage();
                sb.append(message);
                Log.e(TAG, sb.toString());
                return null;
            }
        }
        return null;
    }

    public static Object invoke(ReflectionFuncCallContext reflectionFuncCallContext) {
        try {
            return Class.forName(reflectionFuncCallContext.fullClassName).getMethod(reflectionFuncCallContext.funcName, reflectionFuncCallContext.formalParameters).invoke(reflectionFuncCallContext.instance, reflectionFuncCallContext.effectiveParameters);
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.e(TAG, "invoke failed, call context=" + reflectionFuncCallContext.toString());
            return null;
        }
    }

    public static boolean isClassAvailable(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.w(TAG, "class[" + str + "] is not available");
            return false;
        }
    }

    public static String makeFullClassName(String str, String str2) {
        return str + "." + str2;
    }

    public static Object newObject(String str) {
        try {
            return Class.forName(str).newInstance();
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.e(TAG, "newObject: " + str + " failed");
            return null;
        }
    }

    public static ReflectionProxyContext newProxyContextByClassName(String str, InvocationHandler invocationHandler) {
        ReflectionProxyContext reflectionProxyContext = new ReflectionProxyContext();
        try {
            Class<?> cls = Class.forName(str);
            reflectionProxyContext.clazz = cls;
            reflectionProxyContext.object = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{reflectionProxyContext.clazz}, invocationHandler);
            return reflectionProxyContext;
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.e(TAG, "newProxyContextByClassName failed, fullClassName=" + str);
            return null;
        }
    }
}
