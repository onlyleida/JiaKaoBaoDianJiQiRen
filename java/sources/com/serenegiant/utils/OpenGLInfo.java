package com.serenegiant.utils;

import android.opengl.GLES20;
import com.serenegiant.glutils.EGLBase;
import java.nio.IntBuffer;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class OpenGLInfo {
    private static final int EGL_CLIENT_APIS = 12429;

    private static final JSONObject formatExtensions(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String[] strArrSplit = str.split(" ");
        Arrays.sort(strArrSplit);
        for (int i = 0; i < strArrSplit.length; i++) {
            jSONObject.put(Integer.toString(i), strArrSplit[i]);
        }
        return jSONObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public static JSONObject get() throws Throwable {
        JSONObject jSONObject;
        EGLBase eGLBase;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        JSONObject jSONObject2 = "GL_RENDERER";
        JSONObject jSONObject3 = new JSONObject();
        try {
            EGLBase eGLBaseCreateFrom = EGLBase.createFrom(3, null, false, 0, false);
            EGLBase.IEglSurface iEglSurfaceCreateOffscreen = eGLBaseCreateFrom.createOffscreen(1, 1);
            iEglSurfaceCreateOffscreen.makeCurrent();
            try {
                try {
                    IntBuffer intBufferAllocate = IntBuffer.allocate(2);
                    JSONObject jSONObject4 = new JSONObject();
                    try {
                        jSONObject4.put("GL_VENDOR", GLES20.glGetString(7936));
                    } catch (Exception e2) {
                        jSONObject4.put("GL_VENDOR", e2.getMessage());
                    }
                    try {
                        jSONObject4.put("GL_VERSION", GLES20.glGetString(7938));
                    } catch (Exception e3) {
                        jSONObject4.put("GL_VERSION", e3.getMessage());
                    }
                    try {
                        jSONObject4.put("GL_RENDERER", GLES20.glGetString(7937));
                    } catch (Exception e4) {
                        jSONObject4.put("GL_RENDERER", e4.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(34921, intBufferAllocate);
                        jSONObject4.put("GL_MAX_VERTEX_ATTRIBS", intBufferAllocate.get(0));
                    } catch (Exception e5) {
                        jSONObject4.put("GL_MAX_VERTEX_ATTRIBS", e5.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(36347, intBufferAllocate);
                        jSONObject4.put("GL_MAX_VERTEX_UNIFORM_VECTORS", intBufferAllocate.get(0));
                    } catch (Exception e6) {
                        jSONObject4.put("GL_MAX_VERTEX_UNIFORM_VECTORS", e6.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(36348, intBufferAllocate);
                        jSONObject4.put("GL_MAX_VARYING_VECTORS", intBufferAllocate.get(0));
                    } catch (Exception e7) {
                        jSONObject4.put("GL_MAX_VARYING_VECTORS", e7.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(35661, intBufferAllocate);
                        jSONObject4.put("GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS", intBufferAllocate.get(0));
                    } catch (Exception e8) {
                        jSONObject4.put("GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS", e8.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(35660, intBufferAllocate);
                        jSONObject4.put("GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS", intBufferAllocate.get(0));
                    } catch (Exception e9) {
                        jSONObject4.put("GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS", e9.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(34930, intBufferAllocate);
                        jSONObject4.put("GL_MAX_TEXTURE_IMAGE_UNITS", intBufferAllocate.get(0));
                    } catch (Exception e10) {
                        jSONObject4.put("GL_MAX_TEXTURE_IMAGE_UNITS", e10.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(36349, intBufferAllocate);
                        jSONObject4.put("GL_MAX_FRAGMENT_UNIFORM_VECTORS", intBufferAllocate.get(0));
                    } catch (Exception e11) {
                        jSONObject4.put("GL_MAX_FRAGMENT_UNIFORM_VECTORS", e11.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(34076, intBufferAllocate);
                        jSONObject4.put("GL_MAX_CUBE_MAP_TEXTURE_SIZE", intBufferAllocate.get(0));
                    } catch (Exception e12) {
                        jSONObject4.put("GL_MAX_CUBE_MAP_TEXTURE_SIZE", e12.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(34024, intBufferAllocate);
                        jSONObject4.put("GL_MAX_RENDERBUFFER_SIZE", intBufferAllocate.get(0));
                    } catch (Exception e13) {
                        jSONObject4.put("GL_MAX_RENDERBUFFER_SIZE", e13.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(3379, intBufferAllocate);
                        jSONObject4.put("GL_MAX_TEXTURE_SIZE", intBufferAllocate.get(0));
                    } catch (Exception e14) {
                        jSONObject4.put("GL_MAX_TEXTURE_SIZE", e14.getMessage());
                    }
                    try {
                        GLES20.glGetIntegerv(3386, intBufferAllocate);
                        str = "GL_MAX_VIEWPORT_DIMS";
                        try {
                            jSONObject4.put(str, String.format(Locale.US, "%d x %d", Integer.valueOf(intBufferAllocate.get(0)), Integer.valueOf(intBufferAllocate.get(1))));
                        } catch (Exception e15) {
                            e = e15;
                            jSONObject4.put(str, e.getMessage());
                        }
                    } catch (Exception e16) {
                        e = e16;
                        str = "GL_MAX_VIEWPORT_DIMS";
                    }
                    try {
                        str2 = "GL_EXTENSIONS";
                        try {
                            jSONObject4.put(str2, formatExtensions(GLES20.glGetString(7939)));
                        } catch (Exception e17) {
                            e = e17;
                            jSONObject4.put(str2, e.getMessage());
                        }
                    } catch (Exception e18) {
                        e = e18;
                        str2 = "GL_EXTENSIONS";
                    }
                    JSONObject jSONObject5 = jSONObject3;
                    try {
                        jSONObject5.put("GL_INFO", jSONObject4);
                        JSONObject jSONObject6 = new JSONObject();
                        eGLBase = eGLBaseCreateFrom;
                        try {
                            try {
                                str3 = "EGL_VENDOR";
                                try {
                                    jSONObject6.put(str3, eGLBase.queryString(12371));
                                } catch (Exception e19) {
                                    e = e19;
                                    jSONObject4.put(str3, e.getMessage());
                                }
                            } catch (Exception e20) {
                                e = e20;
                                str3 = "EGL_VENDOR";
                            }
                            try {
                                str4 = "EGL_VERSION";
                                try {
                                    jSONObject6.put(str4, eGLBase.queryString(12372));
                                } catch (Exception e21) {
                                    e = e21;
                                    jSONObject4.put(str4, e.getMessage());
                                }
                            } catch (Exception e22) {
                                e = e22;
                                str4 = "EGL_VERSION";
                            }
                            try {
                                str5 = "EGL_CLIENT_APIS";
                                try {
                                    jSONObject6.put(str5, eGLBase.queryString(EGL_CLIENT_APIS));
                                } catch (Exception e23) {
                                    e = e23;
                                    jSONObject4.put(str5, e.getMessage());
                                }
                            } catch (Exception e24) {
                                e = e24;
                                str5 = "EGL_CLIENT_APIS";
                            }
                            try {
                                jSONObject6.put("EGL_EXTENSIONS:", formatExtensions(eGLBase.queryString(12373)));
                            } catch (Exception e25) {
                                jSONObject4.put("EGL_EXTENSIONS", e25.getMessage());
                            }
                            jSONObject5.put("EGL_INFO", jSONObject6);
                            iEglSurfaceCreateOffscreen.release();
                            eGLBase.release();
                            jSONObject = jSONObject5;
                            return jSONObject;
                        } catch (Throwable th) {
                            th = th;
                            iEglSurfaceCreateOffscreen.release();
                            eGLBase.release();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        eGLBase = eGLBaseCreateFrom;
                        iEglSurfaceCreateOffscreen.release();
                        eGLBase.release();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    eGLBase = eGLBaseCreateFrom;
                    iEglSurfaceCreateOffscreen.release();
                    eGLBase.release();
                    throw th;
                }
            } catch (Exception e26) {
                e = e26;
                jSONObject2.put("EXCEPTION", e.getMessage());
                jSONObject = jSONObject2;
            }
        } catch (Exception e27) {
            e = e27;
            jSONObject2 = jSONObject3;
        }
    }
}
