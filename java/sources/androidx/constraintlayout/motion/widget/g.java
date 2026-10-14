package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class g {
    static HashMap<String, Constructor<? extends d>> b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<Integer, ArrayList<d>> f761a = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends d>> map = new HashMap<>();
        b = map;
        try {
            map.put("KeyAttribute", e.class.getConstructor(new Class[0]));
            b.put("KeyPosition", h.class.getConstructor(new Class[0]));
            b.put("KeyCycle", f.class.getConstructor(new Class[0]));
            b.put("KeyTimeCycle", j.class.getConstructor(new Class[0]));
            b.put("KeyTrigger", k.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e2) {
            Log.e("KeyFrames", "unable to load", e2);
        }
    }

    public g(Context context, XmlPullParser xmlPullParser) {
        d dVarNewInstance;
        Exception e2;
        HashMap<String, ConstraintAttribute> map;
        HashMap<String, ConstraintAttribute> map2;
        d dVar = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (b.containsKey(name)) {
                        try {
                            Constructor<? extends d> constructor = b.get(name);
                            if (constructor == null) {
                                throw new NullPointerException("Keymaker for " + name + " not found");
                            }
                            dVarNewInstance = constructor.newInstance(new Object[0]);
                            try {
                                dVarNewInstance.e(context, Xml.asAttributeSet(xmlPullParser));
                                b(dVarNewInstance);
                            } catch (Exception e3) {
                                e2 = e3;
                                Log.e("KeyFrames", "unable to create ", e2);
                            }
                            dVar = dVarNewInstance;
                        } catch (Exception e4) {
                            dVarNewInstance = dVar;
                            e2 = e4;
                        }
                        Log.e("KeyFrames", "unable to create ", e2);
                        dVar = dVarNewInstance;
                    } else if (name.equalsIgnoreCase("CustomAttribute")) {
                        if (dVar != null && (map2 = dVar.f754e) != null) {
                            ConstraintAttribute.h(context, xmlPullParser, map2);
                        }
                    } else if (name.equalsIgnoreCase("CustomMethod") && dVar != null && (map = dVar.f754e) != null) {
                        ConstraintAttribute.h(context, xmlPullParser, map);
                    }
                } else if (eventType == 3 && "KeyFrameSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        } catch (XmlPullParserException e6) {
            e6.printStackTrace();
        }
    }

    public void a(m mVar) {
        ArrayList<d> arrayList = this.f761a.get(-1);
        if (arrayList != null) {
            mVar.a(arrayList);
        }
    }

    public void b(d dVar) {
        if (!this.f761a.containsKey(Integer.valueOf(dVar.b))) {
            this.f761a.put(Integer.valueOf(dVar.b), new ArrayList<>());
        }
        ArrayList<d> arrayList = this.f761a.get(Integer.valueOf(dVar.b));
        if (arrayList != null) {
            arrayList.add(dVar);
        }
    }
}
