package com.loc;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile ag f12501a;
    private static Properties b = b();

    private ah() {
    }

    public static ag a() {
        if (f12501a == null) {
            synchronized (ah.class) {
                if (f12501a == null) {
                    try {
                        ag agVarA = a(Build.MANUFACTURER);
                        if ("".equals(agVarA.a())) {
                            Iterator it = Arrays.asList(ag.MIUI.a(), ag.Flyme.a(), ag.EMUI.a(), ag.ColorOS.a(), ag.FuntouchOS.a(), ag.SmartisanOS.a(), ag.AmigoOS.a(), ag.Sense.a(), ag.LG.a(), ag.Google.a(), ag.NubiaUI.a()).iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    agVarA = ag.Other;
                                    break;
                                }
                                ag agVarA2 = a((String) it.next());
                                if (!"".equals(agVarA2.a())) {
                                    agVarA = agVarA2;
                                    break;
                                }
                            }
                        }
                        f12501a = agVarA;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return f12501a;
    }

    private static ag a(String str) {
        if (str == null || str.length() <= 0) {
            return ag.Other;
        }
        ag agVar = ag.MIUI;
        if (!str.equals(agVar.a())) {
            ag agVar2 = ag.Flyme;
            if (!str.equals(agVar2.a())) {
                ag agVar3 = ag.EMUI;
                if (!str.equals(agVar3.a())) {
                    ag agVar4 = ag.ColorOS;
                    if (!str.equals(agVar4.a())) {
                        ag agVar5 = ag.FuntouchOS;
                        if (!str.equals(agVar5.a())) {
                            ag agVar6 = ag.SmartisanOS;
                            if (!str.equals(agVar6.a())) {
                                ag agVar7 = ag.AmigoOS;
                                if (!str.equals(agVar7.a())) {
                                    ag agVar8 = ag.EUI;
                                    if (!str.equals(agVar8.a())) {
                                        ag agVar9 = ag.Sense;
                                        if (!str.equals(agVar9.a())) {
                                            ag agVar10 = ag.LG;
                                            if (!str.equals(agVar10.a())) {
                                                ag agVar11 = ag.Google;
                                                if (!str.equals(agVar11.a())) {
                                                    ag agVar12 = ag.NubiaUI;
                                                    if (str.equals(agVar12.a()) && l(agVar12)) {
                                                        return agVar12;
                                                    }
                                                } else if (k(agVar11)) {
                                                    return agVar11;
                                                }
                                            } else if (j(agVar10)) {
                                                return agVar10;
                                            }
                                        } else if (i(agVar9)) {
                                            return agVar9;
                                        }
                                    } else if (h(agVar8)) {
                                        return agVar8;
                                    }
                                } else if (g(agVar7)) {
                                    return agVar7;
                                }
                            } else if (f(agVar6)) {
                                return agVar6;
                            }
                        } else if (e(agVar5)) {
                            return agVar5;
                        }
                    } else if (d(agVar4)) {
                        return agVar4;
                    }
                } else if (c(agVar3)) {
                    return agVar3;
                }
            } else if (b(agVar2)) {
                return agVar2;
            }
        } else if (a(agVar)) {
            return agVar;
        }
        return ag.Other;
    }

    private static void a(ag agVar, String str) {
        Matcher matcher = Pattern.compile("([\\d.]+)[^\\d]*").matcher(str);
        if (matcher.find()) {
            try {
                String strGroup = matcher.group(1);
                agVar.a(strGroup);
                agVar.a(Integer.parseInt(strGroup.split("\\.")[0]));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static boolean a(ag agVar) {
        if (TextUtils.isEmpty(b("ro.miui.ui.version.name"))) {
            return false;
        }
        String strB = b("ro.build.version.incremental");
        a(agVar, strB);
        agVar.b(strB);
        return true;
    }

    private static String b(String str) {
        String property = b.getProperty("[" + str + "]", null);
        return TextUtils.isEmpty(property) ? c(str) : property.replace("[", "").replace("]", "");
    }

    private static Properties b() {
        Properties properties = new Properties();
        try {
            properties.load(Runtime.getRuntime().exec("getprop").getInputStream());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return properties;
    }

    private static boolean b(ag agVar) {
        String strB = b("ro.flyme.published");
        String strB2 = b("ro.meizu.setupwizard.flyme");
        if (TextUtils.isEmpty(strB) && TextUtils.isEmpty(strB2)) {
            return false;
        }
        String strB3 = b("ro.build.display.id");
        a(agVar, strB3);
        agVar.b(strB3);
        return true;
    }

    private static String c(String str) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str))).getInputStream()), 1024);
            try {
                String line = bufferedReader.readLine();
                bufferedReader.close();
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                }
                return line;
            } catch (IOException unused2) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused3) {
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (IOException unused5) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static boolean c(ag agVar) {
        String strB = b("ro.build.version.emui");
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        a(agVar, strB);
        agVar.b(strB);
        return true;
    }

    private static boolean d(ag agVar) {
        String strB = b("ro.build.version.opporom");
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        a(agVar, strB);
        agVar.b(strB);
        return true;
    }

    private static boolean e(ag agVar) {
        String strB = b("ro.vivo.os.build.display.id");
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        a(agVar, strB);
        agVar.b(strB);
        return true;
    }

    private static boolean f(ag agVar) {
        String strB = b("ro.smartisan.version");
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        a(agVar, strB);
        agVar.b(strB);
        return true;
    }

    private static boolean g(ag agVar) {
        String strB = b("ro.build.display.id");
        if (TextUtils.isEmpty(strB) || !strB.matches("amigo([\\d.]+)[a-zA-Z]*")) {
            return false;
        }
        a(agVar, strB);
        agVar.b(strB);
        return true;
    }

    private static boolean h(ag agVar) {
        String strB = b("ro.letv.release.version");
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        a(agVar, strB);
        agVar.b(strB);
        return true;
    }

    private static boolean i(ag agVar) {
        String strB = b("ro.build.sense.version");
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        a(agVar, strB);
        agVar.b(strB);
        return true;
    }

    private static boolean j(ag agVar) {
        String strB = b("sys.lge.lgmdm_version");
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        a(agVar, strB);
        agVar.b(strB);
        return true;
    }

    private static boolean k(ag agVar) {
        if (!"android-google".equals(b("ro.com.google.clientidbase"))) {
            return false;
        }
        String strB = b("ro.build.version.release");
        agVar.a(Build.VERSION.SDK_INT);
        agVar.b(strB);
        return true;
    }

    private static boolean l(ag agVar) {
        String strB = b("ro.build.nubia.rom.code");
        if (TextUtils.isEmpty(strB)) {
            return false;
        }
        a(agVar, strB);
        agVar.b(strB);
        return true;
    }
}
